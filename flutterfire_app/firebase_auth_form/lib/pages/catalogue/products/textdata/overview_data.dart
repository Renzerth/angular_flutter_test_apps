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
            'An experimental supersonic jet fighter developed by the JSC Sukhoi Company. A distinguishing feature of the aircraft is its forward-swept wing that gave the aircraft excellent agility and maneuverability.The sole aircraft produced served as a technology demonstrator prototype for a number of advanced technologies later used in the 4.5 generation fighter Su-35 and current fifth-generation jet fighter Su-57.',
      },
      "f_15": {
        'name': 'F-15 S/MTD',
        'description':
            'The McDonnell Douglas F-15 STOL/MTD (Short Takeoff and Landing/Maneuver Technology Demonstrator) is a modified F-15 Eagle. Developed as a technology demonstrator, the F-15 STOL/MTD carried out research for studying the effects of thrust vectoring and enhanced maneuverability. The aircraft used for the project was pre-production TF-15A (F-15B), and was the oldest F-15 flying up to its retirement.',
      },

      "f_22": {
        'name': 'F-22 Raptor',
        'description':
            'An American single-seat, twin-engine, all-weather stealth tactical fighter aircraft developed for the United States Air Force (USAF). As the result of the USAF\'s Advanced Tactical Fighter (ATF) program, the aircraft was designed as an air superiority fighter, but also has ground attack, electronic warfare, and signals intelligence capabilities.',
      },

      "f_18": {
        'name': 'F/A 18 Super Hornet',
        'description':
            'Designed and initially produced by McDonnell Douglas, the Super Hornet first flew in 1995. Low-rate production began in early 1997 with full-rate production starting in September 1997, after the merger of McDonnell Douglas and Boeing the previous month. The Super Hornet entered fleet service with the United States Navy in 1999, replacing the Grumman F-14 Tomcat.',
      },

      "mig_29": {
        'name': 'MiG 29 Fulcrum',
        'description':
            'Is a twin-engine fighter aircraft designed in the Soviet Union. Developed by the Mikoyan design bureau as an air superiority fighter during the 1970s, the MiG-29, along with the larger Sukhoi Su-27, was developed to counter new U.S. fighters such as the McDonnell Douglas F-15 Eagle and the General Dynamics F-16 Fighting Falcon. The MiG-29 entered service with the Soviet Air Forces in 1982.',
      },

      "su_35": {
        'name': 'Su-35S Flanker',
        'description':
            'Twin-engine, supermaneuverable aircraft, designed by the Sukhoi Design Bureau and built by Sukhoi. The type was originally developed by the Soviet Union from the Su-27 and was known as the Su-27M. It incorporated canards and a multi-function radar giving it multi-role capabilities. The first prototype made its maiden flight in June 1988. Following the dissolution of the USSR Sukhoi re-designated it as the Su-35 to attract export orders.',
      },

    };
    return detailsDict;
  }

  /*@override
  String toString() {
    return 'Actividad{id: $id, nombre: $nombre}';
  }*/
}
