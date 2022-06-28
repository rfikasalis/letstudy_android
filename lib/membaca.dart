import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: membacapage(),
    ));

class membacapage extends StatefulWidget {
  const membacapage({Key? key}) : super(key: key);

  @override
  _membacapageState createState() => _membacapageState();
}

final List<String> imageList = [
  "https://images5.alphacoders.com/690/690653.png",
  'https://images8.alphacoders.com/114/1149383.jpg',
  'https://images.alphacoders.com/114/1149352.jpg',
  'https://earmilk.com/wp-content/uploads/2020/09/emily_vu.jpg'
];

class _membacapageState extends State<membacapage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 19, 7, 22),
          title: const Text("membaca"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            Card(
                child: ListTile(
                    title: Text("guru 1 "),
                    subtitle: Text("membaca 1 "),
                    trailing: Icon(Icons.star))),
            Card(
                child: ListTile(
                    title: Text("guru 2"),
                    subtitle: Text("membaca 2 "),
                    trailing: Icon(Icons.star))),
            Card(
                child: ListTile(
                    title: Text("guru 3"),
                    subtitle: Text("membaca 3 "),
                    trailing: Icon(Icons.star))),
            Card(
                child: ListTile(
                    title: Text("emily vu ganteng"),
                    subtitle: Text("membaca 4 "),
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
