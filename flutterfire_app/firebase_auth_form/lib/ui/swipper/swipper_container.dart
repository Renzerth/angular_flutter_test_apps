// https://www.youtube.com/watch?v=WUUmD8s-5wY

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart';

// My imports
import 'package:firebase_auth_form/ui/swipper/carousels_model.dart';
import 'package:firebase_auth_form/global.dart';

// Callbacks - > Blueprint
typedef IntCallback = void Function(int value);

class SwipperContainer extends StatelessWidget {
  final String planeKey;
  final IntCallback callback; // Receives funtion with "setState" to update parent

  const SwipperContainer({super.key, required this.callback, required this.planeKey});

  void onIndexChanged(int index) {
    currentImg = index; // currentImg must be global
    callback(currentImg); // update parent with received callback
  }

  List<T> map <T>(List list, Function handler){
    List<T> result = [];
    for (var i=0; i < list.length; i++){
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {

    // Make display imagee list
    List<Map<String,String>> carouselsData = CarouselModel.getImgDirs(planeKey);
    List<CarouselModel> carousels =
      carouselsData.map((item) => CarouselModel(item['image'] ?? "",)).toList();

    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(left: 16, right: 16),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Swiper(
              onIndexChanged:onIndexChanged,
              autoplay: true,
              layout: SwiperLayout.DEFAULT,
              itemCount: carousels.length, //carousels.length,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(carousels[index].image),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(
            height:12,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: map <Widget>( // Dont apply "[]" here. It does not support the operator
                  carousels,
                  (index, image){
                    return Container(
                      alignment: Alignment.centerLeft,
                      height: 6,
                      width: 6,
                      margin: const EdgeInsets.only(right:8),
                      decoration:BoxDecoration(
                        shape:BoxShape.circle,
                        color: currentImg==index? Colors.blue: Colors.grey
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ]
      ),
    );
  }
}
