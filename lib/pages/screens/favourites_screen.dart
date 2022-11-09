import 'package:flutter/material.dart';
import 'package:untitled/pages/screens/book_detail_screen.dart';
import 'package:untitled/util/constants/book_constants.dart';
import 'package:untitled/widgets/favourite_book_item.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favouriteBooks = booksList.where((element) => element.isFavourite == true).toList();
    debugPrint('favouriteBooks: $favouriteBooks');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite Books'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
      ),
      body: favouriteBooks.isEmpty ? const Center(child: Text('No favourites added', style: TextStyle(color: Colors.white, fontSize: 16.0,
      ),),): Padding(
        padding: const EdgeInsets.all(16.0,),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: ((context, index) => InkWell(
           onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookDetailScreen(book: booksList[index])
                      ),),
            child: FavouriteBookItem(
            book: favouriteBooks[index],
                  ),
          )), 
        separatorBuilder: ((context, index) => const Divider()), 
        itemCount: favouriteBooks.length,
        ),
      ),
    );
  }
}
