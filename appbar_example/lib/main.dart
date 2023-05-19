import "package:appbar_example/NewAppBar.dart";
import "package:flutter/material.dart";

void main() {
  runApp(AppBarExample());
} // main method end

class AppBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBarExample',
      home: AppBarEx(),
    );
  }
} // AppBarExample end

class AppBarEx extends StatelessWidget {
  const AppBarEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('AppBar Demo'),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('This is a snack bar'),
                    backgroundColor: Colors.amber,
                  ),
                );
              },
              icon: Icon(Icons.add_alert),
              tooltip: 'Show SnackBar',
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return NextPage();
                  },
                ));
              },
              icon: Icon(Icons.navigate_next),
              tooltip: 'go to the next page',
            )
          ],
        ),
        body: Center(
          child: Text('This is the Main Page'),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NextPage'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('this is the next page'),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return NewAppBarEx();
                      },
                    ),
                  );
                },
                icon: Icon(Icons.navigate_next),
                label: Text('see new app Bar in next page'))
          ],
        ),
      ),
    );
  }
}
