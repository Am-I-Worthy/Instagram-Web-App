import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swirl_transition_clean/RightSection/src/FeedPost.dart';
import 'package:swirl_transition_clean/RightSection/src/FeedPostDetail.dart';
import 'package:swirl_transition_clean/main.dart';

class RightSectionBottom extends StatefulWidget {
  @override
  _RightSectionBottomState createState() => _RightSectionBottomState();
}

int elements;

class _RightSectionBottomState extends State<RightSectionBottom> {
  @override
  Widget build(BuildContext context) {
    if (MyApp.type == deviceType.tablet ||
        MyApp.type == deviceType.smallTablet) {
      setState(() {
        elements = 4;
      });
    } else if (MyApp.type == deviceType.phone ) {
      setState(() {
        elements = 2;
      });
    } else {
      setState(() {
        elements = 6;
      });
    }
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Feed',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 19.0,
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Latest',
                        style: GoogleFonts.nunito(
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 1.0,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'Popular',
                        style: GoogleFonts.nunito(
                          fontSize: 12.0,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height - 243.0,
          width: MediaQuery.of(context).size.width * 0.8,
          child: StaggeredGridView.countBuilder(
            physics: BouncingScrollPhysics(),
            crossAxisCount: elements,
            itemCount: 10,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 200.0,
                width: 200.0,
                child: Center(
                  child: Column(
                    children: [
                      FeedPost(index),
                      FeedPostDetail(index),
                    ],
                  ),
                ),
              );
            },
            staggeredTileBuilder: (int index) =>
                StaggeredTile.count(2, (index % 2 == 0) ? 3 : 2.2),
          ),
        ),
      ],
    );
  }
}
