import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Row(
          children: [
            const SizedBox(
              width: 60,
            ),
            Image.asset(
              'assets/icons/order.png',
              height: 40,
            ),
            const Text(
              "Order",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Text(
              'Process',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Delivered',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Canceled',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: ((context, index) {
            return Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  height: 150,
                  width: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(children: const [
                        Text(
                          'Order ID : 10069',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 145,
                        ),
                        Text(
                          '15-2-2022',
                        ),
                      ]),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Text('Seller: '),
                          // name
                          Text(
                            'Hin  Chanritheavuth',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: const [
                          Text('Quantity: '),
                          // name
                          Text(
                            '70',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Text('Total Amount: '),
                          Text(
                            '54.87\$',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.only(left: 15, top: 5),
                              height: 30,
                              width: 80,
                              child: const Text('Details'),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.only(left: 13, top: 5),
                              height: 30,
                              width: 80,
                              child: const Text('Tracking'),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey,
                              ),
                            ),
                          )
                        ],
                      ),
                      const Padding(
                          padding: EdgeInsets.only(left: 250),
                          child: Text(
                            'Delivery',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 4,
                        blurRadius: 3,
                        offset: const Offset(0.11, 0.2),
                      ),
                    ],
                  ),
                ),
              ],
            );
          })),
    );
  }
}
