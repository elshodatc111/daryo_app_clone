import 'package:daryo_uz_clone/constants/image.dart';
import 'package:daryo_uz_clone/pages/home/comunest_page.dart';
import 'package:daryo_uz_clone/pages/home/general_page.dart';
import 'package:daryo_uz_clone/pages/home/newst_page.dart';
import 'package:daryo_uz_clone/pages/home/top_news.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int curruntPage = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      NewstPage(),
      GeneralPage(),
      TopNews(),
      ComunestPage(),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          Image.asset(AppImage.app_logo),
          const SizedBox(
            width: 120,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: SafeArea(
        child: pages[curruntPage],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curruntPage,
        onTap: (value){
          setState(() {
            curruntPage=value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.tv), label: "Songgi"),
          BottomNavigationBarItem(icon: Icon(Icons.screen_lock_landscape_sharp), label: "Asosoiy"),
          BottomNavigationBarItem(icon: Icon(Icons.hourglass_top_sharp), label: "Top"),
          BottomNavigationBarItem(icon: Icon(Icons.pattern), label: "O'qilganlar"),
        ],
      ),
    );
  }
}
