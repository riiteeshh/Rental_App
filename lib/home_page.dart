import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rental_app/new_entry.dart';
import './message_page.dart';
import './new_vehicle.dart';
import './new_card.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
  final List<NewEntry> entries;
  const HomePage({Key? key, required this.entries}) : super(key: key);
}

class _HomePageState extends State<HomePage> {
  final locates = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (widget.entries.isEmpty) {
      setState(() {
        Center(child: Text('no vehicle available'));
      });
    }
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => NewVehicle()));
          },
          label: Text(
            'ADD VEHICLE',
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
          icon: Icon(
            Icons.add_rounded,
            size: 30,
          ),
          elevation: 80,
          splashColor: Colors.amber,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.black,
        ),
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 30, left: 10, right: 10),
              height: MediaQuery.of(context).size.height * 0.14,
              child: TextField(
                keyboardType: TextInputType.text,
                controller: locates,
                decoration: InputDecoration(
                    hintText: 'Your Preffered Location',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(17),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: (BorderSide(width: 1.0, color: Colors.blue)),
                      borderRadius: BorderRadius.all(
                        Radius.circular(18),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: (BorderSide(width: 1.0, color: Colors.amber)),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.filter_list_rounded)),
                    suffixIcon: IconButton(
                        onPressed: clear, icon: Icon(Icons.pin_drop_rounded))),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void clear() {
    locates.clear();
  }
}
