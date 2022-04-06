import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:turista/src/utils/my_colors.dart';

class MyCard extends StatelessWidget {
  final String? img;
  final String? name;
  final String? location;
  final double? money;

  const MyCard({Key? key, this.img, this.name, this.location, this.money})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red,
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(img!))),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all()),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            name!,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          Text(
                            '\$$money',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: MyColors.darkBlue),
                          )
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            size: 15,
                          ),
                          Text(
                            location!,
                            style: const TextStyle(fontSize: 12),
                          ),
                          const Spacer(),
                          RatingBar.builder(
                            minRating: 1,
                            itemSize: 20,
                            itemBuilder: (BuildContext context, int _) =>
                                const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (double value) {},
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
