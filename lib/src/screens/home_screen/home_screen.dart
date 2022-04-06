import 'package:flutter/material.dart';
import 'package:turista/src/custom_widgets/custom_app_bar.dart';
import 'package:turista/src/custom_widgets/custom_bottom_bar.dart';
import 'package:turista/src/custom_widgets/custom_text_field.dart';
import 'package:turista/src/custom_widgets/my_card.dart';
import 'package:turista/src/utils/my_colors.dart';
import 'package:turista/src/utils/my_images.dart';
import 'package:turista/src/utils/my_strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> myList = [
    {
      "image": MyImages.stone,
      "name": "Elephant Rock",
      "money": 159.9,
      "location": "AI-Ula, SA"
    },
    {
      "image": MyImages.mahal,
      "name": "A night in Rijal Almaa",
      "money": 753.9,
      "location": "Asser, SA"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      bottomNavigationBar: const CustomBottomBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const CustomAppBar(),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  color: MyColors.lightBlue,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.white,
                              shape: BoxShape.circle),
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Center(
                              child: Icon(Icons.person),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              MyStrings.welcomeBack,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              MyStrings.mohammed,
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.notifications,
                          color: Color(0xffd9e4e4),
                          size: 30,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomTextField(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          MyStrings.myExperiences,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: myList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return MyCard(
                            img: myList[index]["image"],
                            name: myList[index]["name"],
                            location: myList[index]["location"],
                            money: myList[index]["money"],
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
