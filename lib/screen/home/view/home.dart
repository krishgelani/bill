import 'package:bill/screen/home/model/modelclass.dart';
import 'package:bill/utils/constant/components/size.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

import '../../../main.dart';


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController txtcname = TextEditingController();
  TextEditingController txtcnum = TextEditingController();
  TextEditingController txtiname = TextEditingController();
  TextEditingController txtprice = TextEditingController();
  TextEditingController txtquant = TextEditingController();

  String? name,number;
   List<Model> iname=[];
   List<double> s =[];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text("Billing"),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text("Clear Data"),
                    onTap: () {
                      setState(() {
                        txtcnum.clear();
                        txtcname.clear();
                        txtiname.clear();
                        txtquant.clear();
                        txtprice.clear();
                      });
                    },
                  )
                ];
              },
              child: Icon(Icons.more_vert),
            ),
          ],
          backgroundColor: Colors.indigo,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                //customer details container
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Bill Number:1",
                              style: TextStyle(color: Colors.grey),
                            ),
                            //Icon(Icons.border_color,color: Colors.indigo,size: 20,),
                            Row(
                              children: [
                                Text(
                                  "Bill Date: 17 July 2022",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                W(5),
                                Icon(
                                  Icons.calendar_today,
                                  color: Colors.indigo,
                                  size: 20,
                                ),
                              ],
                            )
                          ],
                        ),
                        H(15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Customer Name",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 50,
                              width: 200,
                              child: TextField(
                                controller: txtcname,
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 0.5)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        H(15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Customer Number",
                              style: TextStyle(
                                  fontSize: 13.5, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 50,
                              width: 200,
                              child: TextField(
                                controller: txtcnum,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 0.5))),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                H(18),

                //item detail container
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Item Name",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 50,
                              width: 200,
                              child: TextField(
                                controller: txtiname,
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 0.5)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        H(15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Price",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 50,
                              width: 200,
                              child: TextField(
                                controller: txtprice,
                                keyboardType: TextInputType.number,
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 0.5)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        H(15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Quantity",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 50,
                              width: 200,
                              child: TextField(
                                controller: txtquant,
                                textAlignVertical: TextAlignVertical.center,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 0.5)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        H(30),
                        Container(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Model m1 = Model(
                                  iname: txtiname.text,
                                  quantity: txtquant.text,
                                  price: txtprice.text,
                              );

                              iname.add(m1);
                              total = double.parse(txtprice.text) * double.parse(txtquant.text);
                              s.add(total);
                              txtiname.clear();
                              txtprice.clear();
                              txtquant.clear();
                              sum = s.sum;
                              print("===============================$sum");
                            },
                            child: Text(
                              "Add Item",
                              style: TextStyle(fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.indigo),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                H(30),

                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 50,
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            name = txtcname.text;
                            number = txtcnum.text;
                          });

                          Navigator.pushNamed(
                              context, '/bill', arguments: iname);
                        },
                        child: Text("Done"),
                        style: ElevatedButton.styleFrom(primary: Colors.indigo),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
