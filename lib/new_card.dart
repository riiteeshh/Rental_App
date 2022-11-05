import 'package:flutter/material.dart';
import './new_entry.dart';

class MyCard extends StatefulWidget {
  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  bool _fav = false;
  int _fav_count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 1,
      margin: EdgeInsets.only(top: 120),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) {
          return Container(
            width: double.infinity,
            height: 260,
            margin: EdgeInsets.all(10),
            child: Card(
              shadowColor: Colors.red,
              elevation: 0,
              color: Colors.black.withOpacity(0.8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: InkWell(
                enableFeedback: false,
                splashColor: Colors.black,
                onTap: () => print('Clicked'),
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 20, top: 10),
                      height: 155,
                      alignment: Alignment.center,
                      width: double.infinity,
                      child: Image.asset('asset/images/jeep.png'),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 150, left: 20),
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Scorpio',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25),
                          ),
                          Divider(
                            color: Colors.white,
                            endIndent: 50,
                            thickness: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Type: Jeep',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Seats: 4',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 25),
                                child: Text(
                                  'Price: Rs.4000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.topRight,
                      child: IconButton(
                        color:
                            _fav ? Colors.red : Colors.white.withOpacity(0.5),
                        highlightColor:
                            _fav ? Colors.white.withOpacity(0.5) : Colors.red,
                        splashColor:
                            _fav ? Colors.red : Colors.white.withOpacity(0.5),
                        onPressed: () {
                          if (_fav_count == 0) {
                            setState(() {
                              _fav = true;
                              _fav_count++;
                              print('true');
                            });
                          } else if (_fav_count == 1) {
                            setState(() {
                              print('false');
                              _fav = false;
                              _fav_count--;
                            });
                          }
                        },
                        icon: Icon(Icons.favorite_rounded),
                        enableFeedback: false,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
