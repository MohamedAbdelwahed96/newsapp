import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/presentation/widgets/main_widget.dart';
import 'package:newsapp/presentation/widgets/news_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        if(context.locale.languageCode=="en"){
          context.setLocale(Locale("ar"));
        }
        else
          context.setLocale(Locale("en"));
      }, child: Icon(Icons.language),),
      backgroundColor: Colors.white,
        body: Stack(
          children: [
            SingleChildScrollView(
                child: Center(
                  child: Padding(padding: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Column(
                  children: [
                    Image.asset("assets/images/news1.png"),
                    Text("title".tr(), style: TextStyle(
                        fontSize: 18,
                        color: Colors.black)),
                    NewsWidget(),
                    NewsWidget()
                  ],
                ),
              ),
            )),
            MainWidget()
          ],
        ));
  }
}
