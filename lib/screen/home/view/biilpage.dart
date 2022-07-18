import 'package:bill/screen/home/model/modelclass.dart';
import 'package:bill/utils/constant/components/size.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class billpage extends StatefulWidget {
  const billpage({Key? key}) : super(key: key);

  @override
  State<billpage> createState() => _billpageState();
}

class _billpageState extends State<billpage> {
  @override
  Widget build(BuildContext context) {
    Model m2 = ModalRoute.of(context)!.settings.arguments as Model;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("${iname[0]}"),
            Text("${iname[1]}"),
            Text("${iname[2]}"),
          ],
        )
      ),
    );
  }
}

// Padding(
// padding: const EdgeInsets.all(10.0),
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Align(
// alignment: Alignment.center,
// child: Text("Bussiness Name",style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
// ),
// Align(
// alignment: Alignment.center,
// child: Text("177 Bleekr Street,\n     Manhatten, \n      New York\n+917862952601",style: TextStyle(fontSize: 20),),
// ),
// H(20),
// Text("----------------------------------------",style: TextStyle(fontSize: 28),),
//
// Text("${m2.iname}"),
// Text("${m2.price}"),
// Text("${m2.quantity}"),
//
// ],
// ),
// ),
