//JOHELIN PASCUAL PEREZ VALDEZ

import 'dart:async';
import 'package:flutter/material.dart';

class CurrentTimeView extends StatefulWidget {
  const CurrentTimeView({super.key});

  @override
  _CurrentTimeViewState createState() => _CurrentTimeViewState();
}

class _CurrentTimeViewState extends State<CurrentTimeView> {
  String _currentTime = '';

  @override
  void initState() {
    super.initState();
    _updateTime();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      _updateTime();
    });
  }

  void _updateTime() {
    final now = DateTime.now();
    setState(() {
      _currentTime =
          '${now.day}/${now.month}/${now.year} ${now.hour}:${now.minute}:${now.second}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          const Text(
            "Vista de Fecha y Hora Actual",
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 20),
          Text(
            _currentTime,
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
