import 'package:aqua_page/widgets/info_palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pag3 extends StatelessWidget {
  const Pag3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            right: -200,
            child: Container(
              height: 330,
              width: 430,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(300),
              ),
            ),
          ),
          Column(
            children: [
              Text(
                'How it works',
                style: GoogleFonts.nunito(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  InfoPaleTte(
                    text:
                        'Communicate with Colleagues, share ideas, find a team for a project all in one space.',
                    title: 'Community',
                    icon: Icons.people_rounded,
                  ),
                  InfoPaleTte(
                    text:
                        'Track your progress, thanks to the reporting system right inside the platform.',
                    title: 'Overview Reports',
                    icon: Icons.pie_chart_rounded,
                  ),
                  InfoPaleTte(
                    text:
                        'Manage your projects and tasks by tracking activity on the dashboard.',
                    title: 'Dashboard',
                    icon: Icons.person_rounded,
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  primary: Colors.black87,
                  padding: const EdgeInsets.all(0),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 11,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.grey.withOpacity(.5))),
                  child: Text(
                    'Explore more',
                    style: GoogleFonts.nunito(
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class Pag extends StatefulWidget {
//   const Pag3({
//     Key? key,
//     required double pixels,
//     required int animeDuration,
//   })  : _pixels = pixels,
//         _animeDuration = animeDuration,
//         super(key: key);

//   final double _pixels;
//   final int _animeDuration;

//   @override
//   State<Pag3> createState() => _Pag3State();
// }

// class _Pag3State extends State<Pag3> {
//   ScrollController? _controller;
//   double _pixels = 0.0;
//   // final int _animeDuration = 900;

//   @override
//   void initState() {
//     super.initState();
//     _controller = ScrollController();

//     _controller!.addListener(() {
//       setState(() {
//         _pixels = _controller!.position.pixels;
//         // ignore: avoid_print
//         print(_pixels);
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 400,
//       width: double.infinity,
//       color: Colors.white,
//       child: Stack(
//         children: [
//           Positioned(
//             right: -200,
//             child: Container(
//               height: 330,
//               width: 430,
//               decoration: BoxDecoration(
//                 color: Colors.grey[100],
//                 borderRadius: BorderRadius.circular(300),
//               ),
//             ),
//           ),
//           Column(
//             children: [
//               Text(
//                 'How it works',
//                 style: GoogleFonts.nunito(
//                   fontSize: 20,
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//               const SizedBox(
//                 height: 40,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   AnimatedOpacity(
//                     opacity: widget._pixels >= 100 ? 1 : 0,
//                     duration: Duration(microseconds: widget._animeDuration),
//                     child: AnimatedPadding(
//                       duration: Duration(microseconds: widget._animeDuration),
//                       padding: EdgeInsets.only(
//                         left: widget._pixels >= 100 ? 0 : 500,
//                       ),
//                       child: const InfoPaleTte(
//                         text:
//                             'Communicate with Colleagues, share ideas, find a team for a project all in one space.',
//                         title: 'Community',
//                         icon: Icons.people_rounded,
//                       ),
//                     ),
//                   ),
//                   const InfoPaleTte(
//                     text:
//                         'Track your progress, thanks to the reporting system right inside the platform.',
//                     title: 'Overview Reports',
//                     icon: Icons.pie_chart_rounded,
//                   ),
//                   const InfoPaleTte(
//                     text:
//                         'Manage your projects and tasks by tracking activity on the dashboard.',
//                     title: 'Dashboard',
//                     icon: Icons.person_rounded,
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 60,
//               ),
//               TextButton(
//                 onPressed: () {},
//                 style: TextButton.styleFrom(
//                   backgroundColor: Colors.white,
//                   primary: Colors.black87,
//                   padding: const EdgeInsets.all(0),
//                 ),
//                 child: Container(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 30,
//                     vertical: 11,
//                   ),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(40),
//                       border: Border.all(color: Colors.grey.withOpacity(.5))),
//                   child: Text(
//                     'Explore more',
//                     style: GoogleFonts.nunito(
//                       fontSize: 12,
//                       fontWeight: FontWeight.w800,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
