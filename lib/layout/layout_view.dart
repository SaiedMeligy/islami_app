import 'package:flutter/material.dart';
import 'package:islamii_app/modules/hadeth/page/hadeth_view.dart';
import 'package:islamii_app/modules/quraan/page/quran_view.dart';
import 'package:islamii_app/modules/rdaio/page/radio_view.dart';
import 'package:islamii_app/modules/sepha/page/sepha_view.dart';
import 'package:islamii_app/modules/settings/page/setting_view.dart';

class LayoutScreen extends StatefulWidget {
  LayoutScreen({super.key});

  static const route_name = 'Layout Screen';

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 4;
  List<Widget> Screens = [
    SettingView(),
    RadioView(),
    SebhaView(),
    HadethView(),
    QuranView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/main.bg.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text('إسلامي'),
        ),
        body: Screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'الأعدادات'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: 'الراديو'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: 'التسبيح'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/hadeth.png')),
                label: 'الحديث'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/quraan.png')),
                label: 'القرأن'),
          ],
        ),
      ),
    );
  }
}
