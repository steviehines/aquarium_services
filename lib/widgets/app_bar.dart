import 'package:aqua_page/widgets/appbar_nav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApbAr extends StatelessWidget {
  const ApbAr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 69,
      width: MediaQuery.of(context).size.width,
      color: const Color.fromARGB(127, 41, 152, 167),
      child: Row(
        children: [
          const SizedBox(
            width: 100,
          ),
          const Icon(
            Icons.favorite_rounded,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            'Freelancer',
            style: GoogleFonts.nunito(
              color: Colors.white,
              fontSize: 19,
            ),
          ),
          const SizedBox(
            width: 210,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              HeadrButtonz(
                selected: true,
                text: 'Home',
              ),
              SizedBox(
                width: 40,
              ),
              HeadrButtonz(
                selected: false,
                text: 'Find a Team',
              ),
              SizedBox(
                width: 40,
              ),
              HeadrButtonz(
                selected: false,
                text: 'Publish a Project',
              ),
              SizedBox(
                width: 40,
              ),
              HeadrButtonz(
                selected: false,
                text: 'About',
              ),
            ],
          ),
          Flex(direction: Axis.horizontal),
          // const SizedBox(
          //   width: 210,
          // ),
          Row(
            children: [
              Text(
                'Sign Up',
                style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 1,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Log In',
                style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 69,
          ),
        ],
      ),
    );
  }
}
