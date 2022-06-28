import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: bahasapage(),
    ));

class bahasapage extends StatefulWidget {
  const bahasapage({Key? key}) : super(key: key);

  @override
  _bahasapageState createState() => _bahasapageState();
}

final List<String> imageList = [
  "https://musicandperspective.files.wordpress.com/2020/08/200630_evjw_l04_0078-e1598306571604.jpg",
  'https://thehiddenhits.files.wordpress.com/2020/05/emily-vu-the-hidden-hits.jpg?w=1200',
  'https://cdns-images.dzcdn.net/images/cover/d03c9b46bb6828b6ad85a346b02bb05e/500x500.jpg',
  'https://earmilk.com/wp-content/uploads/2020/09/emily_vu.jpg'
];

class _bahasapageState extends State<bahasapage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 19, 7, 22),
          title: const Text("bahasa"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            Card(
                child: ListTile(
                    title: Text("bahasa 1 "),
                    subtitle: Text("bahasa 1 "),
                    trailing: Icon(Icons.star))),
            Card(
                child: ListTile(
                    title: Text("guru 2"),
                    subtitle: Text("bahasa 2 "),
                    trailing: Icon(Icons.star))),
            Card(
                child: ListTile(
                    title: Text("guru 3"),
                    subtitle: Text("bahasa 3 "),
                    trailing: Icon(Icons.star))),
            Card(
                child: ListTile(
                    title: Text("emily vu ganteng"),
                    subtitle: Text("bahasa 4 "),
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
