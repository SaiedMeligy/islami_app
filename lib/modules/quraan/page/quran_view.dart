import 'package:flutter/material.dart';
import 'package:islamii_app/modules/quraan/page/quran_details_view.dart';
import 'package:islamii_app/modules/quraan/widget/sura_title.dart';

class QuranView extends StatelessWidget {
  List<String> suraName = [
    "الفاتحة",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النور",
    "الفرقان",
    "الشعراء",
    "النمل",
    "القصص",
    "العنكبوت",
    "الروم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصلت",
    "الشورى",
    "الزخرف",
    "الدخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمِّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطففين",
    "الانشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهُمَزَة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Expanded(
          child: Image(
            image: AssetImage('assets/images/quran_header.png'),
            height: MediaQuery.of(context).size.width,
          ),
        ),
        Divider(
          thickness: 2,
          color: theme.primaryColor,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                "عدد الأيات",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "El Mesiri",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 2,
              height: 36,
              color: theme.primaryColor,
            ),
            Expanded(
              child: Text(
                "اسم السورة",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: "El Mesiri"),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Divider(
          thickness: 2,
          color: theme.primaryColor,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, QuranDetailsView.route_name,
                    arguments:
                        QuranDetail(suraName[index], (index + 1).toString()));
              },
              child: SuraTitle(
                  suraName: suraName[index],
                  suraNumber: (index + 1).toString()),
            ),
            itemCount: suraName.length,
          ),
        )
      ],
    );
  }
}

class QuranDetail {
  final String sura_name;
  final String sura_number;

  QuranDetail(this.sura_name, this.sura_number);
}
