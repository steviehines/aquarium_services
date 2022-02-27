import 'package:aqua_page/widgets/testimonial_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pag5 extends StatelessWidget {
  const Pag5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sizE = MediaQuery.of(context).size;

    return Container(
      height: 600,
      width: sizE.width,
      color: Colors.white,
      child: Stack(
        children: [
          Align(
            child: Column(
              children: [
                Text(
                  'Be in the community',
                  style: GoogleFonts.nunito(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Meet New people and leave testimonials about your teammates',
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 277,
            top: 233,
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: -70,
                        top: -60,
                        child: Icon(
                          Icons.format_quote,
                          color: Colors.grey[300],
                          size: 150,
                        ),
                      ),
                      Text(
                        'Excellent',
                        style: GoogleFonts.nunito(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 360,
                    child: Text(
                      'To the Freelancer, I found a team for a project during one i met new cool specialist, and project management has become much faster and simpler',
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Comment detail',
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Container(
                    height: 1.5,
                    width: 100,
                    color: Colors.black87,
                  ),
                ],
              ),
            ),
          ),
          const TestimonialTile(
            image: 'assets/aq1.jpg',
            top: 130,
            left: 780,
            leftAlign: false,
          ),
          const TestimonialTile(
            image: 'assets/aq2.jpg',
            top: 430,
            left: 840,
            leftAlign: false,
          ),
          const TestimonialTile(
            image: 'assets/aq3.jpg',
            top: 480,
            left: 440,
            leftAlign: true,
          ),
          Positioned(
            right: 350,
            top: 200,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Colors.red[600],
                borderRadius: BorderRadius.circular(60),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 20,
                    offset: Offset(0, 10),
                    color: Colors.black12,
                  ),
                ],
              ),
            ),
          ),
          //
          Positioned(
            right: 200,
            top: 250,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(60),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 20,
                    offset: Offset(0, 10),
                    color: Colors.black12,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 250,
            top: 450,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: const Color(0xFF373E98),
                borderRadius: BorderRadius.circular(60),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 20,
                    offset: Offset(0, 10),
                    color: Colors.black12,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
