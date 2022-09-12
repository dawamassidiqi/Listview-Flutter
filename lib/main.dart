import 'package:flutter/material.dart';

void main() {
  runApp(const Layout());
}

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length : 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "BERITA TERBARU"),
                Tab(text: "PERTANDINGAN HARI INI"),
              ],
            ),
            title: Text('MyApp'),
          ),
          body: TabBarView(
            children: [
              Layout1(key: this.key,),
              Layout1(key: this.key,),
            ],
          ),
        )
      ),
    );
  }
}

class Layout1 extends StatelessWidget {
  const Layout1({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(

          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.purple
                    )
                ),
                child: Column(
                  children: [
                    Container(
                      child:Image(image: AssetImage("images/diego.jpg"),),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(8),
                      child: Text("Costa Berlari", style: TextStyle(fontSize: 24),),
                    ),
                    Container(

                      color: Colors.purpleAccent,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(19),
                      child: Text("Transfer",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1
                    )
                ),
                margin: EdgeInsets.fromLTRB(3, 10, 3, 2),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                          )
                      ),
                      child: Row(
                        children: [
                          Container(
                           height : 130,
                           width: MediaQuery.of(context).size.width / 2,
                            child: Image(
                                image : AssetImage("images/d.jpg"),
                                fit: BoxFit.fitWidth,
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            height: 130,
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            width: (MediaQuery.of(context).size.width / 2) - 12,
                            child:
                            Text("Pique Bilang Wasit Untungkan Madrid, Koeaman Tepok Jidat"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10),
                      child: Text("Barcelona Feb 13, 2021"),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1
                    )
                ),
                margin: EdgeInsets.fromLTRB(3, 10, 3, 2),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                          )
                      ),
                      child: Row(
                        children: [
                          Container(
                            height : 130,
                            width: MediaQuery.of(context).size.width / 2,
                            child: Image(
                              image : AssetImage("images/d.jpg"),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            height: 130,
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            width: (MediaQuery.of(context).size.width / 2) - 12,
                            child:
                            Text("Pique Bilang Wasit Untungkan Madrid, Koeaman Tepok Jidat"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10),
                      child: Text("Barcelona Feb 13, 2021"),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}




