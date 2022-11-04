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
          'ceiling': '18,000 m',
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
          'ceiling': 'NA',
          'g': 'NA',
          'climb': 'NA',
          'loading': 'NA',
          'thrust/weight': 'NA',
        },

        'cost':'74.2 Million',
      },

      "f_22":{
        'name':"F-22",
        'characteristics':{
          'crew': '1',
          'length': '18.90 m',
          'wingspan': '13.56 m',
          'height': '5.08 m',
          'wing area': '78.09 m2',
          'airfoil': 'NA',
          'weight': '19,700 kg',
          'load': '29,692 kg',
          'pw': '2xF119-PW-100',
        },

        'performance':{
          'speed': '1,850 km/h',
          'range': 'NA',
          'ceiling': '18,288 m',
          'g': '9',
          'climb': 'NA',
          'loading': 'NA',
          'thrust': '35,000 lbst',
        },

        'cost':'92.4 Million',
      },

      "f_18":{
        'name':"F/A 18",
        'characteristics':{
          'crew': '1',
          'length': '17.1 m',
          'wingspan': '12.3 m',
          'height': '4.7 m',
          'wing area': '38 m2',
          'airfoil': 'NA',
          'weight': '16,769 kg',
          'load': '23,541 kg',
          'pw': '2xF404-GE-402',
        },

        'performance':{
          'speed': '1,915 km/h',
          'range': '3,300 km',
          'ceiling': '11,000 m',
          'g': '9',
          'climb': '250 m/s',
          'loading': '450 kg/m2',
          'thrust': '11,000 lbst',
        },

        'cost':'67.4 Million',
      },

      "mig_29":{
        'name':"MiG 29",
        'characteristics':{
          'crew': '1/2',
          'length': '17.37 m',
          'wingspan': '11.4 m',
          'height': '4.73 m',
          'wing area': '38 m2',
          'airfoil': 'NA',
          'weight': '19,200 kg',
          'load': '58,422 kg',
          'pw': '2xKlimov RD-33MK ',
        },

        'performance':{
          'speed': '2,100 km km/h',
          'range': '2,000 km',
          'ceiling': '16,000 m',
          'g': '8/9',
          'climb': '330 m/s',
          'loading': '442 kg/m2',
          'thrust/weight': '1.02',
        },

        'cost':'6.5 Million',
      },

      "su_35":{
        'name':"Su-35S",
        'characteristics':{
          'crew': '1',
          'length': '21.9 m',
          'wingspan': '15.3 m',
          'height': '5.9 m',
          'wing area': '62 m2',
          'airfoil': '5%',
          'weight': '25,300 kg',
          'load': '34,500 kg',
          'pw': '2xSaturn AL-41F1S',
        },

        'performance':{
          'speed': '2,400 km km/h',
          'range': '3,600 km',
          'ceiling': '18,000 m',
          'g': '9',
          'climb': '280 m/s',
          'loading': '408 kg/m2',
          'thrust/weight': '0.92',
        },

        'cost':'81.0 Million',
      },

    };
    return detailsDict;
  }
}