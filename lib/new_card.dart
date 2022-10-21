import 'package:flutter/material.dart';
import './new_entry.dart';

class MyCard extends StatefulWidget {
  final List<NewEntry> entries;
  const MyCard({Key? key, required this.entries}) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  bool fav = false;
  int fav_count = 0;
  void count() {
    if (fav_count == 0) {
      setState(() {
        fav = true;
        fav_count = 1;
        print('true');
      });
    } else if (fav_count == 1) {
      setState(() {
        print('false');
        fav = false;
        fav_count = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.entries.isEmpty) {
      setState(() {
        Text('no vehicle available');
      });
    }
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 1,
      margin: EdgeInsets.only(top: 120),
      child: ListView.builder(
        itemCount: widget.entries.length,
        itemBuilder: ((context, index) {
          return Container(
            width: double.infinity,
            height: 180,
            margin: EdgeInsets.all(10),
            child: Card(
              shadowColor: Colors.red,
              elevation: 0,
              color: Colors.amberAccent.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Text(
                              widget.entries[index].price,
                              style: TextStyle(
                                  color: Colors.green,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  fontSize: 20,
                                  fontFamily: 'Bowlby'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        height: 85,
                        width: 160,
                        margin: EdgeInsets.only(right: 188),
                        child: Text(
                          widget.entries[index].model,
                          style: TextStyle(
                              fontFamily: 'FuzzybubblesBold',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 47, 69, 80)),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 156, top: 10),
                    height: 155,
                    alignment: Alignment.bottomCenter,
                    width: 200,
                    child: Image.asset('asset/images/car.png'),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.topRight,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: fav
                            ? Colors.blueAccent.withOpacity(0.6)
                            : Colors.red.withOpacity(0.1),
                      ),
                      child: IconButton(
                        color: fav
                            ? Colors.pinkAccent
                            : Colors.white.withOpacity(1),
                        highlightColor: fav ? Colors.white : Colors.pink,
                        splashColor: fav ? Colors.pink : Colors.white,
                        onPressed: count,
                        icon: Icon(Icons.favorite_rounded),
                        enableFeedback: false,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
