import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: fisikapage(),
    ));

class fisikapage extends StatefulWidget {
  const fisikapage({Key? key}) : super(key: key);

  @override
  _fisikapageState createState() => _fisikapageState();
}

final List<String> imageList = [
  "https://thenewnine.com/wp-content/uploads/sites/7/2020/06/Screen-Shot-2020-06-17-at-1.52.14-PM.png",
  'https://meanmusemagazine.com/wp-content/uploads/2020/07/200630_EVJW_L04_0003.jpg',
  'https://lh3.googleusercontent.com/msyEZcGNCR7zI5DhZ0tJ1SaPiO3G2P7R2lI9wjPpTI0okyaqybwOZQDStl-RceQG3VE1zSCOamSQrOGP6W3qKPJ3smdJhyjOBNO19WfuGnYfkFkxA-ligVJ0jelpAPxEI_d82PJT',
  'https://earmilk.com/wp-content/uploads/2020/09/emily_vu.jpg'
];

class _fisikapageState extends State<fisikapage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 19, 7, 22),
          title: const Text("fisika"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            Card(
                child: ListTile(
                    title: Text("guru 1 "),
                    subtitle: Text("fisika 1 "),
                    trailing: Icon(Icons.star))),
            Card(
                child: ListTile(
                    title: Text("guru 2"),
                    subtitle: Text("fisika 2 "),
                    trailing: Icon(Icons.star))),
            Card(
                child: ListTile(
                    title: Text("guru 3"),
                    subtitle: Text("fisika 3 "),
                    trailing: Icon(Icons.star))),
            Card(
                child: ListTile(
                    title: Text("emily vu ganteng"),
                    subtitle: Text("fisika 4 "),
                    trailing: Icon(Icons.star))),
            Container(
              margin: EdgeInsets.all(15),
              child: CarouselSlider.builder(
                itemCount: imageList.length,
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  height: 450,
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
