import 'package:flutter/material.dart';
import 'package:infraaero_project/infra/airport_model.dart';
import 'package:infraaero_project/presentation/flightList.dart';
import 'mock.dart';

class AirportList extends StatefulWidget {
  @override
  _AirportListState createState() => _AirportListState();
}

class _AirportListState extends State<AirportList> {
  @override
  Widget build(BuildContext context) {
    final airportlist = <AirportModel>[];

    setState(() {
      for (var i = 0; i < airports.length; i++) {
        airportlist.add(AirportModel.fromMap(airports[i]));
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Aeroportos'),
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
                      Text('Código-> ${airportlist[index].uuid}', style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(child: Text('Nome -> ${airportlist[index].name}', style: TextStyle(color: Colors.white))),
                          Flexible(child: Text('Localização -> ${airportlist[index].localization}', style: TextStyle(color: Colors.white))),
                        ],
                      ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Numero de Pistas -> ${airportlist[index].numberOfRunways}', style: TextStyle(color: Colors.white)),
                        Text('Peso Máximo Suportado -> ${airportlist[index].maxWeight}', style: TextStyle(color: Colors.white)),
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
        onTap: (index) {
          if (index == 0) {
            Navigator.of(context).push(MaterialPageRoute(builder: (_) {
              return FlightList();
            }));
          }
        },
      ),
    );
  }
}
