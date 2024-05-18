class Cake {
  final int id;
  final String name;
  final String price;
  final String nameUrl;
  final bool isFavorite;
  final String subMenu;

  Cake({
    required this.id,
    required this.name,
    required this.price,
    required this.nameUrl,
    required this.isFavorite,
    required this.subMenu,
  });
}

final List<Cake> listCakes = [
  Cake(
      id: 1,
      name: 'Banana Cake',
      price: '79.000',
      nameUrl: 'assets/box1.jpeg',
      isFavorite: true,
      subMenu: 'cake_box'),
  Cake(
      id: 2,
      name: 'Bolu Gula Aren',
      price: '94.000',
      nameUrl: 'assets/box2.jpeg',
      isFavorite: false,
      subMenu: 'cake_box'),
  Cake(
      id: 3,
      name: 'Coffee Cake Pudding',
      price: '99.000',
      nameUrl: 'assets/box3.jpeg',
      isFavorite: true,
      subMenu: 'cake_box'),
  Cake(
      id: 4,
      name: 'Pudding Cake',
      price: '81.000',
      nameUrl: 'assets/box4.jpeg',
      isFavorite: false,
      subMenu: 'cake_box'),
  Cake(
      id: 5,
      name: 'Brownies Keju',
      price: '65.000',
      nameUrl: 'assets/box5.jpeg',
      isFavorite: false,
      subMenu: 'cake_box'),
  Cake(
      id: 6,
      name: 'Brownies Almond',
      price: '65.000',
      nameUrl: 'assets/box6.jpeg',
      isFavorite: false,
      subMenu: 'cake_box'),
];
