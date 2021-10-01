import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Carousel extends StatefulWidget {
  Carousel({Key? key, required this.images}) : super(key: key);

  final List<String> images;

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  bool isFavorite = false;
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          child: CarouselSlider.builder(
            itemCount: widget.images.length,
            options: CarouselOptions(
                height: size.width * 600 / 450,
                viewportFraction: 1,
                onPageChanged: (int index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                }),
            itemBuilder: (context, index, realIndex) {
              return Image.asset(
                widget.images[index],
                width: size.width,
              );
            },
          ),
        ),
        Positioned.fill(
          bottom: 10,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: widget.images.length,
              effect: ScrollingDotsEffect(
                activeDotColor: theme.primaryColor,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -25,
          right: 40,
          child: InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: theme.primaryColor,
                  width: 1,
                ),
              ),
              child: Center(
                child: Icon(
                  isFavorite ? Icons.favorite_outlined : Icons.favorite_border,
                  size: 32,
                  color: theme.primaryColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
