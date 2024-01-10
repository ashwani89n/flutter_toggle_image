import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClassWork1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'MAD: Class Work: Counter & Image Toggle'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _isImg1Visible = true;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
    void toggleImage() {
      setState(() {
        _isImg1Visible = !_isImg1Visible;
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _isImg1Visible
                ? Image.asset('assets/oswald_1.jpg')
                : Image.asset('assets/oswald_2.jpg'),
            SizedBox(height: 50,width:50),
            ElevatedButton(
              onPressed: toggleImage,
              child: Text('Toggle Image'),
            ),
            SizedBox(height: 20),
            const Text(
              'You have pushed the Increment button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: _incrementCounter,
        child:
          Text(
            'Increment',
            style: TextStyle(fontSize: 20),
          ),

      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
