import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
          Icon(
            Icons.location_on,
            color: Colors.black,
          ),
          Text(
            'Payment methods',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )
        ]),
        backgroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Edit',
              style: TextStyle(color: Colors.blue, fontSize: 16),
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            child: Card(
              borderOnForeground: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              shadowColor: Colors.black,
              margin: const EdgeInsets.all(15),
              child: SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 10),
                      child: Row(
                        children:  const [
                          Text('Mastercard',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        children:  [
                          Image.asset('assets/icons/mastercardLogo.png',height: 30,),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text('****,53.43',style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 100,
                  offset: const Offset(0.2, 0.3), // changes position of shadow
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
