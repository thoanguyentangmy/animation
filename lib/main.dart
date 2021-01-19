import 'package:flutter/material.dart';

import 'animated_container.dart';

final List<String> entries = <String>['Animated Container', 'Fade a widget'];
final List<int> colorCodes = <int>[
  500,
  300,
];
void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cookbook'),
      ),
      body: Center(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 60,
                  color: Colors.amber[colorCodes[index]],
                  child: ListTile(
                      title: Text(
                        entries[index],
                        textAlign: TextAlign.center,
                      ),
                      onTap: createSample(context,index)
                  ),
                );
              })),
    );
  }
}


class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          entries[index],
          textAlign: TextAlign.center,
        ),
        onTap: createSample(context,index)
    ),
  }
}

 createSample(BuildContext context, int index) {
  switch (index){
    case 0:
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => AnimatedContainerSample()));
      break;
  }


}