import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:cakery_app_flutter/widget/navbar_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CakeryDetail extends StatelessWidget {
  final String assetPath;
  final String cookiePrice;
  final String cookieName;

  const CakeryDetail({
    super.key,
    required this.assetPath,
    required this.cookiePrice,
    required this.cookieName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF545D68),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Pilihan',
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 20.0,
            color: Color(0xFF545D68),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: Color(0xFF545D68),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 15.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Kue',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF17532)),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Hero(
              tag: assetPath,
              child: Container(
                height: 250,
                width: 200,
                decoration: BoxDecoration(
                  // border:Border.all(),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(assetPath),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text(
              'Rp ${cookiePrice}',
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF17532),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Center(
            child: Text(
              cookieName,
              style: const TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 24.0,
                  color: Color(0xFF575E67)),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 50.0,
              child: const Text(
                'Bolu atau kue Bolu adalah kue berbahan dasar Tepung,Gula,dan Telur.',
                maxLines: 4,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 16.0,
                  color: Color(0xFFB4B8B9),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 100.0,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Color(0xFFF17532),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      FontAwesomeIcons.whatsapp,
                      size: 30,
                      color: Colors.white70,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Pesan Via Whatsapp',
                      style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFFF17532),
        child: const Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
