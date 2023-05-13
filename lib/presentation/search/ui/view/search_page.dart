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
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Search'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: searchEditController,
                decoration:
                    const InputDecoration(hintText: 'Search Articles here ...'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            ElevatedButton(
              // style: raisedButtonStyle,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  context.pushRoute(
                      ResultRoute(queryParam: searchEditController.text));
                }
              },
              child: const Text('Search'),
            )
          ],
        ),
      ),
    );
  }
}
