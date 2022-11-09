import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:untitled/util/constants/book_constants.dart';
import 'package:untitled/widgets/book_subheader.dart';

class BookDetailScreen extends StatelessWidget {
  const BookDetailScreen({ Key? key,required this.book, this.isAddToCart = false }) : super(key: key);
  final DummyBook book;
  final bool isAddToCart;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              child: Hero(
                tag: book.id,
                child: CachedNetworkImage(
                        imageUrl: book.imageUrl,
                        fit: BoxFit.fill,
                        progressIndicatorBuilder: (context, url, downloadProgress) =>
                            Center(
                              child: CircularProgressIndicator(
                                  value: downloadProgress.progress),
                            ),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                      ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0,),
              height: MediaQuery.of(context).size.height * 0.64,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(32.0), topRight: Radius.circular(32.0,)
                ,)
                
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(book.title, style: const TextStyle(color: Colors.black, fontSize: 22.0,  fontWeight: FontWeight.bold,),),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Text(book.description, style: const TextStyle(color: Colors.grey, fontSize: 16.0, fontWeight: FontWeight.w600, ),),
                    const SizedBox(height: 32.0,),
                    Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  BookSubHeader(iconData: MdiIcons.clockTimeThree, title: '3d 5h', color: Colors.grey,),
                  SizedBox(
                    width: 32.0,
                  ),
                  BookSubHeader(iconData: MdiIcons.clipboardMultiple, title: '75%', color: Colors.grey,),
                ],
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color(0xff5B3B5D)
                  ),
                  onPressed: () {}, 
                  child:  Text(isAddToCart ? 'Add To Cart' : 'Add To Favourites', style: const TextStyle(color: Colors.white,),),
                ),
              )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}