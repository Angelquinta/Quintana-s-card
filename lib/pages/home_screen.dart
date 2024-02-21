import 'package:flutter/material.dart';

Color hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter card')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //4 childs  in a row
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                    width: MediaQuery.of(context).size.width * 0.30,
                    child: Container(
                      color: hexToColor('#E6F0FA'),
                      child: const Center(
                        child: Text('Strawberry Pavlova', 
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Fila 2
                  SizedBox(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.30,
                    child: Container(
                      color: hexToColor('#E6F0FA'),
                      child: const Center(
                        child: Text('Pavlova is a meringue-based dessert named the Russian ballerine Anna Pavlova. Pavlova featues a crisp crust and soft, light inside, topped with fruit and whispped cream.')),
                    ),
                  ),
                  // Fila 3
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 20,
                    width: MediaQuery.of(context).size.width * 0.30,
                    child: Container(
                      color: hexToColor('#E6F0FA'),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('* * * * *'),
                          Text('170 Reviews')
                        ],),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Fila 4
                  SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.30,
                    child: Container(
                      color: hexToColor('#E6F0FA'),
                      child: const Center(
                        child: Text('Aqui falta mucho trabajo')),
                    ),
                  ),
                  const SizedBox(height: 30)
                ],
              ),

            // Second column 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.55,
                      height: 250,
                      child: Image.asset('assets/images/pavlova.jpg', fit: BoxFit.cover), // Use appropriate color(s)
                    ),
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