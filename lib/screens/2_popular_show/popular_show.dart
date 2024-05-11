import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podcast/screens/2_popular_show/widgets/icon_maker.dart';
import 'package:podcast/screens/2_popular_show/widgets/popular_show_widget_maker.dart';
import 'package:podcast/screens/3_subscribe/subscribe.dart';
import 'package:podcast/utils/assets/image_directions.dart';
import 'package:podcast/utils/colors/text_colors.dart';
import 'package:podcast/utils/extension/sized_box.dart';
import 'package:podcast/utils/fonts/styles.dart';
import 'package:podcast/utils/widgets/button_maker.dart';

class PopularShow extends StatelessWidget {
  List<Map<String, dynamic>> popularShow_ls = [
    {
      'imageDirection': Assets.imagePodcastBackground,
      'podcastName': 'Enjoy',
      'podcastType': 'Socially Buzzed',
    },
    {
      'imageDirection': Assets.imageWomenTalk,
      'podcastName': 'Women Talk',
      'podcastType': 'Entertainment',
    },
    {
      'imageDirection': Assets.imageComeAlive,
      'podcastName': 'Come Alive',
      'podcastType': 'Nationality',
    },
  ];

  PopularShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),

      /// app bar
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: const Color(0xFFF7F7F7),
        title: Text(
          'Popular Show',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: const Color(0xFF1B153B),
            fontSize: 16.sp,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 15.h),
          child: Column(
            children: [
              /// main podcast photo
              Container(
                width: double.infinity,
                height: 300.h,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(40.r),
                  image: const DecorationImage(
                    image: AssetImage(
                      Assets.imagePodcastBackground,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Center(
                  child: Container(
                    width: 30.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurStyle: BlurStyle.outer,
                          spreadRadius: 10.r,
                          blurRadius: 50.r,
                        ),
                      ],
                    ),
                    child: const Icon(Icons.play_arrow_rounded),
                  ),
                ),
              ),
              35.height(),

              /// play all show and subscribe buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonMaker(text: 'Play All Show', isSelected: true),
                  ButtonMaker(
                    text: 'Subscribe',
                    isSelected: false,
                    nextPageName: SubscribePage(),
                  ),
                ],
              ),

              30.height(),

              /// row text: 12 popular show
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '12 Popular show',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1B153B),
                      fontSize: 18.sp,
                    ),
                  ),
                  Text('See all', style: AppTextStyles.mainBold),
                ],
              ),

              20.height(),
              Column(
                children: [
                  for (var each in popularShow_ls)
                    PopularShowWidget(
                      imageDirection: each['imageDirection'],
                      podcastName: each['podcastName'],
                      podcastType: each['podcastType'],
                    ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color.fromARGB(146, 10, 40, 122)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
                color: TextColors.primaryColor,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_sharp,
                color: TextColors.primaryColor,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.play_lesson_outlined,
                color: TextColors.primaryColor,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
