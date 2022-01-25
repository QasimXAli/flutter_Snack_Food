import 'package:flutter/material.dart';
import 'package:snack_food/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Snack Food'),
      ),
      body: SafeArea(
        child: SizedBox(
          height: 140,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              const SizedBox(
                width: 20.0,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
              const SizedBox(
                width: 20.0,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
              const SizedBox(
                width: 20.0,
              ),
              Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('images/card1.jpg'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
