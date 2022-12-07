import 'package:flutter/material.dart';

class UIONE extends StatelessWidget {
  const UIONE({Key? key}) : super(key: key);
  final String _title = 'Find Your';
  final String _1Title = 'Sport';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRGBO.Rgbo,
      appBar: AppBar(
        backgroundColor: ColorsUI.white,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors87.black87,
            ),
            onPressed: () {}),
      ),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: ColorsUI.white,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30))),
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  _title,
                  style: TextStyle(color: Colors87.black87, fontSize: 25),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  _1Title,
                  style: TextStyle(color: Colors.black, fontSize: 40),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: ColorRGBO.Rgbo,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors87.black87,
                        ),
                        hintText: 'Search you re looking for',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Most Popular',
                  style: TextStyle(fontSize: 1, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      PopularCard('images/1.jpg'),
                      PopularCard('images/2.jpg'),
                      PopularCard('images/3.jpg'),
                      PopularCard('images/4.jpg'),
                      PopularCard('images/5.jpg'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        stops: [
                          0.3,
                          0.9
                        ],
                        colors: [
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.2)
                        ]),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'Best Sport',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class ColorsUI {
  static Color white = Colors.white;
}

class Colors87 {
  static Color black87 = Colors.black87;
}

class ColorRGBO {
  static Color Rgbo = Color.fromRGBO(224, 243, 243, 1);
}

Widget PopularCard(image) {
  return AspectRatio(
    aspectRatio: 2.6 / 3,
    child: Container(
      margin: EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [])),
      ),
    ),
  );
}
