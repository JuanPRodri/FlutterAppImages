import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImagesExample extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text("EL FUTURO REY DE LOS PIRATAS"),
        )
      ),
      backgroundColor: Colors.lightGreen[100],
      body: Center(
        child: Column(
          children: [
            Text(
              "Monkey D. Luffy God",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
            ),
            Container(
              height: 250,
              width: 300,
              child: Image.network(
                  "https://www.wallpapersdsc.net/wp-content/uploads/2016/09/Luffy-Monkey-D.-HD-Wallpaper.jpg"
              ),
            ),
            Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        width: 150,
                        height: 150,
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          //color: Colors.black12,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              topLeft: Radius.circular(50)
                            ),
                            gradient: LinearGradient(
                                colors: [
                                  Colors.red,
                                  Colors.yellow,
                                  Colors.green
                                ]
                            )
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(top: 15, bottom: 0),
                                alignment: Alignment.center,
                                child: Text("¿Quien es?",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child:  Text( "Es un pirata de 19 años que viaja por el mundo buscando un tesoro llamado el One Piece",
                                    textAlign: TextAlign.center,
                                    maxLines: 5,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.brown,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 2,
                                        shadows: [
                                          Shadow(
                                              color: Colors.black26,
                                              offset: Offset(3, 3),
                                              blurRadius: 2
                                          ),
                                        ]
                                    ),
                                  ),
                                )
                            )
                          ],
                        )
                      ),
                    ),
                    Expanded(
                      child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            //color: Colors.black12,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  topLeft: Radius.circular(50)
                              ),
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.white,
                                    Colors.black,
                                  ]
                              )
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(top: 15, bottom: 0),
                                  alignment: Alignment.center,
                                  child: Text("¿Su Poder?",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.yellowAccent,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: Container(
                                    padding: EdgeInsets.only(bottom: 5),
                                    child:  Text( 'Comio la "Gomu Gomu no mi" una fruta del diablo que lo convirtio en un hombre de goma',
                                      textAlign: TextAlign.center,
                                      maxLines: 5,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.orange,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 2,
                                          shadows: [
                                            Shadow(
                                                color: Colors.black12,
                                                offset: Offset(2, 2),
                                                blurRadius: 1.5
                                            )
                                          ]

                                      ),
                                    ),
                                  )
                              )
                            ],
                          )
                      ),
                    ),
                  ],
                ),
            ),
            Expanded(
                child: Container(
                  width: 250,
                  height: 150,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 5, top: 25, right: 15, bottom: 10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)
                      )
                  ),
                  child: Text( "Su sueño es convertirse en el Rey de los Piratas y aunque todos creen que lo busca es la fama, el poder y la glora; su finalidad es ser la persona mas libe del mundo.",
                    textAlign: TextAlign.justify,
                    maxLines: 6,
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
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
                )
            )
          ],
        )
      ),
      drawer: Drawer(
          child: Center (
              child: Text("drawerContent")
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_boat,),
              label: "Tripulación",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.dangerous,),
            label: "Enemigos"
          )
        ],
      )
    );
  }


}