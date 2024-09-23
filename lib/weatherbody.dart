import 'package:flutter/material.dart';
import 'package:weather_app/additioninfo.dart';
import 'package:weather_app/hourlyforee.dart';

class Weatherbody extends StatelessWidget {
  const Weatherbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(
            width: double.infinity,
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: const Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "30°C",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 15),
                    Icon(
                      Icons.cloud,
                      size: 60,
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Rain",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ]),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Container(
          alignment: const Alignment(-1, 1),
          child: const Text(
            " Weather Forecast Data ",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 232, 228, 228),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 5),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  hourlyfore(
                    icon: Icons.cloud,
                    time: "09 : 00 ",
                    value: " 301.64 ",
                  ),
                ],
              ),
              hourlyfore(
                icon: Icons.cloud,
                time: "12 : 00 ",
                value: " 321.64 ",
              ),
              hourlyfore(
                icon: Icons.cloud,
                time: "15 : 00 ",
                value: " 311.64 ",
              ),
              hourlyfore(
                icon: Icons.cloud,
                time: "18 : 00 ",
                value: " 305.64 ",
              ),
              hourlyfore(
                icon: Icons.cloud,
                time: "21 : 00 ",
                value: " 302.64 ",
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Container(
          alignment: const Alignment(-1, 1),
          child: const Text(
            " Additional Infomation ",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 232, 228, 228),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Row(
            children: [
              addi(
                icon: Icons.water_drop,
                label: "Humidity",
                value: "91",
              ),
              addi(
                icon: Icons.speed,
                label: "Wind Speed",
                value: "4",
              ),
              addi(
                icon: Icons.beach_access,
                label: "Pressure",
                value: "1009",
              ),
            ],
          ),
        )
      ]),
    );
  }
}
