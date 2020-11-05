import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Data Table Lab'),
        ),
        body: Center(
          child: Container(
            child: DataTable(
              sortColumnIndex: 2, //Kolom mana ingin disortir
              sortAscending: false,
              columns: <DataColumn>[
                DataColumn(
                  label: Text('Car Make'),
                  numeric: false,
                  onSort: (i, b) {
                    setState(
                      () {
                        carData.sort((a, b) => a.Price.compareTo(b.Price));
                      },
                    );
                  },
                ),
                DataColumn(
                  label: Text('Model'),
                  numeric: false,
                  onSort: (i, b) {
                    setState(
                      () {
                        carData.sort((a, b) => a.Price.compareTo(b.Price));
                      },
                    );
                  },
                ),
                DataColumn(
                  label: Text('Price'),
                  numeric: false,
                  onSort: (i, b) {
                    setState(
                      () {
                        carData.sort((a, b) => a.Price.compareTo(b.Price));
                      },
                    );
                  },
                ),
              ],
              rows: carData
                  .map(
                    (x) => DataRow(
                      cells: [
                        DataCell(Text(x.CarMake)),
                        DataCell(Text(x.Model)),
                        DataCell(Text((x.Price).toString())),
                      ],
                    ),
                  )
                  .toList(),
              /*
              rows: <DataRow>[
                DataRow(
                  cells: [
                    DataCell(Text('Honda')),
                    DataCell(Text('2021')),
                    DataCell(Text('35000')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Toyota')),
                    DataCell(Text('2011')),
                    DataCell(Text('6000')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('BMW')),
                    DataCell(Text('2010')),
                    DataCell(Text('9000')),
                  ],
                ),
              ],
              */
            ),
          ),
        ),
      ),
    );
  }
}

class Car {
  String CarMake;
  String Model;
  double Price;

  Car({this.CarMake, this.Model, this.Price});
}

var carData = <Car>[
  Car(CarMake: "Honda", Model: "2021", Price: 35000.0),
  Car(CarMake: "Toyota", Model: "2011", Price: 6000.0),
  Car(CarMake: "BMW", Model: "2010", Price: 9000.0),
];
