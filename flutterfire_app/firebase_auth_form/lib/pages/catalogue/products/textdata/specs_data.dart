class SpecTextData {

  //Constructor
  SpecTextData();

  // Dict Strategy
  static Map<String, dynamic> getDictDetails() {
    Map<String, dynamic> detailsDict = {
      "su_47":{
        'name':"Su-47",
        'characteristics':{
          'crew': '1',
          'length': '22.6 m',
          'wingspan': '16.7 m',
          'height': '6.4 m',
          'wing area': '56 m2',
          'airfoil': '5%',
          'weight': '25,670 kg',
          'load': '34,000 kg',
          'pw': '2xSoloviev D-30F6',
        },

        'performance':{
          'speed': '2,200 km/h',
          'range': '3,300 km',
          'service': '18,000 m',
          'g': '+9',
          'climb': '233 m/s',
          'loading': '607 kg/m2',
          'thrust/weight': '0.92',
        },

        'cost':'70.0 Million',
      },

      "f_15":{
        'name':"F-15 S/MTD",
        'characteristics':{
          'crew': '2',
          'length': '19.42 m',
          'wingspan': '13 m',
          'height': '5.64 m',
          'wing area': '56.5 m2',
          'airfoil': 'NA',
          'weight': '21,319 kg',
          'load': 'NA',
          'pw': '2xF100-PW-229',
        },

        'performance':{
          'speed': '2,450 km/h',
          'range': 'NA',
          'service': 'NA',
          'g': 'NA',
          'climb': 'NA',
          'loading': 'NA',
          'thrust/weight': 'NA',
        },

        'cost':'74.2 Million',
      },
    };
    return detailsDict;
  }
}