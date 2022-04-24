import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/controller/demoController.dart';

class DemoPage extends StatelessWidget {
  final DemoController ctrl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                Get.arguments.toString()
              ),
            ),
            SwitchListTile(
              value: ctrl.isDark, 
              title: Text("Touch to change ThemeMode"),
              onChanged: ctrl.changeTheme,
            ),
            ElevatedButton(onPressed: () => Get.snackbar(
              'Snackbar', 
              'This is a snackbar', 
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.white,
              colorText: Colors.black87,
              ), 
              child: Text('Show Snackbar'),),
            ElevatedButton(onPressed: () => Get.defaultDialog(
              title: 'Dialog', 
              content: Text('This is a dialog'),),
              child: Text('Dialogue')),
            ElevatedButton(onPressed: () => Get.bottomSheet(Container(
              height: 150,
              color: Colors.white,
              child: Text('Hello From Bottom Sheet', style: TextStyle(fontSize: 30.0),
              ),
            )),
            child: Text('Bottom Sheet')),
            ElevatedButton(onPressed: () => Get.offNamed('/'),
            child: Text('Back to Home')),
          ],
        ),
      ),
    );
  }
}