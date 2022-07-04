import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:untitled/widgets/book_subheader.dart';

class BookListItem extends StatelessWidget {
  const BookListItem({
    Key? key,
    required this.imageUrl,
    required this.onFavouriteItemClicked,
    required this.isFavourite,
  }) : super(key: key);
  final String imageUrl;
  final Function onFavouriteItemClicked;
  final bool isFavourite;

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
                  imageUrl: imageUrl,
                  fit: BoxFit.cover,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      CircularProgressIndicator(
                          value: downloadProgress.progress),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              Positioned(
                top: 8.0,
                right: 24.0,
                child: GestureDetector(
                  onTap: () {
                    onFavouriteItemClicked();
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
                      color: isFavourite ? Colors.red : Colors.black,
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
