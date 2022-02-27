import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:aqua_page/widgets/butt_on.dart';
import 'package:aqua_page/widgets/profile_image.dart';
import 'package:aqua_page/widgets/profile_tile.dart';

class Pag2 extends StatelessWidget {
  const Pag2({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var sizE = MediaQuery.of(context).size;

    return Row(
      children: [
        Container(
          height: 600,
          width: sizE.width * .45,
          color: Colors.white,
          child: Stack(
            children: [
              Transform(
                transform: Matrix4.rotationZ(pi / 6)..translate(-180.0, 170.0),
                child: Container(
                  height: 350,
                  width: 700,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(300),
                  ),
                ),
              ),
              Positioned(
                top: 200,
                left: 100,
                child: SizedBox(
                  height: 400,
                  width: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Best Aquarium Services',
                        style: GoogleFonts.montserrat(
                          fontSize: 38,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'right to your doorstep.',
                        style: GoogleFonts.montserrat(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 300,
                        child: Text(
                          'Aquanairo Aquariums is a professional aquarium maintenance and service company unlike any other. More than just an aquarium cleaning service, we offer a full line of professional aquarium services in the Nairobi area.',
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: const [
                          // SizedBox(
                          //   width: 230,
                          //   height: 45,
                          //   child: TextField(
                          //     decoration: InputDecoration(
                          //       hintText:
                          //           'Enter your email address',
                          //       hintStyle: GoogleFonts.nunito(
                          //         fontSize: 12,
                          //       ),
                          //       border: OutlineInputBorder(
                          //         borderRadius:
                          //             BorderRadius.circular(50),
                          //       ),
                          //       contentPadding:
                          //           EdgeInsets.symmetric(
                          //         horizontal: 21,
                          //         vertical: 11,
                          //       ),
                          //     ),
                          //     cursorColor: Colors.grey[500],
                          //   ),
                          // ),
                          // SizedBox(
                          //   width: 20,
                          // ),
                          ButtOn(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 600,
          width: sizE.width * .55,
          color: Colors.white,
          child: Stack(
            clipBehavior: Clip.none,
            children: const [
              ProfileImage(
                diameter: 200,
                image: 'assets/aq2.jpg',
                left: 90,
                top: 140,
              ),
              ProfileImage(
                diameter: 100,
                image: 'assets/aq3.jpg',
                left: 310,
                top: 160,
              ),
              ProfileImage(
                diameter: 280,
                image: 'assets/aq4.jpg',
                left: 280,
                top: 275,
              ),
              ProfileImage(
                diameter: 170,
                image: 'assets/aq5.jpg',
                left: 90,
                top: 360,
              ),
              ProfileTile(
                top: 380,
                left: 50,
                factor: .5,
                title: 'Photography is an Art, Lets do it ryt!',
                subtitle: 'Harshell, Photographer',
              ),
              ProfileTile(
                top: 140,
                left: -10,
                factor: .9,
                title: 'I am Gonna give you a Color theory',
                subtitle: 'Scarlett, Designer',
              ),
              ProfileTile(
                top: 160,
                left: 380,
                factor: .4,
                title: 'Lets implement your idea into code',
                subtitle: 'Beldina, Developer',
              ),
              ProfileTile(
                top: 270,
                left: 440,
                factor: 1.1,
                title:
                    'I am Gonna give you a viable product \nin the shortest time',
                subtitle: 'Mark, Project Manager',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
