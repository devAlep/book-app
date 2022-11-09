import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:untitled/util/constants/book_constants.dart';
import 'package:untitled/widgets/book_subheader.dart';

class FavouriteBookItem extends StatelessWidget {
  const FavouriteBookItem({ Key? key,required this.book }) : super(key: key);
  final DummyBook book;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.8),
      
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(book.title, style: const TextStyle(color: Colors.white, fontSize: 16.0,),),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Text(book.description, style: const TextStyle(color: Colors.white, fontSize: 12.0,),),
                  const SizedBox(height: 32.0,),
                  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                BookSubHeader(iconData: MdiIcons.clockTimeThree, title: '3d 5h'),
                SizedBox(
                  width: 32.0,
                ),
                BookSubHeader(iconData: MdiIcons.clipboardMultiple, title: '75%'),
              ],
            )
                ],
              ),
            ),
            const SizedBox(width: 48.0,),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0,
                ),
                child: CachedNetworkImage(
                          imageUrl: book.imageUrl,
                          fit: BoxFit.cover,
                         
                          progressIndicatorBuilder: (context, url, downloadProgress) =>
                              Center(
                                child: CircularProgressIndicator(
                                    value: downloadProgress.progress),
                              ),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                        ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}