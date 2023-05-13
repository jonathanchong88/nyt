import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nyt/config/routes/router.gr.dart';

class HomePage extends ConsumerWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('NYT'),
      ),
      body: Column(
        children: [
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
        ],
      ),
    );
  }
}
