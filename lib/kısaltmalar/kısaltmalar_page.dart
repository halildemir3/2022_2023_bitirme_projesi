import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../colors.dart';
import 'kısaltmalar_deişken.dart';

class Kisaltma extends StatelessWidget {
  const Kisaltma({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: sacffoldBackground,
      height: double.maxFinite,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
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
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Text(
                vceo +
                    "\n" +
                    vebo +
                    "\n" +
                    vz +
                    "\n" +
                    izt +
                    "\n" +
                    zzat +
                    "\n" +
                    zzk +
                    "\n" +
                    izk +
                    "\n" +
                    ir +
                    "\n" +
                    vr +
                    "\n" +
                    ta +
                    "\n" +
                    izm +
                    "\n" +
                    vcbo +
                    "\n" +
                    ic +
                    "\n" +
                    tc +
                    "\n" +
                    ib +
                    "\n" +
                    tstg +
                    "\n" +
                    vdss +
                    "\n" +
                    id +
                    "\n" +
                    idm +
                    "\n" +
                    vgs +
                    "\n" +
                    iar +
                    "\n" +
                    eas +
                    "\n" +
                    pd +
                    "\n" +
                    vdrm +
                    "\n" +
                    vrrm +
                    "\n" +
                    itsm +
                    "\n" +
                    itrms +
                    "\n" +
                    igt,
                style: TextStyle(
                  inherit: false,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
