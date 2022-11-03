class SpecTextData {

  //Constructor
  SpecTextData();

  // Dict Strategy
  static Map<String, dynamic> getDictDetails() {
    Map<String, dynamic> detailsDict = {
      "su_47":{
        'characteristics':{
          'crew': '1',
          'length': '22.6 m',
          'wingspan': '16.7 m',
          'height': '6.4 m',
          'wing area': '56 m2',
          'airfoil': '5%',
          'weight': '25,670 kg',
          'load': '34,000 kg',
          'Powerplant': '2 x Soloviev D-30F6',
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
      },

      "f_15":{
        'characteristics':{
          'crew': '1',
          'length': '22.6 m',
          'wingspan': '16.7 m',
          'height': '6.4 m',
          'wing area': '56 m2',
          'airfoil': '5%',
          'weight': '25,670 kg',
          'load': '34,000 kg',
          'Powerplant': '2 x Soloviev D-30F6',
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
      },
    };
    return detailsDict;
  }
}