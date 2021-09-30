import 'package:flutter/material.dart';
import 'package:infraaero_project/infra/flight_model.dart';
import 'mock.dart';

class FlightList extends StatefulWidget {
  @override
  _FlightListState createState() => _FlightListState();
}

class _FlightListState extends State<FlightList> {
  @override
  Widget build(BuildContext context) {
    final flightslist = <FlightModel>[];

    setState(() {
      for (var i = 0; i < flights.length; i++) {
        flightslist.add(FlightModel.fromMap(flights[i]));
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Voo'),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: 2,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Código-> ${flightslist[index].uuid}', style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(child: Text('Origem -> ${flightslist[index].originAirport}', style: TextStyle(color: Colors.white))),
                          Flexible(child: Text('Destino -> ${flightslist[index].destinyAirport}', style: TextStyle(color: Colors.white))),
                        ],
                      ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Compania -> ${flightslist[index].company}', style: TextStyle(color: Colors.white)),
                        Text('Avião -> ${flightslist[index].airplane}', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    ],
                  ),
                  color: Colors.deepPurple,
                  padding: EdgeInsets.all(16),
                  
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.luggage),
            label: "Voos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_airport_sharp),
            label: "Aviões",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city_outlined),
            label: "Aeroportos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket),
            label: "Companias",
          ),
        ],
        onTap: (index) {},
      ),
    );
  }
}
