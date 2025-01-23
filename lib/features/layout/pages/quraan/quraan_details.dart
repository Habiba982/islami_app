import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_app/core/constant/app_assets.dart';
import 'package:new_app/core/theme/app_colors.dart';
import 'package:new_app/models/sura_data.dart';

class QuraanDetails extends StatefulWidget {
  static const String routeName = "/QuraanDetails";

  const QuraanDetails({super.key});

  @override
  _QuraanDetailsState createState() => _QuraanDetailsState();
}

class _QuraanDetailsState extends State<QuraanDetails>{

  List<String> versesList=[];
  @override
  Widget build(BuildContext context) {
    var arguments= ModalRoute.of(context)?.settings.arguments as SuraData;
    if(versesList.isEmpty)
    loadData(arguments.id.toString());

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
       image:  AssetImage(AppAssets.QuraanDetilsScreen,),
           fit: BoxFit.fill,
      ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: AppColors.primaryColor,
          ),
          title: Text(
            arguments.suraNameEN,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
              fontFamily: "Janna",
            ),
          ),
        ),
        body: Column (
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(padding: const EdgeInsets.only(
              top: 30.0,
              bottom: 50.0,
            ),
          child: Text(
            arguments.suraNameAR,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
              fontFamily: "Janna",
            ),
          ),
        ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index)=>
                  Text(
                    "[${index+1}] ${versesList[index]}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Janna",
                  color: AppColors.primaryColor,
                ),
              ),
                itemCount: versesList.length,
              ),
            ),
    ],
      ),
      ),
    );
  }
  void loadData(String suraID) async{
    String content = await rootBundle.loadString("assets/suras/$suraID.txt");
    setState((){
      versesList =content.split("\n");
    });
  }
}

