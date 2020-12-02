import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swirl_transition_clean/ProfileImage.dart';
import 'package:swirl_transition_clean/postSrc.dart';

class FeedPostDetail extends StatelessWidget {
  final int index;
  FeedPostDetail(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      child: Row(
        children: [
          ProfileImage(
            image: posts[index].image,
            size: 33.0,
            small: true,
          ),
          SizedBox(
            width: 0.0,
          ),
          Text(
            posts[index].name,
            style: GoogleFonts.nunito(
              color: Colors.white,
            ),
          ),
          Spacer(flex: 2),
          Icon(
            Feather.heart,
            color: Colors.white,
            size: 20.0,
          ),
          Text(
            '  ${posts[index].likes}  ',
            style: GoogleFonts.nunito(
              color: Colors.white,
              fontSize: 12.0,
              fontWeight: FontWeight.w300,
            ),
          ),
          Icon(
            Feather.message_circle,
            color: Colors.white,
            size: 20.0,
          ),
          Text(
            '  ${posts[index].comment}  ',
            style: GoogleFonts.nunito(
              color: Colors.white,
              fontSize: 12.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
