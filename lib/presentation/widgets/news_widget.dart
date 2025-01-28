import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/presentation/screens/details_screen.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen()));},
              child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                child: Image.network("https://www.goodnewsnetwork.org/wp-content/uploads/2021/10/western-Monarchs_Pismo_Beach-California-cc-Steve-Corey-1024x601.jpg",
                fit: BoxFit.cover),
              )),
          SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: InkWell(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen()));},
                    child: Text("overview".tr(),
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    )),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDZVjUagnhyENarq9E7xfoPv2rB3W_ik3WEDv59Oh806hWELWBGT6LmYwUX8_xj8gItRw"),
              ),
              SizedBox(width: 5),
              Text("Andy Corbley".tr()),
              SizedBox(width: 5),
              Icon(Icons.circle, color: Colors.blue,size: 15,)
            ],
          ),
          SizedBox(height: 2),
          Text("description".tr(),
          style: TextStyle(fontSize: 10),maxLines: 3),
          SizedBox(height: 5),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined, color: Colors.orange)),
              IconButton(onPressed: (){}, icon: Icon(Icons.mode_comment_outlined, color: Colors.orange)),
              IconButton(onPressed: (){}, icon: Icon(Icons.share_outlined, color: Colors.orange)),
              Spacer(),
              Text("comments".tr(),style: TextStyle(fontSize: 10)),
              SizedBox(width: 2),
              Icon(Icons.remove_red_eye, size: 14,),
              SizedBox(width: 2),
              Text("views".tr(),style: TextStyle(fontSize: 10))
            ],
          )
        ],
      ),
    );
  }
}
