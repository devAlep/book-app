class DummyBook {
  final int id;
  final String title;
  final String imageUrl;
  final String description;
  bool isFavourite;

  DummyBook(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.description,
      this.isFavourite = false});
}

final booksList = [
  DummyBook(
    id: 0,
    title: 'Steve Jobs',
    imageUrl:
        'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1511288482l/11084145._SY475_.jpg',
    description:
        "Walter Isaacson's worldwide bestselling biography of Apple cofounder Steve Jobs. Based on more than forty interviews with Steve Jobs conducted over two years--as well as interviews with more than 100 family members, friends, adversaries, competitors, and colleagues--Walter Isaacson has written a riveting story of the roller-coaster life and searingly intense personality of ...more",
  ),
  DummyBook(
    id: 1,
    title: 'Spy×Family 1',
    imageUrl:
        'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1562168651l/52961491._SX318_SY475_.jpg',
    description:
        "Walter Isaacson's worldwide bestselling biography of Apple cofounder Steve Jobs. Based on more than forty interviews with Steve Jobs conducted over two years--as well as interviews with more than 100 family members, friends, adversaries, competitors, and colleagues--Walter Isaacson has written a riveting story of the roller-coaster life and searingly intense personality of ...more",
  ),
  DummyBook(
      id: 2,
      title: 'Batman: The Killing Joke',
      imageUrl:
          'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1346331835l/96358.jpg',
      description:
          "For the first time the Joker's origin is revealed in this tale of insanity and human perseverance. Looking to prove that any man can be pushed past his breaking point and go mad, the Joker attempts to drive Commissioner Gordon insane."),
  DummyBook(
    id: 3,
    title: 'Saga, Volume 1',
    imageUrl:
        'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1486028947l/15704307._SY475_.jpg',
    description:
        "From New York Times bestselling writer BRIAN K.VAUGHAN (Y: THE LAST MAN, EX MACHINA) and critically acclaimed artist FIONA STAPLES (MYSTERY SOCIETY, NORTH 40), SAGA is the sweeping tale of one young family fighting to find their place in the worlds. When two soldiers from opposite sides of a never-ending galactic war fall in love, they risk everything to bring a fragile ne ...more",
  ),
  DummyBook(
    id: 4,
    title: 'Spy×Family 1',
    imageUrl:
        'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1562168651l/52961491._SX318_SY475_.jpg',
    description:
        "Walter Isaacson's worldwide bestselling biography of Apple cofounder Steve Jobs. Based on more than forty interviews with Steve Jobs conducted over two years--as well as interviews with more than 100 family members, friends, adversaries, competitors, and colleagues--Walter Isaacson has written a riveting story of the roller-coaster life and searingly intense personality of ...more",
  ),
];
