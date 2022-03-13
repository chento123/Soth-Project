import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> action = ["Edit", "Chancel"];
  var n = 0;
  var n1 = 0;
  int val = 1;
  bool _value = false;
  List<Color> bordercorlor = [Colors.black, Colors.black, Colors.white];
  List<Color> insizecolor = [Colors.white, Colors.green, Colors.white];

  get child => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: SizedBox(
          child: Row(children: const [
            Icon(
              Icons.location_on,
              color: Colors.black,
            ),
            Text(
              '  Delivery Location',
              style: TextStyle(color: Colors.black),
            ),
          ]),
        ),
        actions: [
          TextButton(
            child: Text(
              action[n],
              style: const TextStyle(fontSize: 17, color: Colors.green),
            ),
            onPressed: () {
              setState(() {
                if (n == 0) {
                  n++;
                } else {
                  n--;
                }
              });
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Column(children: [
          SizedBox(
            width: 500,
            height: 520,
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 165,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              spreadRadius: 4,
                              blurRadius: 3,
                              offset: const Offset(
                                  0.11, 0.2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'Default',
                                ),
                                SizedBox(
                                  width: 210,
                                ),
                                Text(
                                  'Phnom Penh',
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Row(
                                children: const [
                                  //location home or shop or resturant
                                  Text(
                                    'Home',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 5),
                                  // location name and phone number
                                  Text('(Hanf Chanthavy, 085 894 656)'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Row(
                                children: [
                                  Radio(
                                    value: index,
                                    groupValue: val,
                                    onChanged: (value) {
                                      setState(() {});
                                    },
                                    activeColor: Colors.green,
                                  ),
                                  const Text('Khan Russey Keo'
                                      'Sangkat Chreang Chamreh 1,')
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Row(
                                children: const [Text('P02,N14,Phnom Penh')],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Row(
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Edit',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Set To Default',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              onPressed: () {},
              child: const SizedBox(
                width: 200,
                height: 50,
                child: Center(
                    child: Text(
                  'Add Location',
                  style: TextStyle(fontSize: 25),
                )),
              )),
        ]),
      ),
    );
  }
}
