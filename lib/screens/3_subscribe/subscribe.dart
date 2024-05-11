import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podcast/screens/3_subscribe/widgets/podcast_creators.dart';
import 'package:podcast/utils/colors/text_colors.dart';
import 'package:podcast/utils/extension/sized_box.dart';
import 'package:podcast/utils/assets/image_directions.dart';

class SubscribePage extends StatelessWidget {
  List<Map<String, dynamic>> podcastCreators_List = [
    {
      'photoPath': Assets.image1,
      'podcastCreatorName': 'The Smith Comedy',
      'podcastType': 'Show',
      'podcastAmount': 685,
      'isSelected': true,
    },
    {
      'photoPath': Assets.image2,
      'podcastCreatorName': 'The Boy Who Flew',
      'podcastType': 'Show',
      'podcastAmount': 685,
      'isSelected': false,
    },
    {
      'photoPath': Assets.image3,
      'podcastCreatorName': 'Community Best',
      'podcastType': 'Show',
      'podcastAmount': 576,
      'isSelected': true,
    },
    {
      'photoPath': Assets.image4,
      'podcastCreatorName': 'One Week Wonders',
      'podcastType': 'Show',
      'podcastAmount': 576,
      'isSelected': false,
    },
    {
      'photoPath': Assets.image5,
      'podcastCreatorName': 'The Boy Lived',
      'podcastType': 'Show',
      'podcastAmount': 685,
      'isSelected': true,
    },
  ];

  SubscribePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7F7F7),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Text(
          'Subscribe',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: const Color(0xFF1B153B),
            fontSize: 16.sp,
          ),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (ctx) {
              return [
                PopupMenuItem(
                  onTap: () {},
                  child: const Text("Profile"),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: const Text("Settings"),
                ),
                PopupMenuItem(
                  onTap: () {},
                  child: const Text("Logout"),
                ),
              ];
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 15.h),
          child: Column(
            children: [
              Text(
                'Subscribe Your Favorite Podcast Authores. Or You can Skip It For Now.',
                style: TextStyle(
                  color: TextColors.secondaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              20.height(),
              Column(
                children: [
                  for (var each in podcastCreators_List)
                    PodcastCreator(
                      photoPath: each['photoPath'],
                      podcastCreatorName: each['podcastCreatorName'],
                      podcastType: each['podcastType'],
                      podcastAmount: each['podcastAmount'],
                      isSelected: each['isSelected'],
                    )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
