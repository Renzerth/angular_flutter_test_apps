import 'package:flutter/material.dart';

// My imports
import 'package:firebase_auth_form/ui/textcontainers/text_left_aligned.dart';
import 'package:firebase_auth_form/ui/textcontainers/text_box_icon.dart';
import 'package:firebase_auth_form/ui/borders/fitted_colored_box.dart';
import 'package:firebase_auth_form/ui/swipper/swipper_container.dart';

typedef IntCallback = void Function(int value);

class HomePageAL extends StatelessWidget {
  final IntCallback callback;
  //final List<double> boxscales = [0.08, 0.3];

  const HomePageAL({super.key, required this.callback});
  @override
  Widget build(BuildContext context) {
    // Get dynamic text to display for each key

    void onSwipperChange(int index) {
      callback(index);
      //currentImg = index;
    }

    return SingleChildScrollView(
      child: FittedBox(
        fit: BoxFit.fill,
        child: FittedColoredBox(
          color: Colors.blueAccent,
          scale: const [1, 0.88],
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const LeftInfoText(textSring: '  News'),
                  const SizedBox(
                    height: 2,
                  ),
                  const Divider(color: Colors.black),
                  const SizedBox(
                    height: 5,
                  ),
                  SwipperContainer(
                      callback: onSwipperChange, planeKey: 'su_47'),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const LeftInfoText(textSring: '  Activities'),
              Column(
                children: [
                  Center(
                    child: Container(
                      margin:
                          const EdgeInsets.only(top: 5, left: 20, right: 20),
                      padding: const EdgeInsets.all(6),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: const [
                              //Expanded(
                              //child:
                              BorderedTextBoxIcon(
                                descriptString: "Explore",
                                iconDecoration: Icon(Icons.explore_outlined),
                                scales: [0.35, 0.08],
                                wrapScale: 0.15,
                              ),
                              //),
                              SizedBox(
                                height: 20,
                              ),
                              //Expanded(
                              //child:
                              BorderedTextBoxIcon(
                                descriptString: "Trending",
                                iconDecoration: Icon(Icons.trending_up),
                                scales: [0.35, 0.08],
                                wrapScale: 0.15,
                              ),
                              //),
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: const [
                              //Expanded(
                              //child:
                              BorderedTextBoxIcon(
                                descriptString: "Manage",
                                iconDecoration:
                                    Icon(Icons.manage_accounts_outlined),
                                scales: [0.35, 0.08],
                                wrapScale: 0.15,
                              ),
                              //),
                              SizedBox(
                                height: 20,
                              ),
                              //Expanded(
                              // child:
                              BorderedTextBoxIcon(
                                descriptString: "Contacts",
                                iconDecoration: Icon(Icons.person_pin_outlined),
                                scales: [0.35, 0.08],
                                wrapScale: 0.15,
                              ),
                              //),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const LeftInfoText(textSring: '  Featured'),
              const SizedBox(
                height: 5,
              ),
              Container(
                margin: const EdgeInsets.only(top: 0, left: 20, right: 20),
                padding: const EdgeInsets.all(6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://as01.epimg.net/meristation/imagenes/2019/01/09/noticias/1547048268_586276_1547048338_noticia_normal.jpg'),
                      minRadius: 35,
                      maxRadius: 60,
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://static.wikia.nocookie.net/acecombat/images/2/2a/R-101_Delphinus_-1.png'),
                      minRadius: 35,
                      maxRadius: 60,
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.mos.cms.futurecdn.net/kfoT4pxbmxkyoMbAVvdsYb.jpg'),
                      minRadius: 35,
                      maxRadius: 60,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
