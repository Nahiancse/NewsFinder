import 'package:flutter/material.dart';
import 'Tvmodel.dart';
import 'WebViewPage.dart';

class Tvs extends StatelessWidget {
  void _handleURLButtonPress(BuildContext context, String name, String link) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewPage(name, link)));
  }

  List<Nmodel> links = [
    Nmodel('ATN News', 'https://www.atnnewstv.com/?app=home'),
    Nmodel('Boishakhi Tv', 'http://www.boishakhionline.com/'),
    Nmodel('Bangla Vision', 'https://www.bvnews24.com/'),
    Nmodel('Channel i', 'https://www.channelionline.com/'),
    Nmodel('Channel 24', 'https://www.channel24bd.tv/'),
    Nmodel('Desh Tv', 'https://desh.tv/'),
    Nmodel('Dipto Tv', 'http://www.deepto.tv/'),
    Nmodel('DBC News', 'https://dbcnews.tv/'),
    Nmodel('Ekushe TV', 'https://www.ekushey-tv.com/'),
    Nmodel('Independent Tv', 'https://www.independent24.com/'),
    Nmodel('Jamuna Tv', 'https://www.jamuna.tv/'),
    Nmodel('Masranga Tv', 'http://maasranga.tv/'),
    Nmodel('MY TV', 'https://mytvbd.tv/'),
    Nmodel('News24', 'https://www.news24bd.tv/'),
    Nmodel('NTV', 'https://www.ntvbd.com/'),
    Nmodel('RTV', 'https://www.rtvonline.com/'),
    Nmodel('SomoyTv', 'https://www.somoynews.tv/'),
    Nmodel('SA Tv', 'https://www.satv.tv/'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text('TV CHANNELS'),
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
