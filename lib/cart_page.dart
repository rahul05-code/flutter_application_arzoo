import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart Page')),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => cartItem(),
      ),
    );
  }

  Widget cartItem() {
    return Card(
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            Container(height: 100, width: 100, color: Colors.deepPurple),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Prodcut Name', style: TextStyle(fontSize: 30)),
                  Text('Description', style: TextStyle(fontSize: 15)),
                ],
              ),
            ),
            Text("500", style: TextStyle(fontSize: 50)),
          ],
        ),
      ),
    );
  }
}
