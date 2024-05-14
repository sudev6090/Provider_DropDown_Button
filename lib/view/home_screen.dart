import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_dropdown_button_app/controller/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provide = Provider.of<FunctionPro>(context);
    return Scaffold(
      backgroundColor: provide.bgcolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
                value: provide.dropvalue,
                items: provide.Items.map((String value) {
                  return DropdownMenuItem(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (newValue) {
                  provide.changeValue(newValue);
                })
          ],
        ),
      ),
    );
  }
}
