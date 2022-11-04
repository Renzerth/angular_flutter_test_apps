class PerfTextData {

  //Constructor
  PerfTextData();

  // Dict Strategy
  static Map<String, dynamic> getDictDetails() {
    Map<String, dynamic> detailsDict = {
      "su_47":{
        'name':"Su-47",
        'statsurl': "https://static.wikia.nocookie.net/acecombat/images/f/f1/Su-47_AC7_Statistics.png",
      },

      "f_15":{
        'name':"F-15 S/MTD",
        'statsurl': "https://static.wikia.nocookie.net/acecombat/images/c/ca/F-15_mtd_stats.jpg/",
      },

      "f_22":{
        'name':"F-22",
        'statsurl': "https://static.wikia.nocookie.net/acecombat/images/c/c4/AC7_F-22A_Statistics.png",
      },

      "f_18":{
        'name':"F/A 18",
        'statsurl': "https://static.wikia.nocookie.net/acecombat/images/f/f8/FA-18F_AC7_Statistics.png",
      },

      "mig_29":{
        'name':"MiG 29",
        'statsurl': "https://static.wikia.nocookie.net/acecombat/images/f/fa/MiG-29A_AC7_Statistics.png",
      },

      "su_35":{
        'name':"Su-35",
        'statsurl': "https://static.wikia.nocookie.net/acecombat/images/e/ef/Su35statsac7.png",
      },

    };
    return detailsDict;
  }
}