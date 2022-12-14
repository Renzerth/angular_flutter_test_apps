class OverviewTextData {
  //String aircft_name;
  //String description;

  //Constructor
  OverviewTextData();


  // Dict-List Strategy
  static Map<String, dynamic> getPlane() {
    Map<String, dynamic> detailsDict = {
      'su_47': getDetailList(0),
      'f_15': getDetailList(1),
    };
    return detailsDict;
  }

  static List<String> getDetailList(int planeIndex) {
    var detaiList = List<String>.filled(3, ''); // '' Init String
    var planeData = getMapList()[planeIndex];
    
    detaiList[0] = planeData['plane']; // Name String
    detaiList[1] = planeData['description']; // Description Text
    detaiList[2] = planeData['performance']; // Performance Text

    return detaiList;
  }

  static List<Map<String, dynamic>> getMapList() {
    List<Map<String, dynamic>> planesData = [
      {
        'name': 'Su-47 Berkut',
        'description':
            'An experimental supersonic jet fighter developed by the JSC Sukhoi Company. A distinguishing feature of the aircraft is its forward-swept wing that gave the aircraft excellent agility and maneuverability.The sole aircraft produced served as a technology demonstrator prototype for a number of advanced technologies later used in the 4.5 generation fighter Su-35 and current fifth-generation jet fighter Su-57. ',
      },
    ];
    return planesData;
  }

  // Dict Strategy
  static Map<String, dynamic> getDictDetails() {
    Map<String, dynamic> detailsDict = {
      "su_47": {
        'name': 'Su-47 Berkut',
        'description':
            'An experimental supersonic jet fighter developed by the JSC Sukhoi Company. A distinguishing feature of the aircraft is its forward-swept wing that gave the aircraft excellent agility and maneuverability.The sole aircraft produced served as a technology demonstrator prototype for a number of advanced technologies later used in the 4.5 generation fighter Su-35 and current fifth-generation jet fighter Su-57. ',
        '': '',
      },
      "f_15": {
        'name': 'Su-47 Berkut',
        'description':
            'An experimental supersonic jet fighter developed by the JSC Sukhoi Company. A distinguishing feature of the aircraft is its forward-swept wing that gave the aircraft excellent agility and maneuverability.The sole aircraft produced served as a technology demonstrator prototype for a number of advanced technologies later used in the 4.5 generation fighter Su-35 and current fifth-generation jet fighter Su-57. ',
        '': '',
      },
    };
    return detailsDict;
  }

  /*@override
  String toString() {
    return 'Actividad{id: $id, nombre: $nombre}';
  }*/
}
