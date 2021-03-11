import 'package:flutter/material.dart';
import 'package:sea_lovers_flutter_ui_only/detailsscreen.dart';

import 'package:sea_lovers_flutter_ui_only/homepage.dart';

class DiscoverScreen extends StatelessWidget {
  static String id = "DiscoverScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black45,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(HomePage.id);
              },
            ),
            title: Text(
              "Discover",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 25),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(HomePage.testimg),
                  radius: 15,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Container(
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "where do you want to go ?",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    )),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Container(
              height: MediaQuery.of(context).size.height * .2,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                children: [
                  Container(
                    child: Row(
                      children: [
                        _buildContent(HomePage.testimg, "Sharm Elshikh"),
                        SizedBox(
                          width: 12,
                        ),
                        _buildContent(HomePage.testimg, "Marsa allam"),
                        SizedBox(
                          width: 12,
                        ),
                        _buildContent(HomePage.testimg, "Matrouh"),
                        SizedBox(
                          width: 12,
                        ),
                        _buildContent(HomePage.testimg, "Alexandria"),
                        SizedBox(
                          width: 12,
                        ),
                        _buildContent(HomePage.testimg, "Hurgada"),
                        SizedBox(
                          width: 12,
                        ),
                        _buildContent(HomePage.testimg, "Ain Sokhna"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Container(
              child: Text(
                "Recommended",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black38,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Container(
                height: MediaQuery.of(context).size.height * .55,
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(DetailsScreen.id);
                      },
                      child: _buildTopTen(
                          "assets/images/mahmya_island10.jpg", 'Mahmya Island'),
                    ),
                    _buildTopTen(
                        "assets/images/soma_bay9.jpg", 'Soma Bay'),
                    _buildTopTen(
                        "assets/images/agiba_beach8.jpg", 'Agiba beach'),
                    _buildTopTen(
                        "assets/images/sharm_el_luli7.jpg", 'Sharm El Luli'),
                    _buildTopTen(
                        "assets/images/sahl_hasheesh_beach6.jpg", 'Sahl Hasheesh beach'),
                    _buildTopTen(
                        "assets/images/el_gouna5.jpg", 'El Gouna'),
                    _buildTopTen(
                        "assets/images/ras_um_sid4.jpg", 'Ras Um Sid'),
                    _buildTopTen(
                        "assets/images/nuweiba3.jpg", 'Nuweiba'),
                    _buildTopTen(
                        "assets/images/ras_abu_galoum2.jpg", "Ras Abu Galoum"),
                    _buildTopTen(
                        "assets/images/fjord_bay_tabas1.jpg", 'Fjord bay'),
                  ],
                )),
          )
        ],
      ),
    );
  }

  Widget _buildTopTen(String img, String title) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
          subtitle: Row(
            children: [
              Icon(Icons.star, size: 14, color: Colors.yellow),
              Icon(Icons.star, size: 14, color: Colors.yellow),
              Icon(Icons.star, size: 14, color: Colors.yellow),
              Icon(Icons.star, size: 14, color: Colors.yellow),
              Icon(Icons.star, size: 14, color: Colors.yellow),
              Text(
                '4.9',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(String img, String name) {
    return Container(
      height: 250,
      width: 250,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          border: Border.all(color: Colors.black12),
          image: DecorationImage(
            image: NetworkImage(img),
            fit: BoxFit.cover,
          )),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          name,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
