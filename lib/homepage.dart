import 'package:flutter/material.dart';
import 'package:sea_lovers_flutter_ui_only/discoverscreen.dart';

class HomePage extends StatelessWidget {
    static String id ="HomeScreen";
    static String testimg ="https://www.impel.eu/wp-content/uploads/2019/08/mediterranean-sea.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue.shade400,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(35),
                      bottomLeft: Radius.circular(35)),
                  image: DecorationImage(
                      image: NetworkImage(
                        testimg,
                      ),
                      fit: BoxFit.cover)),
            ),
          ),
          Expanded(
            flex:6,
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 35, left: 25, bottom: 25, right: 25),
                    child: Container(
                      child: Text(
                        "Beaches\nGuide in Egypt",
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding:EdgeInsets.only(bottom: 25,left:25),
                    child: Container(
                      child: Text("The stunning coastline along the Red Sea is a magnet for sun-worshippers looking for year-round sunshine, whilst the incredible underwater wilds of the reefs attract keen divers from all over the world to sample Egypt’s coastline. Here are the the best beaches in Egypt, so you can discover for yourself the luxury and natural beauty of this amazing country",
                      style: TextStyle(height:1.5),),
                    ),
                    ),
                  Padding(
                    padding:EdgeInsets.all(25),
                    child: Container(
                      height: 50,
                      width: 200,
                      child: RaisedButton(
                        color: Colors.indigo,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        onPressed: (){
                          Navigator.of(context).pushNamed(DiscoverScreen.id);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Let's Go",style: TextStyle(fontSize: 16,color:Colors.white),),
                            Icon(Icons.explore_outlined,color: Colors.white,)
                        ],),
                      ),
                    ) ,)  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
