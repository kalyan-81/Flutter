import 'package:appbar_example/main.dart';
import 'package:flutter/material.dart';

final List<int> _items = List<int>.generate(51, (index) => index);

class NewAppBarEx extends StatefulWidget {
  const NewAppBarEx({super.key});

  @override
  State<NewAppBarEx> createState() => _NewAppBarExState();
}

class _NewAppBarExState extends State<NewAppBarEx> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.amber, useMaterial3: true),
      home: AppBarExNew(),
    );
  }
}

class AppBarExNew extends StatefulWidget {
  const AppBarExNew({super.key});

  @override
  State<AppBarExNew> createState() => _AppBarExNewState();
}

class _AppBarExNewState extends State<AppBarExNew> {
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Demo'),
        // scrolledUnderElevation:,
      ),
      body: GridView.builder(
        itemCount: _items.length,
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2.0,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        itemBuilder: (context, index) {
          if (index == 0) {
            return Center(
              child: Text('Scroll to see the Appbar in effect'),
            );
          }
          return Container(
            alignment: Alignment.center,
            // tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: _items[index].isOdd ? oddItemColor : evenItemColor,
            ),
            child: Text('Item $index'),
          );
        },
      ),
    );
  }
}
