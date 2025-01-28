import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network("https://www.goodnewsnetwork.org/wp-content/uploads/2021/10/western-Monarchs_Pismo_Beach-California-cc-Steve-Corey-1024x601.jpg",
                fit: BoxFit.fitWidth),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text("overview".tr(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDZVjUagnhyENarq9E7xfoPv2rB3W_ik3WEDv59Oh806hWELWBGT6LmYwUX8_xj8gItRw"),
                      ),
                      SizedBox(width: 5),
                      Text("By Andy Corbley".tr()),
                      Spacer(),
                      Text("1hr ago".tr())
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.mode_comment_outlined),
                      SizedBox(width: 5),
                      Text("comments".tr()),
                      Spacer(),
                      Icon(Icons.favorite_border_outlined),
                      SizedBox(width: 5),
                      Text("likes".tr()),
                      Spacer(),
                      Icon(Icons.share_outlined),
                      SizedBox(width: 5),
                      Text("Share".tr())
                    ],
                  ),
                  SizedBox(height: 15),
                  Text("description".tr()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
