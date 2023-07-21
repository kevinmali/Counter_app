import 'package:counterapp/Providers/counter_providers.dart';
import 'package:counterapp/Providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counterpage extends StatefulWidget {
  const Counterpage({Key? key}) : super(key: key);

  @override
  State<Counterpage> createState() => _CounterpageState();
}

class _CounterpageState extends State<Counterpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<themeprovider>(context, listen: false).changetheme();
            },
            icon: Icon(
              (Provider.of<themeprovider>(context, listen: true).theme.isdark ==
                      false)
                  ? Icons.brightness_4
                  : Icons.sunny,
            ),
          )
        ],
        title: const Text("Counter page"),
        centerTitle: true,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              Provider.of<counterprovide>(context, listen: false).increment();
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              Provider.of<counterprovide>(context, listen: false).Decrement();
            },
            child: const Icon(Icons.exposure_minus_1_sharp),
          ),
        ],
      ),
      body: Center(
        child: Text(
          "${Provider.of<counterprovide>(context, listen: true).counter.counter}",
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
