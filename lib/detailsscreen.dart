import 'package:flutter/material.dart';
import 'package:sea_lovers_flutter_ui_only/discoverscreen.dart';

class DetailsScreen extends StatelessWidget {
  static String id = "DetailsScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/mahmya_island10.jpg"),
                      fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: 25, top: 50, left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 1),
                    child: SizedBox(
                      width: 10,
                      height: 10,
                      child: OverflowBox(
                        minWidth: 0,
                        maxWidth: 430,
                        minHeight: 0,
                        maxHeight: 100,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(60),
                                  topRight: Radius.circular(60)),
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.only(right: 25, left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mahmya Beach",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  ListTile(
                    leading: Icon(Icons.location_on_outlined),
                    title: Text("El Gifton Island"),
                    subtitle: Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow, size: 12),
                        Icon(Icons.star, color: Colors.yellow, size: 12),
                        Icon(Icons.star, color: Colors.yellow, size: 12),
                        Icon(Icons.star, color: Colors.yellow, size: 12),
                        Icon(Icons.star, color: Colors.yellow, size: 12),
                        Text("5.0")
                      ],
                    ),
                  ),
                  Text(
                    "Description",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                      "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects\n\,"),
                  Text(
                      'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects,'),
                  SizedBox(height: 25),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 180,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(DiscoverScreen.id);
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        color: Colors.indigo[400],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Explore more ",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white70,
                              ),
                            ),
                            Icon(Icons.explore, color: Colors.white70)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
