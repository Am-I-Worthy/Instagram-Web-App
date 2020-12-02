import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swirl_transition_clean/main.dart';

class RightSectionTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 220.0,
          height: 40.0,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xff484B5B),
              prefixIcon: Icon(
                Feather.search,
                size: 18.0,
                color: Colors.white,
              ),
              labelText: 'Search',
              labelStyle: GoogleFonts.nunito(
                color: Colors.white54,
                fontSize: 14.0,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        Container(
          width: (MyApp.type == deviceType.phone) ? 100.0 : 200.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                FontAwesome.bell_o,
                color: Colors.white,
                size: 20.0,
              ),
              Icon(
                Feather.send,
                color: Colors.white,
                size: 20.0,
              ),
              Container(
                width: (MyApp.type == deviceType.phone) ? 30.0 : 130.0,
                height: (MyApp.type == deviceType.phone) ? 35.0 : 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: LinearGradient(
                    colors: [
                      Colors.orange,
                      Colors.purple,
                    ],
                  ),
                ),
                child: Center(
                  child: Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.0),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: (MyApp.type == deviceType.phone)
                            ? [
                                Icon(
                                  FontAwesome.plus_circle,
                                  color: Colors.white,
                                  size: 20.0,
                                ),
                              ]
                            : [
                                Icon(
                                  FontAwesome.plus_circle,
                                  color: Colors.white,
                                  size: 20.0,
                                ),
                                Text(
                                  'Add photo',
                                  style: GoogleFonts.nunito(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
