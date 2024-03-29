import 'package:flutter/material.dart';
import 'package:untitled/pages/screens/book_detail_screen.dart';
import 'package:untitled/util/constants/book_constants.dart';
import '../../widgets/book_list_item.dart';
import 'package:untitled/widgets/custom_carousel_slider.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16.0,
              ),
              const Text(
                'Good Morning',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              const Text(
                'Welcome to GoodReads',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26.0,
                ),
              ),
              const SizedBox(
                height: 32.0,
              ),
              const CustomCarouselSlider(),
              const SizedBox(
                height: 32.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'My Book',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'See More',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              SizedBox(
                height: 300.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: booksList.length,
                  itemBuilder: (_, index) => InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookDetailScreen(book: booksList[index])
                      ),);
                    },
                    child: Hero(
                      tag: booksList[index].id,
                      child: BookListItem(
                       book: booksList[index],
                        onFavouriteItemClicked: (id) {
                         
                        final book = booksList[index];
                          setState(() {
                             debugPrint('id: $id');
                            book.isFavourite =
                                !book.isFavourite;
                            
                          });
                        },
                      ),
                    ),
                  ),
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 12.0,
                    );
                  },
                ),
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Recommended Books',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'See More',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              SizedBox(
                height: 300.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: booksList.length,
                  itemBuilder: (_, index) => InkWell(
                    onTap: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookDetailScreen(book: booksList[index], isAddToCart: true,)
                      ),);
                    },
                    child: BookListItem(
                     book: booksList[index],
                      onFavouriteItemClicked: (id) {
                        // setState(() {
                        //   booksList[index].isFavourite =
                        //       !booksList[index].isFavourite;
                        // });
                      },
                    ),
                  ),
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 12.0,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
