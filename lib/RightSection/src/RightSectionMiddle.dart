import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swirl_transition_clean/ProfileImage.dart';

List<String> profileImages = [
  'https://cdn.pixabay.com/photo/2016/11/22/10/47/girl-1848947_960_720.jpg',
  'https://cdn.pixabay.com/photo/2017/06/02/14/11/girl-2366438_960_720.jpg',
  'https://cdn.pixabay.com/photo/2015/05/03/14/40/woman-751236_960_720.jpg',
  'https://cdn.pixabay.com/photo/2016/01/19/17/48/woman-1149911_960_720.jpg',
  'https://cdn.pixabay.com/photo/2018/03/12/12/32/woman-3219507_960_720.jpg',
  'https://cdn.pixabay.com/photo/2015/01/07/20/53/hat-591973_960_720.jpg',
  'https://cdn.pixabay.com/photo/2016/11/16/10/27/girl-1828538_960_720.jpg',
  'https://cdn.pixabay.com/photo/2017/03/05/23/14/girl-2120196_960_720.jpg',
  'https://cdn.pixabay.com/photo/2015/03/05/19/18/studio-660806_960_720.jpg',
  'https://cdn.pixabay.com/photo/2018/04/27/03/50/portrait-3353699_960_720.jpg',
  'https://cdn.pixabay.com/photo/2017/11/28/12/39/makeup-2983550_960_720.jpg',
  'https://cdn.pixabay.com/photo/2017/12/19/09/38/beautiful-3027662_960_720.jpg',
];

class RightSectionMiddle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15.0, bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Stories',
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.play_circle_outline,
                        color: Colors.white70,
                        size: 20.0,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        'Watch all',
                        style: GoogleFonts.nunito(
                          color: Colors.white70,
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: profileImages
                    .map(
                      (e) => ProfileImage(
                        image: e,
                        size: 85.0,
                        myProfile:
                            (profileImages.indexOf(e) == 0) ? true : false,
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
