import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:nyt/config/routes/router.gr.dart';
import 'package:nyt/core/core.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  Position? position;
  DateTime? updateTime;
  late Timer _timer;

  _updateLocation() async {
    position = await ref.read(locationServiceProvider).getCurrentPosition();

    if (position != null) {
      updateTime = DateTime.now();
      if (!_timer.isActive) {
        _startTimer();
      }
      setState(() {});
    } else {
      if (_timer.isActive) {
        _timer.cancel();
      }
    }
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 60), (timer) {
      _updateLocation();
    });
  }

  @override
  void initState() {
    _updateLocation();
    _startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('NYT'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                    'Location - ${updateTime != null ? '(update at ${updateTime!.convertDateTimeInFormat(strFormat: 'HH:mm')})' : ''}'),
                if (updateTime == null)
                  InkWell(
                    child: Icon(Icons.refresh),
                    onTap: () {
                      _updateLocation();
                    },
                  ),
              ],
            ),
            const Divider(
              height: 1,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(position != null
                ? '${position!.latitude} (lat)'
                : 'no location info...'),
            Text(position != null ? '${position!.longitude} (long)' : ''),
            const Divider(
              height: 1,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text('Search'),
            const Divider(
              height: 1,
            ),
            ListTile(
              title: const Text('Search Articles'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                context.router.push(const SearchRoute());
              },
            ),
            const Divider(
              height: 1,
            ),
            const SizedBox(
              height: 18,
            ),
            const Text('Popular'),
            const Divider(
              height: 1,
            ),
            ListTile(
              title: const Text('Most Views'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                context.router.push(ResultRoute());
              },
            ),
            const Divider(
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
