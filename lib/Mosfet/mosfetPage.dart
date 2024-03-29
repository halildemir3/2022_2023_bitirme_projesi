import 'dart:convert';

import 'package:bitirme_projesi_2/k%C4%B1saltmalar/k%C4%B1saltmalar_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../colors.dart';
import '../constans.dart';
import 'mosfetModel.dart';

class MosfetPage extends StatefulWidget {
  const MosfetPage({Key? key}) : super(key: key);

  @override
  State<MosfetPage> createState() => _MosfetPageState();
}

class _MosfetPageState extends State<MosfetPage> {
  List respose = [];
  List sabit = [];
  var select1;
  var select2;
  var select3;
  var count = 0;

  var nesne;
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/data_base/mosfet.json');
    final veri = await json.decode(response.toString());
    setState(() {
      sabit = veri.map((e) => MosfetModel.fromJson(e)).toList();
      respose = sabit;
    });
  }

  void initState() {
    readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sacffoldBackground,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 200, bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 50,
                        color: backIconColor,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 30.0,
                          left: 30,
                          right: 30,
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: Colors.white, width: 1)),
                              child: DropdownButton(
                                  underline: SizedBox(),
                                  isDense: true,
                                  hint: select1 == null
                                      ? Text(
                                          "VDSS",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      : Text(
                                          "VDSS: ${select1} V",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                  dropdownColor: Colors.white,
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  ),
                                  iconSize: 40,
                                  isExpanded: true,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text(
                                        "100 V",
                                      ),
                                      value: "100",
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "200 V",
                                      ),
                                      value: "200",
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "500 V",
                                      ),
                                      value: "500",
                                    )
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      select1 = value;
                                    });
                                  }),
                            ),
                            _spacerLarge(),
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: Colors.white, width: 1)),
                              child: DropdownButton(
                                  underline: SizedBox(),
                                  isDense: true,
                                  hint: select2 == null
                                      ? Text(
                                          "ID",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      : Text(
                                          "ID: ${select2} A",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                  dropdownColor: Colors.white,
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  ),
                                  iconSize: 40,
                                  isExpanded: true,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text(
                                        "18 A",
                                      ),
                                      value: "18",
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "5,5 A",
                                      ),
                                      value: "5,5",
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "9 A",
                                      ),
                                      value: "9",
                                    )
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      select2 = value;
                                    });
                                  }),
                            ),
                            _spacerLarge(),
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: Colors.white, width: 1)),
                              child: DropdownButton(
                                  underline: SizedBox(),
                                  isDense: true,
                                  hint: select3 == null
                                      ? Text(
                                          "PD",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      : Text(
                                          "PD: ${select3} W",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                  dropdownColor: Colors.white,
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  ),
                                  iconSize: 40,
                                  isExpanded: true,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text(
                                        "74  W",
                                      ),
                                      value: "74",
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "125  W",
                                      ),
                                      value: "125",
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "150  W",
                                      ),
                                      value: "150",
                                    )
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      select3 = value;
                                    });
                                  }),
                            ),
                            _spacerLarge(),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  count = 0;
                                  List<MosfetModel> abc = [];

                                  for (var isim in sabit) {
                                    if (isim.vdss == select1 &&
                                        isim.id == select2 &&
                                        isim.pd == select3) {
                                      abc.add(isim);
                                    }
                                  }
                                  if (abc.isEmpty) {
                                    nesne = null;
                                  } else {
                                    nesne = abc[0];
                                  }
                                  respose = abc;
                                });
                              },
                              child: Container(
                                width: 300,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(child: Text("Uygula")),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 10,
                                      left: 0,
                                      right: 0,
                                      child: GestureDetector(
                                        onTap: () {
                                          Get.to(Kisaltma());
                                        },
                                        child: Container(
                                          width: 300,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: Center(
                                              child: Text("Kısaltmalar")),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: leftMenu,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            topLeft: Radius.circular(40),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 8,
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Center(
                          child: Text(
                        mosfetTitle,
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            color: titleColor),
                      ))),
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 25.0, left: 25, bottom: 50),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: nesne == null
                            ? Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    nullMesage,
                                    style: TextStyle(fontSize: 28),
                                  ),
                                ),
                              )
                            : SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      nesne.ad,
                                      style: TextStyle(fontSize: 50),
                                    ),
                                    _spacer(),
                                    _spacer(),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          flex: 5,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Container(
                                              width: 400,
                                              height: 400,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          mosfetGorsel1),
                                                      fit: BoxFit.cover)),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 50.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  "VDSS: ${nesne.vdss} V",
                                                  style:
                                                      TextStyle(fontSize: 23),
                                                ),
                                                _spacer(),
                                                Text(
                                                  "ID: ${nesne.id} A",
                                                  style:
                                                      TextStyle(fontSize: 23),
                                                ),
                                                _spacer(),
                                                Text(
                                                  "IDM: ${nesne.idm} A",
                                                  style:
                                                      TextStyle(fontSize: 23),
                                                ),
                                                _spacer(),
                                                Text(
                                                  "VGS: ${nesne.vgs} V",
                                                  style:
                                                      TextStyle(fontSize: 23),
                                                ),
                                                _spacer(),
                                                Text(
                                                  "IAR: ${nesne.iar} A",
                                                  style:
                                                      TextStyle(fontSize: 23),
                                                ),
                                                _spacer(),
                                                Text(
                                                  "EAS: ${nesne.eas} mJ",
                                                  style:
                                                      TextStyle(fontSize: 23),
                                                ),
                                                _spacer(),
                                                Text(
                                                  "Tstg: ${nesne.tstg} C",
                                                  style:
                                                      TextStyle(fontSize: 23),
                                                ),
                                                _spacer(),
                                                Text(
                                                  "PD: ${nesne.pd} W",
                                                  style:
                                                      TextStyle(fontSize: 23),
                                                ),
                                                _spacer(),
                                                _spacer(),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Text("Datasheet:"),
                                                    GestureDetector(
                                                      onTap: () {
                                                        urlLauncher(
                                                            'https://${nesne.ad}.pdf');
                                                      },
                                                      child: Text(
                                                        "${nesne.ad}.pdf",
                                                        style: TextStyle(
                                                            color: Colors.blue),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                      ),
                    ),
                  )
                ],
              )),
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  Expanded(
                      flex: 15,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 0.0),
                            child: ListView.builder(
                                itemCount:
                                    respose.length == 0 ? 1 : respose.length,
                                itemBuilder: (BuildContext context, int index) {
                                  if (respose.isNotEmpty) {
                                    return Card(
                                      color: count == index
                                          ? sacffoldBackground
                                          : null,
                                      key: ValueKey(respose[index].ad),
                                      margin: const EdgeInsets.all(2),
                                      child: ListTile(
                                        onTap: () {
                                          setState(() {
                                            count = index;
                                            nesne = respose[index];
                                          });
                                        },
                                        leading: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 40, left: 5),
                                          child: Text(
                                            respose[index].ad,
                                            style: TextStyle(fontSize: 25),
                                          ),
                                        ),
                                        title:
                                            Text("EAS: ${respose[index].eas}"),
                                        subtitle:
                                            Text("IAR: ${respose[index].iar}"),
                                      ),
                                    );
                                  } else {
                                    return Center(
                                        child: Padding(
                                      padding: const EdgeInsets.only(top: 30.0),
                                      child: Text(
                                        "Sonuç bulunamadı",
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 20),
                                      ),
                                    ));
                                  }
                                }),
                          ),
                          decoration: BoxDecoration(
                              color: rightMenu,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(4),
                                bottomRight: Radius.circular(4),
                              )),
                        ),
                      )),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Center(
                          child: Text(
                        "${respose.length}",
                        style: TextStyle(
                            color: titleColor,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  SizedBox _spacer() {
    return SizedBox(
      height: 15,
    );
  }

  SizedBox _spacerLarge() {
    return SizedBox(
      height: 25,
    );
  }
}
