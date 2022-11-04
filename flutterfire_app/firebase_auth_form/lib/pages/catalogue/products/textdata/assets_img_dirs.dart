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
          {"image": "assets/images/f_15_3.png"},
        },
      },

      "f_22": {
        'name': "F-22",
        'imgset': {
          {"image": "assets/images/f_22_1.jpg"},
          {"image": "assets/images/f_22_2.jpg"},
          {"image": "assets/images/f_22_3.jpg"},
        },
      },

      "f_18": {
        'name': "F/A 18",
        'imgset': {
          {"image": "assets/images/f_18_1.jpg"},
          {"image": "assets/images/f_18_2.jpg"},
          {"image": "assets/images/f_18_3.jpg"},
        },
      },

      "mig_29": {
        'name': "F/A 18",
        'imgset': {
          {"image": "assets/images/mig_29_1.jpg"},
          {"image": "assets/images/mig_29_2.jpg"},
          {"image": "assets/images/mig_29_3.jpg"},
        },
      },

      "su_35": {
        'name': "Su-35S",
        'imgset': {
          {"image": "assets/images/su_35_1.jpg"},
          {"image": "assets/images/su_35_2.jpg"},
          {"image": "assets/images/su_35_3.jpg"},
        },
      },

    };
    return detailsDict;
  }
}
