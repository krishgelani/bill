import 'package:bill/screen/home/model/modelclass.dart';
import 'package:bill/screen/home/view/pdf.dart';
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
    List<Model> m2 = ModalRoute.of(context)!.settings.arguments as List<Model>;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          actions: [
            IconButton(onPressed: (){
              pdfGen(m2);
            }, icon: Icon(Icons.download))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Bussiness Name",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "177 Bleekr Street,\n     Manhatten, \n      New York\n+917862952601",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              H(20),
              Text(
                "----------------------------------------",
                style: TextStyle(fontSize: 28),
              ),
              Text(
                "Item                            Qty          Price",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Text(
                "----------------------------------------",
                style: TextStyle(fontSize: 28),
              ),
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
                                child: Text(
                                  "${m2[index].iname}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                )),
                            Container(
                                alignment: Alignment.center,
                                width: 85,
                                child: Text(
                                  "${m2[index].quantity}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                )),
                            Container(
                                padding: EdgeInsets.only(right: 15),
                                alignment: Alignment.centerRight,
                                width: 85,
                                child: Text(
                                  "${m2[index].price}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                )),
                          ],
                        )
                      ],
                    );
                  },
                ),
              ),
              Text(
                "----------------------------------------",
                style: TextStyle(fontSize: 28),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Total Price",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                  Container(
                    padding: EdgeInsets.only(right: 15),
                    child: Text(
                      "$sum",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Text(
                "----------------------------------------",
                style: TextStyle(fontSize: 28),
              ),
              H(40),
              Column(
                children: [
                  Text(
                    "Thanks You For Supporting",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                  Text(
                    "Local Bussiness!",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  width: 320,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
