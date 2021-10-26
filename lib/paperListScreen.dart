import 'package:flutter/material.dart';
import 'Tvmodel.dart';
import 'WebViewPage.dart';

class Papers extends StatelessWidget {
  void _handleURLButtonPress(BuildContext context, String name, String link) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewPage(name, link)));
  }

  List<Nmodel> links = [
    Nmodel('Prothom Alo', 'https://www.prothomalo.com/'),
    Nmodel('Kaler Kantho', 'https://www.kalerkantho.com/'),
    Nmodel('Jugantor', 'https://www.jugantor.com/'),
    Nmodel('Bangladesh Protidin', 'https://www.bd-pratidin.com/'),
    Nmodel('Shomokal', 'https://samakal.com/'),
    Nmodel('Ittefaq', 'https://www.ittefaq.com.bd/'),
    Nmodel('Naya Diganta', 'https://dailynayadiganta.com/'),
    Nmodel('Manab Jamin', 'https://mzamin.com/'),
    Nmodel('Amader Shomoy', 'https://www.dainikamadershomoy.com/'),
    Nmodel('Jai Jai din', 'https://www.jaijaidinbd.com/'),
    Nmodel('Jana Kantha', 'https://www.dailyjanakantha.com/'),
    Nmodel('Inqilab', 'https://www.dailyinqilab.com/'),
    Nmodel('Daily Star', 'https://www.thedailystar.net/'),
    Nmodel('The Business Standard', 'https://www.tbsnews.net/'),
    Nmodel('Dhaka Tribune', 'https://www.dhakatribune.com/'),
    Nmodel('Bhorer Pata', 'https://dailyvorerpata.com/'),
    Nmodel('Amader Orthoniti', 'https://amaderorthoneeti.com/new/'),
    Nmodel('Bd News 24', 'https://bdnews24.com/'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text('News Papers'),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: links.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                 onTap:() {
                  _handleURLButtonPress(
                      context, links[index].name,links[index].link);
                },
                child: Container(
              margin: EdgeInsets.all(10),
                  height: 40,
                  width: double.infinity,
                  child: Card(
                    
                    shadowColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.black,
                    elevation: 5,
                    child: Column(
                      
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          links[index].name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              );

              //  ListTile(
              //   onTap:() {
              //     _handleURLButtonPress(
              //         context, links[index].name,links[index].link);
              //   },

              //   title: Text(links[index].name),

              // );
            }),
      ),
    );
  }
}
