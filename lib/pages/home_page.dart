import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Mi pagina principal"),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 250,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(50)
              ),
              child: Image.network(

                "https://www.wallpapersdsc.net/wp-content/uploads/2016/09/Luffy-Monkey-D.-HD-Wallpaper.jpg"
              ),
            ),
            Container(
              width: 250,
              height: 150,
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 5, top: 25, right: 15, bottom: 10),
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                //color: Colors.black12,
                  borderRadius: BorderRadius.circular(50),
                  gradient: LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.blue,
                        Colors.green
                      ]
                  )
              ),
              child: Text( "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2,
                    //decoration: TextDecoration.underline,
                    decoration: TextDecoration.none,
                    height: 1.5,
                    shadows: [
                      Shadow(
                          color: Colors.blueAccent,
                          offset: Offset(3, 3),
                          blurRadius: 2
                      ),
                      Shadow(
                          color: Colors.black12,
                          offset: Offset(2, 2),
                          blurRadius: 1.5
                      )
                    ]

                ),
              ),
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.agriculture),
        hoverElevation: 5,
        hoverColor: Colors.black,
        autofocus: true,
        focusColor: Colors.red,
        focusElevation: 10,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: Drawer(
        child: Center (
          child: Text("drawerContent")
        )
      ),
      endDrawer: Drawer(
        child: Text("End drawerContent"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add_comment), label: "Chat")
        ],
      ),
    );
  }
}