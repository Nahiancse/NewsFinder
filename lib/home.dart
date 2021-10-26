import 'package:flutter/material.dart';
import 'package:web_view/TvlistScreen.dart';
import 'package:web_view/paperListScreen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children:
        [
           Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/back.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          // use any child here
          child: null
        ),



         Center(  
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [


          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Tvs();
              }));
            },
            child: Container(  
              width: 300,  
              height: 200,  
              padding: new EdgeInsets.all(10.0),  
              child: Card(  
                shape: RoundedRectangleBorder(  
                  borderRadius: BorderRadius.circular(15.0),  
                ),  
                color: Colors.black,  
                elevation: 10,  
                child: Column(  
                  mainAxisAlignment: MainAxisAlignment.center,  
                  children: <Widget>[  
                    Icon(Icons.tv,size: 90,color: Colors.white,),
                    Divider(color:Colors.white,thickness: 5,),
                    Text('TV Channels',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
                    
                    
                  ],  
                ),  
              ),  
            ),
          ),


          GestureDetector(
            onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context){
                return Papers();
              }));

            },
            child: Container(  
              width: 300,  
              height: 200,  
              padding: new EdgeInsets.all(10.0),  
              child: Card(  
                shape: RoundedRectangleBorder(  
                  borderRadius: BorderRadius.circular(15.0),  
                ),  
                color: Colors.black,  
                elevation: 10,  
                child: Column(  
                  mainAxisAlignment: MainAxisAlignment.center,  
                  children: <Widget>[  
                    Icon(Icons.auto_stories_sharp,size: 90,color: Colors.white,),
                    Divider(color:Colors.white,thickness: 5,),
                    Text('News Papers',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)
                    
                    
                  ],  
                ),  
              ),  
            ),
          ),




          
        ],
      )  
    ),
    
        ]
      )
      );
  }
}