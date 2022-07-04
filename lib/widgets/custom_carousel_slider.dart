import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled/util/constants/book_constants.dart';
import 'package:untitled/widgets/carousel_item.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        autoPlay: true,
        scrollDirection: Axis.horizontal,
      ),
      items: booksList.map(
        (book) {
          return CarouselItem(
            imageUrl: book.imageUrl,
          );
        },
      ).toList(),
    );
  }
}
