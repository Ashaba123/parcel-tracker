import 'package:flutter/material.dart';
import 'package:casa_vertical_stepper/casa_vertical_stepper.dart';
import 'package:casa_vertical_stepper/casa_vertical_stepper.dart' as step;

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

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
//list of data for stepper
  List<step.StepperStep> steps = [
    step.StepperStep(
      title: const Text('Testing 1'),
      leading: const Icon(
        Icons.circle,
        color: Colors.green,
      ),
      view: const Align(
        alignment: Alignment.centerLeft,
        child: Text('testing substitle'),
      ),
    ),
    step.StepperStep(
      title: const Text('Testing 2'),
      leading: const Icon(
        Icons.circle,
        color: Colors.green,
      ),
      view: const Align(
        alignment: Alignment.centerLeft,
        child: Text('testing substitle'),
      ),
    ),
    step.StepperStep(
      title: const Text('Testing 3'),
      leading: const Icon(
        Icons.circle,
        color: Colors.green,
      ),
      view: const Align(
        alignment: Alignment.centerLeft,
        child: Text('testing substitle'),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(context, steps),
    );
  }
}

Widget content(BuildContext context, List<step.StepperStep> steps) {
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
      body(context, steps)
    ],
  );
}

Widget body(BuildContext context, List<step.StepperStep> steps) {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 50,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 35.0),
          child: Text(
            'Tracking Number :',
            style: TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
          child: Row(
            children: [
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.67,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "e.g #1237123687"),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              const Icon(
                Icons.search,
                size: 35,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(35, 2, 31, 0),
          child: Row(
            children: const [
              Text(
                'Result :',
                style: TextStyle(fontSize: 25),
              ),
              Spacer(),
              Icon(
                Icons.close,
                size: 25,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        CasaVerticalStepperView(
          steps: steps,
          seperatorColor: Colors.white,
          showStepStatusWidget: false,
          isExpandable: false,
        ),
      ],
    ),
  );
}
