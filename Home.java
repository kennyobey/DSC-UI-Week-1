import 'package:flutter/material.dart';
import 'package:unicode/unicode.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() =>
    runApp(MaterialApp(
      title: "WeatherApp",
      debugShowCheckedModeBanner: false,
      home: Home(),
    )
    );


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
// TODO: implement createState

}


class _HomeState extends State<Home> {

  var temp;
  var description;
  var currently;
  var humidity;
  var windSpeed;
  var location;
  var country;

  void getWeather() async {
    var url = "http://api.openweathermap.org/data/2.5/weather?q=Moro&appid=ef6a5db521297e41e68c5a3fe4d1788e";
    var response = await http.get(url);
    print(response.statusCode);
    var results = jsonDecode(response.body);
    setState(() {
      this.temp = results['main']['temp'];
      this.humidity = results['main']['humidity'];
      this.currently = results['weather'][0]['main'];
      this.windSpeed = results['wind']['speed'];
      this.description = results['weather'][0]['describtion'];
      this.location = results['name'];
      this.country = results['sys']['country'];
    });
  }

  @override
  void initState() {
    super.initState();
    this.getWeather();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    colors: [
                      Colors.deepOrange[900],
                      Colors.deepOrange[800],
                      Colors.deepOrange[400]
                    ]
                )

            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //SizedBox(height: 80,),
                  Padding(
                    padding: EdgeInsets.all(40),

                    child: Container(alignment: Alignment.center,
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Currently in $location", style: TextStyle(
                            color: Colors.white, fontSize: 15,),),
                          SizedBox(height: 10,),
                          Text(temp != null
                              ? temp.toString() + "\u00B0"
                              : 'Loading', style: TextStyle(
                            color: Colors.white, fontSize: 40,),),
                          SizedBox(height: 10,),
                          Text(currently != null
                              ? currently.toString()
                              : "Loading", style: TextStyle(
                            color: Colors.white, fontSize: 20,),),
                        ],
                      ),
                    ),
                  ), // padding
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),

                    child: ListView(
                        padding: EdgeInsets.all(15),
                        children: <Widget>[
                          ListTile(
                            contentPadding: EdgeInsets.all(10),
                            leading: FaIcon(FontAwesomeIcons.thermometerHalf),
                            title: Text('Temprature'),
                            trailing: Text(temp != null ? temp.toString() +
                                "\u00B0" : "Loading"),
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.all(10),
                            leading: FaIcon(FontAwesomeIcons.cloud),
                            title: Text("Weather"),
                            trailing: Text(description != null
                                ? description.toString()
                                : "Loading"),
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.all(10),
                            leading: FaIcon(FontAwesomeIcons.sun),
                            title: Text('Humidity'),
                            trailing: Text(humidity != null
                                ? humidity.toString()
                                : "Loading"),
                          ),

                          ListTile(
                            contentPadding: EdgeInsets.all(10),
                            leading: FaIcon(FontAwesomeIcons.wind),
                            title: Text('Wind Speed'),
                            trailing: Text(windSpeed != null
                                ? windSpeed.toString()
                                : "Loading"),
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.all(10),
                            leading: FaIcon(FontAwesomeIcons.locationArrow),
                            title: Text('Location'),
                            trailing: Text(location != null
                                ? location.toString()
                                : "Loading"),
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.all(10),
                            leading: FaIcon(FontAwesomeIcons.flag),
                            title: Text('Country'),
                            trailing: Text(country != null
                                ? country.toString()
                                : "Loading"),
                          ),
                        ]
                    ),
                  ))
                ]
            )


        ),
      ),
    );
  }

}