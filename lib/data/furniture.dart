class Furniture {
  final int id;
  final String name;
  final String price;
  final String image;
  final String description;
  final bool isFavorite;

  final double rating;

  Furniture({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.isFavorite,
    required this.rating,
    required this.image,
  });
}

final List<Furniture> listCakes = [
  Furniture(
    id: 1,
    name: 'Stylish Chair',
    price: '\200',
    description:
        'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
    rating: 4.8,
    image: 'assets/images/img1.png',
    isFavorite: false,
  ),
  Furniture(
    id: 2,
    name: 'Modern Table',
    price: '\300',
    description:
        'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
    rating: 4.9,
    image: 'assets/images/img2.png',
    isFavorite: false,
  ),
  Furniture(
    id: 5,
    name: 'Modern Table',
    price: '\$200',
    description:
        'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
    rating: 4.9,
    image: 'assets/images/img3.png',
    isFavorite: false,
  ),
  Furniture(
    id: 6,
    name: 'Wooden Console',
    price: '\250',
    description:
        'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
    rating: 4.7,
    image: 'assets/images/img4.png',
    isFavorite: false,
  ),
  Furniture(
    id: 3,
    name: 'Wooden Console',
    price: '\240',
    description:
        'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
    rating: 4.7,
    image: 'assets/images/img5.png',
    isFavorite: false,
  ),
  Furniture(
    id: 4,
    name: 'Brown Armchair',
    price: '\210',
    description:
        'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
    rating: 4.9,
    image: 'assets/images/img3.png',
    isFavorite: false,
  ),
];
