
import 'package:flutter/material.dart';

import 'profile.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Konversi Mata Uang'),
        ),
        body: Konversi(),
      ),
    );
  }
}

class Konversi extends StatefulWidget {
  _KonversiState createState() => _KonversiState();
}

class _KonversiState extends State<Konversi> {
  final txtrupiah = TextEditingController();

  String result = '';

  getTextInputDataDolar() {
    setState(() {
      var rupiah = int.parse(txtrupiah.text);
      var hasil = rupiah / 14366;
      result = hasil.toString();
      Text('$dolar');
    });
  }

  getTextInputDataRinggit() {
    setState(() {
      var rupiah = int.parse(txtrupiah.text);
      var hasil = rupiah / 3391;
      result = hasil.toString();
      Text('$ringgit');
    });
  }

  getTextInputDataYen() {
    setState(() {
      var rupiah = int.parse(txtrupiah.text);
      var hasil = rupiah / 113;
      result = hasil.toString();
      Text('$yen');
    });
  }

  getTextInputDataPounds() {
    setState(() {
      var rupiah = int.parse(txtrupiah.text);
      var hasil = rupiah / 18762 ;
      result = hasil.toString();
      Text('$pounds');
    });
  }

  getTextInputDataReal(){
    setState(() {
      var rupiah = int.parse(txtrupiah.text);
      var hasil = rupiah / 3831;
      result = hasil.toString();
      Text('$real');
    });
  }

  getTextInputDataYuan(){
    setState(() {
      var rupiah = int.parse(txtrupiah.text);
      var hasil = rupiah / 2254;
      result = hasil.toString();
      Text('$yuan');
    });
  }

  getTextInputDataDinar(){
    setState(() {
      var rupiah = int.parse(txtrupiah.text);
      var hasil = rupiah / 38038;
      result = hasil.toString();
      Text('$dinar');
    });
  }

  getAbout(){

  }

  getTextInputDataHapus() {
    setState(() {
      var hasil = '';
      result = hasil.toString();
    });
  }

  List<Widget> data = [];
  String dolar = 'Dolar';
  String ringgit = 'Ringgit';
  String yen = 'Yen';
  String pounds = 'Pounds';
  String real = 'Real';
  String yuan = 'Yuan' ;
  String dinar = 'Dinar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: txtrupiah,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'Nominal Rupiah'),
                )),
            RaisedButton(
              onPressed: getTextInputDataDolar,
              color: Colors.blueGrey,
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text('Dolar'),
            ),
            RaisedButton(
              onPressed: getTextInputDataRinggit,
              color: Colors.black87,
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text('Ringgit'),
            ),
            RaisedButton(
              onPressed: getTextInputDataYen,
              color: Colors.purple,
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text('Yen'),
            ),
            RaisedButton(
              onPressed: getTextInputDataPounds,
              color: Colors.orange,
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text('Pounds'),
            ),
            RaisedButton(
              onPressed:getTextInputDataReal,
              color: Colors.brown,
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text('Real'),
            ),
            RaisedButton(
              onPressed:getTextInputDataYuan,
              color: Colors.black26,
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text('Yuan'),
            ),
            RaisedButton(
              onPressed:getTextInputDataDinar,
              color: Colors.indigo,
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text('Dinar'),
            ),

            RaisedButton(
              onPressed: getTextInputDataHapus,
              color: Colors.red,
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text('Hapus'),
            ),

            RaisedButton(
              onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(
                  builder: (context) => SecondPage(),
                ));
              },
              color: Colors.lightBlue,
              child: Text("About"),),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Hasil = $result", style: TextStyle(fontSize: 25)))
          ],
        ),
      ),
    );
  }
}