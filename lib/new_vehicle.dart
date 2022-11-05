import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rental_app/home_page.dart';
import 'package:rental_app/new_card.dart';
import './new_entry.dart';
import './tabs_screen.dart';
import './new_card.dart';

class NewVehicle extends StatefulWidget {
  const NewVehicle({super.key});

  @override
  State<NewVehicle> createState() => _NewVehicleState();
}

class _NewVehicleState extends State<NewVehicle> {
  final modelname = TextEditingController();
  final vehiclenumber = TextEditingController();
  final mobilenumber = TextEditingController();
  final type = TextEditingController();
  final price = TextEditingController();
  final seat = TextEditingController();
  final location = TextEditingController();

  List<NewEntry> entries = [];

  void addEntries(String modelname, String price, String type, String seat,
      String mobilenumber, String vehiclenumber, String location) {
    final newe = NewEntry(
        id: DateTime.now().toString(),
        seat: seat,
        model: modelname,
        price: price,
        type: type,
        mobilenumber: mobilenumber,
        vehiclenumber: vehiclenumber,
        locate: location);
    setState(() {
      entries.add(newe);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
        title: Text(
          'Add Vehicle ',
          style: TextStyle(
            fontFamily: 'Bowlby',
            color: Colors.black,
            fontSize: MediaQuery.of(context).size.aspectRatio * 70,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: modelname,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        labelText: 'Model Name',
                        suffixIcon: Icon(Icons.car_rental_rounded),
                        floatingLabelStyle: TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(17),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              (BorderSide(width: 1.0, color: Colors.black)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(17),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              (BorderSide(width: 1.0, color: Colors.blue)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(17),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: vehiclenumber,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        labelText: 'Vehicle Number',
                        suffixIcon: Icon(Icons.numbers_rounded),
                        floatingLabelStyle: TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(17),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              (BorderSide(width: 1.0, color: Colors.black)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(17),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              (BorderSide(width: 1.0, color: Colors.blue)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(17),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: mobilenumber,
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        labelText: 'Mobile Number',
                        suffixIcon: Icon(Icons.phone_android_rounded),
                        floatingLabelStyle: TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(17),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              (BorderSide(width: 1.0, color: Colors.black)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(17),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              (BorderSide(width: 1.0, color: Colors.blue)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(17),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: type,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        labelText: 'Type',
                        suffixIcon: Icon(Icons.select_all_sharp),
                        floatingLabelStyle: TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(17),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              (BorderSide(width: 1.0, color: Colors.black)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(17),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              (BorderSide(width: 1.0, color: Colors.blue)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(17),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: type,
                      keyboardType: TextInputType.numberWithOptions(
                          signed: false, decimal: false),
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        labelText: 'No.of Seats',
                        suffixIcon: Icon(Icons.chair),
                        floatingLabelStyle: TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(17),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              (BorderSide(width: 1.0, color: Colors.black)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(17),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              (BorderSide(width: 1.0, color: Colors.blue)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(17),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: price,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        //labelText: 'Price',
                        hintText: 'Price/Day',
                        prefixIcon: Icon(Icons.attach_money),
                        floatingLabelStyle: TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(17),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              (BorderSide(width: 1.0, color: Colors.black)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(17),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              (BorderSide(width: 1.0, color: Colors.blue)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(17),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: location,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        labelText: 'Your Location',
                        suffixIcon: Icon(Icons.pin_drop),
                        floatingLabelStyle: TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(17),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              (BorderSide(width: 1.0, color: Colors.black)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(17),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              (BorderSide(width: 1.0, color: Colors.blue)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(17),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.075,
                    child: ElevatedButton(
                      onPressed: addvehicle,
                      child: Text(
                        'Confirm',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'DelaGothic'),
                      ),
                      style: ElevatedButton.styleFrom(
                          enableFeedback: false,
                          elevation: 20,
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }

  Future addvehicle() {
    addEntries(modelname.text, price.text, type.text, mobilenumber.text,
        seat.text, vehiclenumber.text, location.text);
    return Navigator.pushNamed(context, '/homepage', arguments: entries);
  }
}
