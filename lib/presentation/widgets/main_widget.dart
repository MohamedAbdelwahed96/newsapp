import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/presentation/widgets/tabs_widget.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  bool popAct=true, allAct=false, poliAct=false, techAct=false, healAct=false,sciAct=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.19,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20,right: 20),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.list_outlined), iconSize: 30,
                    color: Color.fromRGBO(44,179,252, 1)),
                Icon(Icons.location_on, size: 20),
                SizedBox(width: 5),
                Text("G.T Road, Kolkata".tr(), style: TextStyle(fontSize: 12, color: Colors.black),),
                Icon(Icons.arrow_drop_down),
                Spacer(),
                Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                        color: Colors.grey.shade300
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      // Spacer(),
                      Text("599",style: TextStyle(fontSize: 12, color: Colors.black)),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.notifications,color: Color.fromRGBO(44,179,252, 1), size: 30)
              ],
            ),
            SizedBox(height: 20),
            SizedBox(height: 49,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(onTap: (){
                    setState(() {
                      popAct=true;
                      allAct=poliAct=techAct=healAct=sciAct=false;
                    });
                  },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: Tabs(name: "Popular".tr(),tab_name: popAct)
                  ),
                  SizedBox(width: 5),
                  InkWell(onTap: (){
                    setState(() {
                      allAct=true;
                      popAct=poliAct=techAct=healAct=sciAct=false;
                    });
                  },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: Tabs(name: "All".tr(),tab_name: allAct)
                  ),
                  SizedBox(width: 5),
                  InkWell(onTap: (){
                    setState(() {
                      poliAct=true;
                      popAct=allAct=techAct=healAct=sciAct=false;
                    });
                  },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: Tabs(name: "Politics".tr(),tab_name: poliAct)
                  ),
                  SizedBox(width: 5),
                  InkWell(onTap: (){
                    setState(() {
                      techAct=true;
                      popAct=allAct=poliAct=healAct=sciAct=false;
                    });
                  },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: Tabs(name: "Tech".tr(),tab_name: techAct)
                  ),
                  InkWell(onTap: (){
                    setState(() {
                      healAct=true;
                      popAct=allAct=techAct=poliAct=sciAct=false;
                    });
                  },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: Tabs(name: "Healthy".tr(),tab_name: healAct)
                  ),
                  SizedBox(width: 5),
                  InkWell(onTap: (){
                    setState(() {
                      sciAct=true;
                      popAct=allAct=techAct=healAct=poliAct=false;
                    });
                  },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: Tabs(name: "Science".tr(),tab_name: sciAct)
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
