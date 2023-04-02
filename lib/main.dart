import 'package:flutter/material.dart';
import 'package:weather_app/data_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _cityTextController = TextEditingController();
  final _dataservice = DataService();

  void _search(){
    _dataservice.getWeather(_cityTextController.text);
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: TextField(
                  controller: _cityTextController,
                  decoration: InputDecoration(labelText: 'City'),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(onPressed: _search, child: Text('Search')),
            ],
          ),
        ),
      ),
    );
  }
}
