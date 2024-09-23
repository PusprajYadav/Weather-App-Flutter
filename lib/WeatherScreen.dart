// ignore_for_file: file_names, camel_case_types, depend_on_referenced_packages

import "package:flutter/material.dart";
import "package:weather_app/secret.dart";
import "package:weather_app/weatherbody.dart";
import 'package:http/http.dart' as http;

class Weather_Screen extends StatefulWidget {
  const Weather_Screen({super.key});

  @override
  State<Weather_Screen> createState() => _Weather_ScreenState();
}

class _Weather_ScreenState extends State<Weather_Screen> {
  @override
  void initState() {
    super.initState();
    getCurrentWeather();
  }

  Future getCurrentWeather() async {
    try {
      String cityname = "London";
      final res = await http.get(
        Uri.parse(
            "https://api.openweathermap.org/data/2.5/forecast?$cityname&appid=$kid"),
      );
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(248, 82, 177, 31),
        ),
        backgroundColor: const Color.fromARGB(255, 47, 18, 13),
        shadowColor: const Color.fromARGB(55, 42, 1, 1),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.refresh,
              color: Color.fromARGB(195, 0, 200, 133),
              size: 40,
            ),
          )
        ],
      ),
      body: const Weatherbody(),
    );
  }
}
