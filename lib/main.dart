import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Icon(Icons.arrow_back),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: WeatherScreen(),
        ),
      ),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Jun 2', style: TextStyle(color: Colors.black38)),
        Text('London\n', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),        
        Text('21°C', style: TextStyle(fontSize: 33, color: Color.fromRGBO(255, 206, 51, 1), fontWeight: FontWeight.bold)),
        Text('Overcast Clouds', style: TextStyle(fontSize: 21)),
        DefaultTabController(
          length: 2,
          child: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(text: 'Today'),
                  Tab(text: 'This Week'),
                ],
                labelColor: Colors.black,
                indicatorColor: Colors.black, 
              ),
              Padding(
  padding: const EdgeInsets.all(16.0),
  
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Temperatures', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      SizedBox(height: 10),
      Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        
        SizedBox(width: 8),
        Text('8 PM    ', style: TextStyle(fontSize: 16)),
        SizedBox(width: 16),
        Text('11 PM', style: TextStyle(fontSize: 16)),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('   ', style: TextStyle(fontSize: 20)),
        Icon(Icons.cloud, size: 28),
        Text('      ', style: TextStyle(fontSize: 28)),
        Icon(Icons.cloud, size: 28),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        
        SizedBox(width: 8),
        Text('21°C      ', style: TextStyle(fontSize: 16)),
        SizedBox(width: 16),
        Text('22°C', style: TextStyle(fontSize: 16)),
      ],
    ),
    Text('\nDetails', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Minimum', style: TextStyle(fontSize: 16)),
          Text('Maximum', style: TextStyle(fontSize: 16)),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('21°C', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text('22°C', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
      Divider( 
      color: Colors.grey, 
      thickness: 0.5, 
      height: 20.0, 
    ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Pressure', style: TextStyle(fontSize: 16)),
          Text('Humidity', style: TextStyle(fontSize: 16)),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('1020 Pa', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text('41%', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
      Divider( 
      color: Colors.grey, 
      thickness: 0.5, 
      height: 20.0, 
    ),
    ],
  ),
),          
            ],
          ),
        ),
      ],
    );
  }
}
