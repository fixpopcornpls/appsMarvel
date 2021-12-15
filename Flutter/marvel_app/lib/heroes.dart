class Heroes {
  final String name;
  final String path;

  Heroes({required this.name, required this.path});
}

class HeroesList {
  final _heroes = [
    Heroes(name: 'Carnage', path: 'images/Carnage.jpg'),
    Heroes(name: 'Doctor Doom', path: 'images/Doctor_Doom.png'),
    Heroes(name: 'Iron man', path: 'images/Iron_man.jpg'),
    Heroes(name: 'Spider man', path: 'images/Spider_man.jpg'),
    Heroes(name: 'Venom', path: 'images/Venom.jpg'),
  ];

  List<Heroes> get() => [..._heroes];
}
