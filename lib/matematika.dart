import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: matematikapage(),
    ));

class matematikapage extends StatefulWidget {
  const matematikapage({Key? key}) : super(key: key);

  @override
  _matematikapageState createState() => _matematikapageState();
}

final List<String> imageList = [
  "https://images5.alphacoders.com/690/690653.png",
  'https://i0.wp.com/lithiumagazine.com/wp-content/uploads/2020/05/Photo-Credit_-Terrence-Williams-2.jpg?fit=2832%2C4240&ssl=1',
  'https://i.pinimg.com/564x/5a/04/15/5a0415e5bef824127aab06e2861548d1.jpg',
  'https://earmilk.com/wp-content/uploads/2020/09/emily_vu.jpg'
];

class _matematikapageState extends State<matematikapage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 19, 7, 22),
          title: const Text("matematika"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            Card(
                child: ListTile(
                    title: Text("abdurahman omen "),
                    subtitle: Text("matematika 1 "),
                    trailing: Icon(Icons.star))),
            Card(
                child: ListTile(
                    title: Text("killjoy"),
                    subtitle: Text("matematika 2 "),
                    trailing: Icon(Icons.star))),
            Card(
                child: ListTile(
                    title: Text("kamisato ayaka "),
                    subtitle: Text("matematika 3 "),
                    trailing: Icon(Icons.star))),
            Card(
                child: ListTile(
                    title: Text("emily vu ganteng"),
                    subtitle: Text("matematika 4 "),
                    trailing: Icon(Icons.star))),
            Container(
              margin: EdgeInsets.all(15),
              child: CarouselSlider.builder(
                itemCount: imageList.length,
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  height: 300,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  reverse: false,
                  aspectRatio: 5.0,
                ),
                itemBuilder: (context, i, id) {
                  return GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.white,
                          )),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          imageList[i],
                          width: 500,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () {
                      var url = imageList[i];
                      print(url.toString());
                    },
                  );
                },
              ),
            ),
          ],
        ));
  }
}
