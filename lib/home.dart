import 'package:aqua_page/widgets/app_bar.dart';
import 'package:flutter/material.dart';

import 'pages/pag2.dart';
import 'pages/pag3.dart';
import 'pages/pag4.dart';
import 'pages/pag5.dart';
import 'pages/pag6.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeStat createState() => _HomeStat();
}

class _HomeStat extends State<Home> {
  ScrollController? _controller;
  double _pixels = 0.0;
  final int _animeDuration = 900;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();

    _controller!.addListener(() {
      setState(() {
        _pixels = _controller!.position.pixels;
        // ignore: avoid_print
        print(_pixels);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var sizE = MediaQuery.of(context).size;

    return SizedBox(
      height: sizE.height,
      width: double.infinity,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: const ApbAr(),
              backgroundColor: Colors.white,
              expandedHeight: 555.5,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset('assets/aq8.jpg', fit: BoxFit.cover),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                const [
                  Pag2(),
                  Pag3(),
                  Pag4(),
                  Pag5(),
                  Pag6(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
