  
import 'package:assembly_election/partlist.dart';
import 'package:flutter/material.dart';
import 'webview.dart';
import 'canditateLogin.dart';
void main() => runApp(QuickBee());

class QuickBee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Set Raleway as the default app font
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),

      home: MyHomePage(), 
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // new Stack(
            //   alignment: Alignment.center,
            //   children: <Widget>[
            //     new Container(
            //       child: new Image(
            //           image: new AssetImage('./images/3.png'),
            //            fit: BoxFit.cover,
            //       ),
            //     ),
            //   ],
            // ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 80.0),
                  child: new Text(
                    "204 Maval-iVOTE",
                    style: new TextStyle(fontSize: 30.0),
                    
                  ),
                )

                  ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0),
                    child: GestureDetector(
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(
                           builder: (context) => CandidateLogin(),
                         ));
                      },
                      child: new Container(
                          alignment: Alignment.center,
                          height: 60.0,
                          decoration: new BoxDecoration(
                              color: Color(0xff01A0C7),
                              borderRadius: new BorderRadius.circular(9.0)),
                          child: new Text("Candidate(Admin)",
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.white))),
                    ),
                  ),
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0),

                       child: GestureDetector(
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(
                           builder: (context) => AboutElection(),
                         ));
                      },
                      child: new Container(
                          alignment: Alignment.center,
                          height: 60.0,
                          decoration: new BoxDecoration(
                              color: Color(0xFFDF513B),
                              borderRadius: new BorderRadius.circular(9.0)),
                          child: new Text("About Election",
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.white))),
                    ),
                  ),
                ),
                // Expanded(
                //   child: Padding(
                //     padding: const EdgeInsets.only(
                //         left: 10.0, right: 20.0, top: 10.0),
                //     child: new Container(
                //         alignment: Alignment.center,
                //         height: 60.0,
                //         decoration: new BoxDecoration(
                //             color: Color(0xFFDF513B),
                //             borderRadius: new BorderRadius.circular(9.0)),
                //         child: new Text("About Election",
                //             style: new TextStyle(
                //                 fontSize: 20.0, color: Colors.white))),
                //   ),
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}
