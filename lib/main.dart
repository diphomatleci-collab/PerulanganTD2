import 'package:flutter/material.dart';

void main() {
  runApp(Tes());
}

class Tes extends StatelessWidget {
  final List<String> menu = ["Soto", "Rawon"];
  final List<int> harga = [10000, 15000];
  final List<String> gambar = [
    "assets/soto.jpeg",
    "assets/rawon.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Menu Makanan"),
        ),
        body: Table(
          border: TableBorder.all(width: 2),
          children: [
            //Header
            TableRow(
              children: [
                Text("No"),
                Text("Gambar"),
                Text("Menu"),
                Text("Harga"),
                Text("Porsi"),
              ],
            ),
            //Data dari array
            for (int i = 0; i < menu.length; i++)
              TableRow(
                children: [
                  Text("${i + 1}"),
                  Image.asset(
                    gambar[i],
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  Text(menu[i]),
                  Text("Rp${harga[i]}"),

                  //Text Field
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Porsi",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
