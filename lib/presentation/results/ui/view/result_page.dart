import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nyt/core/core.dart';
import 'package:nyt/presentation/results/ui/controller/result_controller.dart';

class ResultPage extends ConsumerStatefulWidget {
  const ResultPage({
    Key? key,
    this.queryParam,
  }) : super(key: key);

  final String? queryParam;

  @override
  ConsumerState createState() => _ResultPageState();
}

class _ResultPageState extends ConsumerState<ResultPage> {
  var scrollController = ScrollController();
  int page = 0;

  void pagination() {
    if (widget.queryParam != null) {
      if ((scrollController.position.pixels ==
              scrollController.position.maxScrollExtent) &&
          (page <= 200)) {
        // setState(() {
        page += 1;
        ref
            .read(resultControllerProvider.notifier)
            .getSearchResults(widget.queryParam!, page);
        // });
      } else if (page > 200) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("END"),
        ));
      }
    }
  }

  @override
  void initState() {
    scrollController.addListener(pagination);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.queryParam == null) {
        ref.read(resultControllerProvider.notifier).getMostViewResults();
      } else {
        ref
            .read(resultControllerProvider.notifier)
            .getSearchResults(widget.queryParam!, 0);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final homeCtrl = ref.watch(resultControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Articles'),
      ),
      body: homeCtrl.when(
        data: (data) {
          return ListView.separated(
            shrinkWrap: true,
            itemCount: data.length,
            controller: scrollController,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(data[index].title),
                subtitle:
                    Text(data[index].datePublished!.convertDateTimeInFormat()),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                height: 1,
              );
            },
          );
        },
        error: (e, st) {
          e as Failure;
          return Center(child: Text(e.failureMessage()));
        },
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
