class Gebruiker {
  final String uid;
  Gebruiker({ required this.uid});
}

class GebruikerData {
  late final String uid;
  late final String name;
  late final String sugars;
  late final int strength;

  GebruikerData({required this.uid, required this.sugars,required this.strength, required this.name});
}