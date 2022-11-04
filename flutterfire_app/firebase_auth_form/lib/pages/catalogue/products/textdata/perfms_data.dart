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

    };
    return detailsDict;
  }
}