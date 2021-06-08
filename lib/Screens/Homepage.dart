import 'dart:convert';

import 'package:con_ect/widgets/CustomAppBar.dart';
import 'package:con_ect/widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:system_setting/system_setting.dart';
import 'package:get/get.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  BluetoothConnection connection;

  int _deviceState;

  @override
  void initState() {
    super.initState();
    _deviceState = 1;
  }

  void _sendOnMessageToBluetooth(String signals) async {
    connection.output.add(utf8.encode(signals + "\r\n"));
    await connection.output.allSent;
    Get.showSnackbar(
      GetBar(
        title: "Device On",
        message: "Device Turned On",
        isDismissible: true,
      ),
    );
    setState(() {
      _deviceState = 1; // device on
    });
  }

  void _sendOffMessageToBluetooth(String signals) async {
    connection.output.add(utf8.encode(signals + "\r\n"));
    await connection.output.allSent;
    Get.showSnackbar(
      GetBar(
        title: "Device Off",
        message: "Device Turned Off",
        isDismissible: true,
      ),
    );
    setState(() {
      _deviceState = 0; // device off
    });
  }

  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButtons(
              title: "A0",
              onPressed: () {
                _sendOffMessageToBluetooth("A0");
                print("A0");
              },
            ),
            CustomButtons(
              title: "A1",
              onPressed: () {
                _sendOnMessageToBluetooth("A1");
                print("A1");
              },
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButtons(
                title: "B0",
                onPressed: () {
                  _sendOffMessageToBluetooth("B0");
                }),
            CustomButtons(
              title: "B1",
              onPressed: () {
                _sendOnMessageToBluetooth("B1");
              },
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButtons(
                title: "C0",
                onPressed: () {
                  _sendOffMessageToBluetooth("C0");
                }),
            CustomButtons(
              title: "C1",
              onPressed: () {
                _sendOnMessageToBluetooth("C1");
              },
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButtons(
              title: "D0",
              onPressed: () {
                _sendOffMessageToBluetooth("D0");
              },
            ),
            CustomButtons(
              title: "D1",
              onPressed: () {
                _sendOnMessageToBluetooth("D1");
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButtons(
              title: "E0",
              onPressed: () {
                _sendOffMessageToBluetooth("E0");
              },
            ),
            CustomButtons(
              title: "E1",
              onPressed: () {
                _sendOnMessageToBluetooth("E1");
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButtons(
              title: "F0",
              onPressed: () {
                _sendOffMessageToBluetooth("F0");
              },
            ),
            CustomButtons(
              title: "F1",
              onPressed: () {
                _sendOnMessageToBluetooth("F1");
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButtons(
              title: "G0",
              onPressed: () {
                _sendOffMessageToBluetooth("G0");
              },
            ),
            CustomButtons(
              title: "G1",
              onPressed: () {
                _sendOnMessageToBluetooth("G1");
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButtons(
              title: "H0",
              onPressed: () {
                _sendOffMessageToBluetooth("H0");
              },
            ),
            CustomButtons(
              title: "H1",
              onPressed: () {
                _sendOnMessageToBluetooth("H1");
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButtons(
              title: "I0",
              onPressed: () {
                _sendOffMessageToBluetooth("I0");
              },
            ),
            CustomButtons(
              title: "I1",
              onPressed: () {
                _sendOnMessageToBluetooth("I1");
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButtons(
              title: "J0",
              onPressed: () {
                _sendOffMessageToBluetooth("J0");
              },
            ),
            CustomButtons(
              title: "J1",
              onPressed: () {
                _sendOnMessageToBluetooth("J1");
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButtons(
              title: "K0",
              onPressed: () {
                _sendOffMessageToBluetooth("K0");
              },
            ),
            CustomButtons(
              title: "K1",
              onPressed: () {
                _sendOnMessageToBluetooth("K1");
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButtons(
              title: "L0",
              onPressed: () {
                _sendOffMessageToBluetooth("L0");
              },
            ),
            CustomButtons(
              title: "L1",
              onPressed: () {
                _sendOnMessageToBluetooth("L1");
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButtons(
              title: "M0",
              onPressed: () {
                _sendOffMessageToBluetooth("M0");
              },
            ),
            CustomButtons(
              title: "M1",
              onPressed: () {
                _sendOnMessageToBluetooth("M1");
              },
            ),
          ],
        ),
      ],
    );
  }
}
