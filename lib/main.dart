import 'package:flutter/material.dart';
import 'soccernews.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final contents = [
    "Pique Bilang Wasit Untungkan Madrid, Koeaman Tepok Jidat",
    "Pique Bilang Wasit Untungkan Madrid, Koeaman Tepok Jidat",
    "Pique Bilang Wasit Untungkan Madrid, Koeaman Tepok Jidat",
    "Pique Bilang Wasit Untungkan Madrid, Koeaman Tepok Jidat",
  ];
  final images = [
    "d.jpg",
    "d.jpg",
    "d.jpg",
    "d.jpg",
  ];
  final dates = [
    "Barcelona Feb 13, 2021",
    "Barcelona Feb 13, 2021",
    "Barcelona Feb 13, 2021",
    "Barcelona Feb 13, 2021",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soccer News',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              padding: EdgeInsets.all(1.0),
              tabs: [
                Tab(text: "BERITA TERBARU"),
                Tab(
                  text: "PERTANDINGAN HARI INI",
                )
              ],
            ),
            title: const Text('MyApp'),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  const TopNews(),
                  Expanded(
                    child: ListView.builder(
                      itemCount: contents.length,
                      itemBuilder: (context, index) {
                        return News(index);
                      },
                    ),
                  ),
                ],
              ),
              const Center(
                child: Text("Halaman pertandingan"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container News(int index) {
    return Container(
      width: 50,
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(1),
      color: Colors.blue,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'images/' + images[index].toString(),
                fit: BoxFit.contain,
                height: 110,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 10),
                  margin: const EdgeInsets.all(1),
                  color: Colors.white,
                  height: 110,
                  width: 210,
                  alignment: Alignment.centerLeft,
                  child: Text(contents[index]),
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            color: Colors.white,
            child: Text(
              dates[index],
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
