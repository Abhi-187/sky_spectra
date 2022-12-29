import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weatherapp_starter_project/screens/widdget/current_weather_widget.dart';
import '../widgets/header_widget.dart';

import '../controller/global_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //call
  final _globalController = Get.put(GlobalController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Obx(
            () => _globalController.checkLoading().isTrue
                ? const CircularProgressIndicator()
                : Center(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        HeaderWidget(),
                        //for current temperature
                        CurrentWeatherWidget(
                          weatherDataCurrent:
                              _globalController.getWeatherData(),
                        ),
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
