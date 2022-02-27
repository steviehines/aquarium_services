import 'package:aqua_page/widgets/profile_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pag4 extends StatelessWidget {
  const Pag4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sizE = MediaQuery.of(context).size;

    return Container(
      //?pg
      width: sizE.width,
      height: 500,
      color: Colors.white,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: -250,
            child: Container(
              width: 700,
              height: 450,
              decoration: BoxDecoration(
                color: Colors.amber[400],
                borderRadius: BorderRadius.circular(400),
              ),
            ),
          ),
          Positioned(
            left: 33,
            top: 25,
            child: Container(
              width: 700,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset(
                'assets/aq5.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const ProfileTile(
            top: -10,
            left: 80,
            factor: 1,
            title: 'Sara, Client',
            subtitle: 'Send a final design to the team',
          ),
          const ProfileTile(
            top: 400,
            left: 620,
            factor: 1,
            title: 'Michael',
            subtitle: 'Publish your project whenever you want',
          ),
          Positioned(
            right: 121,
            top: 121,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Easy Project Management',
                  style: GoogleFonts.nunito(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 280,
                  child: Text(
                    'Manage your project, Organise your own workspace, keep statistics and collaborate with your teammates in one place.',
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    backgroundColor: Colors.grey[900],
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 20,
                    ),
                  ),
                  child: Text(
                    'Try for free',
                    style: GoogleFonts.nunito(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
