class ImgDirsData {
  //Constructor
  ImgDirsData();

  // Dict Strategy
  static Map<String, dynamic> getDictDetails() {
    Map<String, dynamic> detailsDict = {
      "su_47": {
        'name': "Su-47",
        'imgset': {
          {"image": "assets/images/su_47_2.jpg"},
          {"image": "assets/images/su_47_3.jpg"},
          {"image": "assets/images/su_47_4.png"},
        },
      },
      
      "f_15": {
        'name': "F-15 S/MTD",
        'imgset': {
          {"image": "assets/images/f_15_1.png"},
          {"image": "assets/images/f_15_2.png"},
          {"image": "assets/images/f_15_3.png"}
        },
      },
    };
    return detailsDict;
  }
}
