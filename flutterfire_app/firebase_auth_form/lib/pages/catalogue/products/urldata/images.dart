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

      "f_22":{
        'name': 'F-22 Raptor',
        'urlimage':"https://static.wikia.nocookie.net/acecombat/images/7/72/F-22A_AC7_Flyby_1.jpg",
      },

      "f_18":{
        'name': 'F/A 18 Super Hornet',
        'urlimage':"https://upload.wikimedia.org/wikipedia/commons/e/e9/011218-N-9769P-047_F-A-18_With_Weapons_Ready_for_Mission.jpg",
      },

      "mig_29":{
        'name': 'MiG 29 Fulcrum',
        'urlimage':"https://upload.wikimedia.org/wikipedia/commons/d/d3/Mikoyan_mig29.jpg",
      },

      "su_35":{
        'name': 'Su-35S Flanker',
        'urlimage':"https://upload.wikimedia.org/wikipedia/commons/1/1d/Sukhoi_Su-35S_%2828333541172%29.jpg",
      },


    };
    return detailsDict;
  }
}