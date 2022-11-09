import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:untitled/util/constants/book_constants.dart';
import 'package:untitled/widgets/book_subheader.dart';

class BookListItem extends StatelessWidget {
  const BookListItem({
    Key? key,
    required this.onFavouriteItemClicked, required this.book,
  }) : super(key: key);
  final DummyBook book;
  final Function(int bookId) onFavouriteItemClicked;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 240.0,
          width: MediaQuery.of(context).size.width / 2.5,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  12.0,
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
              Positioned(
                top: 8.0,
                right: 24.0,
                child: GestureDetector(
                  onTap: () {
                    onFavouriteItemClicked(book.id);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(
                      6.0,
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey.shade400),
                    child: Icon(
                      MdiIcons.heart,
                      size: 16.0,
                      color: book.isFavourite ? Colors.red : Colors.black,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
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
    );
  }
}
