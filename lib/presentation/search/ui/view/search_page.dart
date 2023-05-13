import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nyt/config/routes/router.gr.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  bool enabled = false;
  TextEditingController searchEditController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Search'),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: searchEditController,
            decoration:
                const InputDecoration(hintText: 'Search Articles here ...'),
            // validator: ,
          ),
          const SizedBox(
            height: 18,
          ),
          RawMaterialButton(
            padding: const EdgeInsets.all(10.0),
            disabledElevation: 1,
            fillColor: enabled ? Colors.indigo : Colors.black45,
            textStyle:
                TextStyle(color: enabled ? Colors.white : Colors.white70),
            onPressed: enabled ? () {} : null,
            child: const Text(
              "Search",
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          ElevatedButton(
            // style: raisedButtonStyle,
            onPressed: () {
              context.pushRoute(ResultRoute(queryParam: 'election'));
            },
            child: const Text('Search'),
          )
        ],
      ),
    );
  }
}
