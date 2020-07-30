import 'package:flutter/material.dart';

class PageDisc extends StatefulWidget {
  @override
  _PageDiscState createState() => _PageDiscState();
}

class _PageDiscState extends State<PageDisc> {
  bool _switchVal = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 1.1,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("images/tof.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          "Devenir Full S...",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      // Container(
                      //   height: 50,
                      //   width: 100,
                      //   padding: EdgeInsets.all(5),
                      //   alignment: Alignment.centerRight,
                      //   decoration: BoxDecoration(
                      //     color: Colors.green,
                      //     borderRadius: BorderRadius.circular(30),
                      //   ),
                      //   child: Container(
                      //       height: 40,
                      //       width: 40,
                      //       alignment: Alignment.center,
                      //       decoration: BoxDecoration(
                      //           shape: BoxShape.circle, color: Colors.white),
                      //       child: Icon(
                      //         Icons.check,
                      //         size: 30,
                      //         color: Colors.green,
                      //       )),
                      // ),
                      Switch(
                        activeColor: Color.fromRGBO(90, 203, 141, 1),
                        inactiveTrackColor: Colors.grey,
                        onChanged: (bool value) {
                          setState(() {
                            return this._switchVal = value;
                          });
                        },
                        value: this._switchVal,
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color.fromRGBO(252, 143, 148, 1),
                                    Color.fromRGBO(251, 106, 135, 1)
                                  ]),
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "30\$/h",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 50,
                            width: 60,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(254, 229, 233, 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "Flutter",
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(width: 1, color: Colors.grey),
                        ),
                        child: Container(
                            child: Text(
                          "Modifier",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
