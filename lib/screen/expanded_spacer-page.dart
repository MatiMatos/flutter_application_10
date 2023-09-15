import 'package:flutter/material.dart';

class ExpandedSpacerPage extends StatefulWidget {
  const ExpandedSpacerPage({super.key});

  @override
  State<ExpandedSpacerPage> createState() => _ExpandedSpacerPageState();
}

class _ExpandedSpacerPageState extends State<ExpandedSpacerPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Spacer Page'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              child: Text('Ancho' + size.width.round().toString()),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.only(bottom: 5),
                height: 120,
                child: Row(
                  children: [
                    Expanded(
                        flex: 4,
                        child: ExampleBox(color: 0xff0000ff, text: '1')),
                    ExampleBox(color: 0xffac77d9, text: '2'),
                    ExampleBox(color: 0xffc68fe6, text: '3'),
                    ExampleBox(color: 0xffdfa7f2, text: '4'),
                    Expanded(child: ExampleBox(color: 0xfff9bfff, text: '5'))
                  ],
                ),
              ),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.only(bottom: 5),
                height: 120,
                child: Row(
                  children: [
                    ExampleBox(color: 0xff0000ff, text: '1'),
                    Spacer(),
                    ExampleBox(color: 0xffac77d9, text: '2'),
                    Spacer(),
                    ExampleBox(color: 0xffc68fe6, text: '3'),
                    Spacer(),
                    ExampleBox(color: 0xffdfa7f2, text: '4'),
                    Spacer(),
                    ExampleBox(color: 0xfff9bfff, text: '5')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExampleBox extends StatelessWidget {
  const ExampleBox({
    required this.color,
    required this.text,
    super.key,
  });
  final int color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 78,
      height: double.infinity,
      color: Color(this.color),
      alignment: Alignment.center,
      child: Text(
        this.text,
        style: TextStyle(
          color: Colors.white70,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
