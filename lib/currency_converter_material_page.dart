import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MaterialHomePage extends StatefulWidget {
  const MaterialHomePage({super.key});
  @override
  State<MaterialHomePage> createState() {
    return _CurrencyConverterMaterialPageState();
  }
}

class _CurrencyConverterMaterialPageState extends State<MaterialHomePage> {
  double result = 0;

  final TextEditingController textEditingController = TextEditingController();
  void convert() {
    // print(textEditingController);
    setState(() {
      result = double.parse(textEditingController.text) * 83.59;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Build function should not have any expensive operations
    const myCustomBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      borderSide: BorderSide(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text("Currency Converter",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // main axis for a column is y-axios
          children: [
            Text(
              'INR $result',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                  color: Color.fromARGB(255, 251, 250, 255)),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                maxLength: 10,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ), // this makes keyboard to have numbers onlys
                controller: textEditingController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.attach_money),
                  filled: true,
                  fillColor: Color.fromARGB(240, 255, 255, 255),
                  labelText: 'Enter Amount',
                  hintText: "Please Enter Amount In USD",
                  enabledBorder: myCustomBorder,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: convert,
                  style: TextButton.styleFrom(
                      elevation: (10),
                      backgroundColor: (Colors.black),
                      foregroundColor: (Colors.white),
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                  child: const Text("Convert")),
            )
          ],
        ),
      ),
    );
  }
}
