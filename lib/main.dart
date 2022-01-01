import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.vertical,
      crossAxisCount: 2,
      children: createGallery(50),
      mainAxisSpacing: 5.0,
      crossAxisSpacing: 5.0,
      padding: EdgeInsets.all(5.0),
    );
    ;
  }

  List<Widget> createGallery(int numImages) {
    List<Widget> images = [];
    List<String> urls = [];
    for (int i = 0; i < numImages; i++) {
      urls.add('https://picsum.photos/id/$i/200/300');
    }
    Widget image;
    int i = 0;
    while (i < numImages) {
      image = Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(urls[i]),
        )),
      );
      images.add(image);
      i++;
    }

    return images;
  }
}
