import 'package:flutter/material.dart';
import 'package:new_app/core/constant/app_assets.dart';
import 'package:new_app/core/constant/servecies/local_storage_key.dart';
import 'package:new_app/core/constant/servecies/local_storage_service.dart';
import 'package:new_app/core/theme/app_colors.dart';
import 'package:new_app/features/layout/pages/quraan/quraan_details.dart';
import 'package:new_app/features/layout/pages/quraan/widget/recently.dart';
import 'package:new_app/features/layout/pages/quraan/widget/sura_widget.dart';
import 'package:new_app/models/sura_data.dart';

class QuraanScreen extends StatefulWidget {
  const QuraanScreen({super.key});

  @override
  State<QuraanScreen> createState() => _QuraanScreenState();
}

class _QuraanScreenState extends State<QuraanScreen> {
  @override
  void initState() {
    super.initState();
    _loadRecentSura();
  }

  List<SuraData> recentlyData = [];
  List<String> recentSuraIndexList = [];

  List<SuraData> suraList = [
  SuraData(id: 1, suraNameEN: "Al-Fatiha", suraNameAR: "الفاتحه", verses: 7),
  SuraData(id: 2, suraNameEN: "Al-Baqarah", suraNameAR: "البقرة", verses: 286),
  SuraData(id: 3, suraNameEN: "Aal-E-Imran", suraNameAR: "آل عمران", verses: 200),
  SuraData(id: 4, suraNameEN: "An-Nisa'", suraNameAR: "النساء", verses: 176),
  SuraData(id: 5, suraNameEN: "Al-Ma'idah", suraNameAR: "المائدة", verses: 120),
  SuraData(id: 6, suraNameEN: "Al-An'am", suraNameAR: "الأنعام", verses: 165),
  SuraData(id: 7, suraNameEN: "Al-A'raf", suraNameAR: "الأعراف", verses: 206),
  SuraData(id: 8, suraNameEN: "Al-Anfal", suraNameAR: "الأنفال", verses: 75),
  SuraData(id: 9, suraNameEN: "At-Tawbah", suraNameAR: "التوبة", verses: 129),
  SuraData(id: 10, suraNameEN: "Yunus", suraNameAR: "يونس", verses: 109),
  SuraData(id: 11, suraNameEN: "Hud", suraNameAR: "هود", verses: 123),
  SuraData(id: 12, suraNameEN: "Yusuf", suraNameAR: "يوسف", verses: 111),
  SuraData(id: 13, suraNameEN: "Ar-Ra'd", suraNameAR: "الرعد", verses: 43),
  SuraData(id: 14, suraNameEN: "Ibrahim", suraNameAR: "إبراهيم", verses: 52),
  SuraData(id: 15, suraNameEN: "Al-Hijr", suraNameAR: "الحجر", verses: 99),
  SuraData(id: 16, suraNameEN: "An-Nahl", suraNameAR: "النحل", verses: 128),
  SuraData(id: 17, suraNameEN: "Al-Isra", suraNameAR: "الإسراء", verses: 111),
  SuraData(id: 18, suraNameEN: "Al-Kahf", suraNameAR: "الكهف", verses: 110),
  SuraData(id: 19, suraNameEN: "Maryam", suraNameAR: "مريم", verses: 98),
  SuraData(id: 20, suraNameEN: "Ta-Ha", suraNameAR: "طه", verses: 135),
  SuraData(id: 21, suraNameEN: "Al-Anbiya", suraNameAR: "الأنبياء", verses: 112),
  SuraData(id: 22, suraNameEN: "Al-Hajj", suraNameAR: "الحج", verses: 78),
  SuraData(id: 23, suraNameEN: "Al-Mu'minun", suraNameAR: "المؤمنون", verses: 118),
  SuraData(id: 24, suraNameEN: "An-Nur", suraNameAR: "النّور", verses: 64),
  SuraData(id: 25, suraNameEN: "Al-Furqan", suraNameAR: "الفرقان", verses: 77),
  SuraData(id: 26, suraNameEN: "Ash-Shu'ara", suraNameAR: "الشعراء", verses: 227),
  SuraData(id: 27, suraNameEN: "An-Naml", suraNameAR: "النّمل", verses: 93),
  SuraData(id: 28, suraNameEN: "Al-Qasas", suraNameAR: "القصص", verses: 88),
  SuraData(id: 29, suraNameEN: "Al-Ankabut", suraNameAR: "العنكبوت", verses: 69),
  SuraData(id: 30, suraNameEN: "Ar-Rum", suraNameAR: "الرّوم", verses: 60),
  SuraData(id: 31, suraNameEN: "Luqman", suraNameAR: "لقمان", verses: 34),
  SuraData(id: 32, suraNameEN: "As-Sajda", suraNameAR: "السجدة", verses: 30),
  SuraData(id: 33, suraNameEN: "Al-Ahzab", suraNameAR: "الأحزاب", verses: 73),
  SuraData(id: 34, suraNameEN: "Saba", suraNameAR: "سبأ", verses: 54),
  SuraData(id: 35, suraNameEN: "Fatir", suraNameAR: "فاطر", verses: 45),
  SuraData(id: 36, suraNameEN: "Ya-Sin", suraNameAR: "يس", verses: 83),
  SuraData(id: 37, suraNameEN: "As-Saffat", suraNameAR: "الصافات", verses: 182),
  SuraData(id: 38, suraNameEN: "Sad", suraNameAR: "ص", verses: 88),
  SuraData(id: 39, suraNameEN: "Az-Zumar", suraNameAR: "الزمر", verses: 75),
  SuraData(id: 40, suraNameEN: "Ghafir", suraNameAR: "غافر", verses: 85),
  SuraData(id: 41, suraNameEN: "Fussilat", suraNameAR: "فصّلت", verses: 54),
  SuraData(id: 42, suraNameEN: "Ash-Shura", suraNameAR: "الشورى", verses: 53),
  SuraData(id: 43, suraNameEN: "Az-Zukhruf", suraNameAR: "الزخرف", verses: 89),
  SuraData(id: 44, suraNameEN: "Ad-Dukhan", suraNameAR: "الدّخان", verses: 59),
  SuraData(id: 45, suraNameEN: "Al-Jathiya", suraNameAR: "الجاثية", verses: 37),
  SuraData(id: 46, suraNameEN: "Al-Ahqaf", suraNameAR: "الأحقاف", verses: 35),
  SuraData(id: 47, suraNameEN: "Muhammad", suraNameAR: "محمد", verses: 38),
  SuraData(id: 48, suraNameEN: "Al-Fath", suraNameAR: "الفتح", verses: 29),
  SuraData(id: 49, suraNameEN: "Al-Hujurat", suraNameAR: "الحجرات", verses: 18),
  SuraData(id: 50, suraNameEN: "Qaf", suraNameAR: "ق", verses: 45),
  SuraData(id: 51, suraNameEN: "Adh-Dhariyat", suraNameAR: "الذاريات", verses: 60),
  SuraData(id: 52, suraNameEN: "At-Tur", suraNameAR: "الطور", verses: 49),
  SuraData(id: 53, suraNameEN: "An-Najm", suraNameAR: "النجم", verses: 62),
  SuraData(id: 54, suraNameEN: "Al-Qamar", suraNameAR: "القمر", verses: 55),
  SuraData(id: 55, suraNameEN: "Ar-Rahman", suraNameAR: "الرحمن", verses: 78),
  SuraData(id: 56, suraNameEN: "Al-Waqi'a", suraNameAR: "الواقعة", verses: 96),
  SuraData(id: 57, suraNameEN: "Al-Hadid", suraNameAR: "الحديد", verses: 29),
  SuraData(id: 58, suraNameEN: "Al-Mujadila", suraNameAR: "المجادلة", verses: 22),
  SuraData(id: 59, suraNameEN: "Al-Hashr", suraNameAR: "الحشر", verses: 24),
  SuraData(id: 60, suraNameEN: "Al-Mumtahina", suraNameAR: "الممتحنة", verses: 13),
  SuraData(id: 61, suraNameEN: "As-Saff", suraNameAR: "الصف", verses: 14),
  SuraData(id: 62, suraNameEN: "Al-Jumu'a", suraNameAR: "الجمعة", verses: 11),
  SuraData(id: 63, suraNameEN: "Al-Munafiqun", suraNameAR: "المنافقون", verses: 11),
  SuraData(id: 64, suraNameEN: "At-Taghabun", suraNameAR: "التغابن", verses: 18),
  SuraData(id: 65, suraNameEN: "At-Talaq", suraNameAR: "الطلاق", verses: 12),
  SuraData(id: 66, suraNameEN: "At-Tahrim", suraNameAR: "التحريم", verses: 12),
  SuraData(id: 67, suraNameEN: "Al-Mulk", suraNameAR: "الملك", verses: 30),
  SuraData(id: 68, suraNameEN: "Al-Qalam", suraNameAR: "القلم", verses: 52),
  SuraData(id: 69, suraNameEN: "Al-Haqqah", suraNameAR: "الحاقة", verses: 52),
  SuraData(id: 70, suraNameEN: "Al-Ma'arij", suraNameAR: "المعارج", verses: 44),
  SuraData(id: 71, suraNameEN: "Nuh", suraNameAR: "نوح", verses: 28),
  SuraData(id: 72, suraNameEN: "Al-Jinn", suraNameAR: "الجن", verses: 28),
  SuraData(id: 73, suraNameEN: "Al-Muzzammil", suraNameAR: "المزّمّل", verses: 20),
  SuraData(id: 74, suraNameEN: "Al-Muddathir", suraNameAR: "المدّثر", verses: 56),
  SuraData(id: 75, suraNameEN: "Al-Qiyamah", suraNameAR: "القيامة", verses: 40),
  SuraData(id: 76, suraNameEN: "Al-Insan", suraNameAR: "الإنسان", verses: 31),
  SuraData(id: 77, suraNameEN: "Al-Mursalat", suraNameAR: "المرسلات", verses: 50),
  SuraData(id: 78, suraNameEN: "An-Naba'", suraNameAR: "النبأ", verses: 40),
  SuraData(id: 79, suraNameEN: "An-Nazi'at", suraNameAR: "النازعات", verses: 46),
  SuraData(id: 80, suraNameEN: "Abasa", suraNameAR: "عبس", verses: 42),
  SuraData(id: 81, suraNameEN: "At-Takwir", suraNameAR: "التكوير", verses: 29),
  SuraData(id: 82, suraNameEN: "Al-Infitar", suraNameAR: "الإنفطار", verses: 19),
  SuraData(id: 83, suraNameEN: "Al-Mutaffifin", suraNameAR: "المطفّفين", verses: 36),
  SuraData(id: 84, suraNameEN: "Al-Inshiqaq", suraNameAR: "الإنشقاق", verses: 25),
  SuraData(id: 85, suraNameEN: "Al-Buruj", suraNameAR: "البروج", verses: 22),
  SuraData(id: 86, suraNameEN: "At-Tariq", suraNameAR: "الطارق", verses: 17),
  SuraData(id: 87, suraNameEN: "Al-A'la", suraNameAR: "الأعلى", verses: 19),
  SuraData(id: 88, suraNameEN: "Al-Ghashiyah", suraNameAR: "الغاشية", verses: 26),
  SuraData(id: 89, suraNameEN: "Al-Fajr", suraNameAR: "الفجر", verses: 30),
  SuraData(id: 90, suraNameEN: "Al-Balad", suraNameAR: "البلد", verses: 20),
  SuraData(id: 91, suraNameEN: "Ash-Shams", suraNameAR: "الشمس", verses: 15),
  SuraData(id: 92, suraNameEN: "Al-Lail", suraNameAR: "الليل", verses: 21),
  SuraData(id: 93, suraNameEN: "Ad-Duha", suraNameAR: "الضحى", verses: 11),
  SuraData(id: 94, suraNameEN: "Ash-Sharh", suraNameAR: "الشرح", verses: 8),
  SuraData(id: 95, suraNameEN: "At-Tin", suraNameAR: "التين", verses: 8),
  SuraData(id: 96, suraNameEN: "Al-Alaq", suraNameAR: "العلق", verses: 19),
  SuraData(id: 97, suraNameEN: "Al-Qadr", suraNameAR: "القدر", verses: 5),
    SuraData(id: 98, suraNameEN: "Al-Bayyina", suraNameAR: "البينة", verses: 8),
    SuraData(id: 99, suraNameEN: "Az-Zalzalah", suraNameAR: "الزلزلة", verses: 8),
    SuraData(id: 100, suraNameEN: "Al-Adiyat", suraNameAR: "العاديات", verses: 11),
    SuraData(id: 101, suraNameEN: "Al-Qari'ah", suraNameAR: "القارعة", verses: 11),
    SuraData(id: 102, suraNameEN: "At-Takathur", suraNameAR: "التكاثر", verses: 8),
    SuraData(id: 103, suraNameEN: "Al-Asr", suraNameAR: "العصر", verses: 3),
    SuraData(id: 104, suraNameEN: "Al-Humazah", suraNameAR: "الهمزة", verses: 9),
    SuraData(id: 105, suraNameEN: "Al-Fil", suraNameAR: "الفيل", verses: 5),
    SuraData(id: 106, suraNameEN: "Quraish", suraNameAR: "قريش", verses: 4),
    SuraData(id: 107, suraNameEN: "Al-Ma'un", suraNameAR: "الماعون", verses: 7),
    SuraData(id: 108, suraNameEN: "Al-Kawthar", suraNameAR: "الكوثر", verses: 3),
    SuraData(id: 109, suraNameEN: "Al-Kafiroon", suraNameAR: "الكافرون", verses: 6),
    SuraData(id: 110, suraNameEN: "An-Nasr", suraNameAR: "النصر", verses: 3),
    SuraData(id: 111, suraNameEN: "Al-Masad", suraNameAR: "المسد", verses: 5),
    SuraData(id: 112, suraNameEN: "Al-Ikhlas", suraNameAR: "الإخلاص", verses: 4),
    SuraData(id: 113, suraNameEN: "Al-Falaq", suraNameAR: "الفلق", verses: 5),
    SuraData(id: 114, suraNameEN: "An-Nas", suraNameAR: "الناس", verses: 6),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            AppAssets.QuraanBG,
          ),
        ),
      ),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                AppAssets.fullLogo,
                height: size.height * 0.20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  cursorColor: AppColors.primaryColor,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: "Janna",
                    color: AppColors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: "Sura Name",
                    hintStyle: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Janna"),
                    fillColor: AppColors.secondaryColor.withOpacity(0.6),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    prefixIcon: ImageIcon(
                      AssetImage(AppAssets.quraanIcon),
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                child: Text(
                  "Most Recently",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Janna",
                    color: AppColors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 155,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(
                    horizontal: 13,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => MostRecently(
                    recentlyData: recentlyData[index],
                  ),
                  itemCount: recentlyData.length,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 4.0),
                child: Text(
                  "Sura List",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Janna",
                    color: AppColors.white,
                  ),
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(top: 0),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => _onSuraTab(index),
                  child: SuraWidget(
                    suraData: suraList[index],
                  ),
                ),
                separatorBuilder: (context, index) => Divider(
                  endIndent: 70,
                  indent: 70,
                ),
                itemCount: suraList.length,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _onSuraTab(int index) {
    recentSuraIndexList.add(index.toString());
    LocalStorageService.setList(
      LocalStorageKey.recentSura,
      recentSuraIndexList,
    );

    Navigator.of(context).pushNamed(
      QuraanDetails.routeName,
      arguments: suraList[index],
    );
  }

  _loadRecentSura() {
    recentSuraIndexList =
        LocalStorageService.getStringList(LocalStorageKey.recentSura) ?? [];

    for (var index in recentSuraIndexList) {
      var indexInt = int.parse(index);
      recentlyData.add(suraList[indexInt]);
    }
    setState(() {});
  }
}
