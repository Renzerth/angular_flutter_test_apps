import 'package:firebase_auth_form/pages/catalogue/products/textdata/assets_img_dirs.dart';

class CarouselModel {
  String image;
  late String planeKey;
  CarouselModel(this.image);

  static getImgDirs(String planeKey){
    List<Map<String,String>> imgSetDirs = ImgDirsData.getDictDetails()[planeKey]['imgset'].toList(); //_hashSet
    return imgSetDirs;
  }
}

/*String planeKey = "su_47";
List<Map<String,String>> carouselsData = CarouselModel.getImgDirs(planeKey);
List<CarouselModel> carousels =
    carouselsData.map((item) => CarouselModel(item['image'] ?? "",)).toList();*/

/*var carouselsData = [
  {"image": "assets/images/su_47_2.jpg"},
  {"image": "assets/images/su_47_3.jpg"},
  {"image": "assets/images/su_47_4.png"},
];*/
