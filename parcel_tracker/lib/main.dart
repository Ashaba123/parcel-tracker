import 'package:flutter/material.dart';

//https://assets2.lottiefiles.com/packages/lf20_t24tpvcu.json
//https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6Yc_N3xC9akfMD4yRs9kwCBKoaRrie9z-Rg&usqp=CAU

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }
}

Widget content() {
  return Column(
    children: [
      Container(
        height: 300,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(children: [
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6Yc_N3xC9akfMD4yRs9kwCBKoaRrie9z-Rg&usqp=CAU",
                height: 200,
              ),
              const Text(
                'Parcel Tracker',
                style: TextStyle(fontSize: 30),
              ),
            ]),
          ),
        ),
      ),
      const Text('Check Postion'),
    ],
  );
}
