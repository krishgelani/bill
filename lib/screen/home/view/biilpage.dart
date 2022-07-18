import 'package:bill/screen/home/model/modelclass.dart';
import 'package:bill/utils/constant/components/size.dart';
import 'package:flutter/material.dart';


class billpage extends StatefulWidget {
  const billpage({Key? key}) : super(key: key);

  @override
  State<billpage> createState() => _billpageState();
}

class _billpageState extends State<billpage> {
  @override
  Widget build(BuildContext context) {
    List<Model> m2 = ModalRoute.of(context)!.settings.arguments as List<Model>;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
            Align(
            alignment: Alignment.center,
            child: Text("Bussiness Name",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "177 Bleekr Street,\n     Manhatten, \n      New York\n+917862952601",
              style: TextStyle(fontSize: 20),),
          ),
          H(20),
          Text("----------------------------------------",style: TextStyle(fontSize: 28),),
          Text("Item                            Qty          Price",style: TextStyle(fontSize: 20),),
          Text("----------------------------------------",style: TextStyle(fontSize: 28),),

          Expanded(
            child: ListView.builder(
              itemCount: m2.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          width: 170,
                            child: Text("${m2[index].iname}",style: TextStyle(color: Colors.black,fontSize: 18),)),
                        Container(
                          alignment: Alignment.center,
                            width: 85,
                            child: Text("${m2[index].quantity}",style: TextStyle(color: Colors.black),)),
                        Container(
                            padding: EdgeInsets.only(right: 15),
                          alignment: Alignment.centerRight,
                            width: 85,
                            child: Text("${m2[index].price}",style: TextStyle(color: Colors.black),)),
                      ],
                    )
                  ],
                );
              },
            ),
          ),
              Text("----------------------------------------",style: TextStyle(fontSize: 28),),
              // Text("data"),
              // Text("----------------------------------------",style: TextStyle(fontSize: 28),),
        ],
      ),
    )),
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
