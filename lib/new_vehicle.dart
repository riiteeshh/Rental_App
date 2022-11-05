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
  final location = TextEditingController();

  List<NewEntry> entries = [
    // NewEntry(
    // id: DateTime.now().toString(),
    // dateTime: DateTime.now(),
    // model: 'Thar',
    // price: 'Rs.8000',
    // type: 'Car',
    // mobilenumber: '9874561230',
    // vehiclenumber: 'da65465',
    // locate: 'dhn'),
  ];

  void addEntries(String modelname, String price, String type,
      String mobilenumber, String vehiclenumber, String location) {
    final newe = NewEntry(
        id: DateTime.now().toString(),
        dateTime: DateTime.now(),
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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20, left: 15),
              width: double.infinity,
              child: Text(
                'Let\'s\nAdd Vehicle ',
                style: TextStyle(
                  fontFamily: 'Bowlby',
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.aspectRatio * 70,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: modelname,
                keyboardType: TextInputType.name,
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
                    borderSide: (BorderSide(width: 1.0, color: Colors.black)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(17),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: (BorderSide(width: 1.0, color: Colors.blue)),
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
                    borderSide: (BorderSide(width: 1.0, color: Colors.black)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(17),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: (BorderSide(width: 1.0, color: Colors.blue)),
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
                    borderSide: (BorderSide(width: 1.0, color: Colors.black)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(17),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: (BorderSide(width: 1.0, color: Colors.blue)),
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
                    borderSide: (BorderSide(width: 1.0, color: Colors.black)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(17),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: (BorderSide(width: 1.0, color: Colors.blue)),
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
                    borderSide: (BorderSide(width: 1.0, color: Colors.black)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(17),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: (BorderSide(width: 1.0, color: Colors.blue)),
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
                keyboardType: TextInputType.visiblePassword,
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
                    borderSide: (BorderSide(width: 1.0, color: Colors.black)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(17),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: (BorderSide(width: 1.0, color: Colors.blue)),
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
      ),
    );
  }

  Future addvehicle() {
    addEntries(modelname.text, price.text, type.text, mobilenumber.text,
        vehiclenumber.text, location.text);
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => MyHomePage()));
  }
}
