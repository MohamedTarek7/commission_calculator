import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  static var commission = 10;
  static var clients = 1;
  static var fare = 0.0;
  static var sell = 0.0;
  static var profit = 0.0;
  static var discount = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffcacaca), // light grey color
        appBar: AppBar(
          backgroundColor: const Color(0xffcacaca),
          elevation: 0.2,
          shadowColor: const Color(0xff343434),
          centerTitle: true,
          title: const Text(
            'Commission Calculator',
            style: TextStyle(
              color: Color(0xff343434),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Commission',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      Container(
                        width: 160,
                        decoration: BoxDecoration(
                          color: const Color(0xff343434),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                if (commission > 0) {
                                  setState(() {
                                    commission--;
                                    sell = (((commission / 100.0) *
                                            (fare * clients)) +
                                        (fare * clients));
                                    profit = ((commission / 100.0) *
                                        (fare * clients));
                                    discount = (((10 - commission) / 10.0) *
                                        ((10.0 / 100.0) * (fare * clients)));
                                  });
                                }
                              },
                              icon: const Icon(
                                Icons.remove,
                                color: Color(0xff343434),
                                size: 30,
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffcacaca),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '$commission%',
                              style: const TextStyle(
                                fontSize: 21.0,
                                color: Color(0xffcacaca),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                if (commission < 10) {
                                  setState(() {
                                    commission++;
                                    sell = (((commission / 100.0) *
                                            (fare * clients)) +
                                        (fare * clients));
                                    profit = ((commission / 100.0) *
                                        (fare * clients));
                                    discount = (((10 - commission) / 10.0) *
                                        ((10.0 / 100.0) * (fare * clients)));
                                  });
                                }
                              },
                              icon: const Icon(
                                Icons.add,
                                color: Color(0xff343434),
                                size: 30,
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffcacaca),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Clients',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      Container(
                        width: 160,
                        decoration: BoxDecoration(
                          color: const Color(0xff343434),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                if (clients > 1) {
                                  setState(() {
                                    clients--;
                                    sell = (((commission / 100.0) *
                                            (fare * clients)) +
                                        (fare * clients));
                                    profit = ((commission / 100.0) *
                                        (fare * clients));
                                    discount = (((10 - commission) / 10.0) *
                                        ((10.0 / 100.0) * (fare * clients)));
                                  });
                                }
                              },
                              icon: const Icon(
                                Icons.remove,
                                color: Color(0xff343434),
                                size: 30,
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffcacaca),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '$clients',
                              style: const TextStyle(
                                fontSize: 21.0,
                                color: Color(0xffcacaca),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                if (clients < 10) {
                                  setState(() {
                                    clients++;
                                    sell = (((commission / 100.0) *
                                            (fare * clients)) +
                                        (fare * clients));
                                    profit = ((commission / 100.0) *
                                        (fare * clients));
                                    discount = (((10 - commission) / 10.0) *
                                        ((10.0 / 100.0) * (fare * clients)));
                                  });
                                }
                              },
                              icon: const Icon(
                                Icons.add,
                                color: Color(0xff343434),
                                size: 30,
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffcacaca),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Fare',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      SizedBox(
                        width: 160,
                        height: 48,
                        child: TextField(
                          onChanged: (value) {
                            if (value.isEmpty) {
                              fare = 0.0;
                              setState(() {
                                sell =
                                    (((commission / 100.0) * (fare * clients)) +
                                        (fare * clients));
                                profit =
                                    ((commission / 100.0) * (fare * clients));
                                discount = (((10 - commission) / 10.0) *
                                    ((10.0 / 100.0) * (fare * clients)));
                              });
                            }
                            if (value.isNotEmpty) {
                              fare = num.parse(value).toDouble();
                              setState(() {
                                sell =
                                    (((commission / 100.0) * (fare * clients)) +
                                        (fare * clients));
                                profit =
                                    ((commission / 100.0) * (fare * clients));
                                discount = (((10 - commission) / 10.0) *
                                    ((10.0 / 100.0) * (fare * clients)));
                              });
                            }
                          },
                          style: const TextStyle(
                            color: Color(0xff343434),
                            fontSize: 21,
                          ),
                          autofocus: false,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Type here',
                            hintStyle: const TextStyle(fontSize: 18.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            // labelText: 'Fare',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sell',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        width: 160,
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color(0xff343434),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${sell.toStringAsFixed(1)}',
                              style: const TextStyle(
                                fontSize: 21.0,
                                color: Color(0xffcacaca),
                              ),
                            ),
                            const Text(
                              'EGP',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Color(0xffcacaca),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Profit',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        width: 160,
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color(0xff343434),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${profit.toStringAsFixed(1)}',
                              style: const TextStyle(
                                fontSize: 21.0,
                                color: Color(0xffcacaca),
                              ),
                            ),
                            const Text(
                              'EGP',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Color(0xffcacaca),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Discount',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        width: 160,
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color(0xff343434),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${discount.toStringAsFixed(1)}',
                              style: const TextStyle(
                                fontSize: 21.0,
                                color: Color(0xffcacaca),
                              ),
                            ),
                            const Text(
                              'EGP',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Color(0xffcacaca),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
