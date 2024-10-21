import 'package:flutter/material.dart';
import 'package:wallpaper_app/widgets/images_widgets.dart';
import 'package:wallpaper_app/widgets/search_widget.dart';

class FavPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                        Navigator.pop(context);
                        },
                        child:   Icon(
                          Icons.arrow_back,
                          size: 30,
                        ),
                      ),
                      Text(
                        "Favourites",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, "favPage");
                        },
                        child: Icon(
                          Icons.favorite,
                          size: 30,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Your Favourites:",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Flexible(child: ImageWidgit())

              ],
            )
        )
    );
  }
}
