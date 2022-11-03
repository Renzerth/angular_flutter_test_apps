class GridTextData {

  //Constructor
  GridTextData();

  // Dict Strategy
  static Map<String, dynamic> getGridDetails() {
    Map<String, dynamic> detailsDict = {
      "su_47":{
        'name': 'Su-47 Berkut',
        'urlimage':"https://gamingbolt.com/wp-content/uploads/2018/08/Ace-Combat-7-48.jpg",
      },

      "f_15":{
        'name': 'F-15 S/MTD',
        'urlimage':"https://static.wikia.nocookie.net/acecombat/images/e/e7/F-15_SMTD_Skin_1_Flyby_AC7.jpeg",
      },

      /*"su_47":{
        'name': 'Su-47',
        'urlimage':'"https://gamingbolt.com/wp-content/uploads/2018/08/Ace-Combat-7-48.jpg"',
      },*/


    };
    return detailsDict;
  }
}