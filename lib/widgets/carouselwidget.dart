import 'package:flutter/material.dart';
import 'package:shopify_app/models/adver.model.dart';

class CarouselWidget extends StatelessWidget {
  final Advertisement adverItem;
  const CarouselWidget({
    super.key,
    required this.adverItem,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    final style = ElevatedButton.styleFrom(
        minimumSize: Size(40, 40),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: Colors.white);

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(adverItem.imgpath ?? 'assets/images/img1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              textAlign: TextAlign.left,
              adverItem.title ?? 'No title',
              softWrap: true,
              maxLines: 3,
              style: TextStyle(
                fontSize: 13,
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              style: style,
              onPressed: () {
                // Add your button action here
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'See More',
                      style: TextStyle(color: Color.fromARGB(255, 81, 92, 111)),
                    ),
                  ),
                  Icon(
                    Icons.arrow_circle_right,
                    color: Color.fromARGB(255, 255, 105, 105),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
