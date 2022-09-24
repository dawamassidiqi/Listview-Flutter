import 'package:flutter/material.dart';

class TopNews extends StatelessWidget {
  const TopNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 12,
      ),
      color: Colors.purple,
      child: Column(
        children: [
          Container(
            height: 240.0,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(0.0),
            child: Image.asset(
              'images/diego.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            color: Colors.white,
            child: const Center(
              child: Text(
                'Costa Berlari',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            color: Colors.purple,
            width: MediaQuery.of(context).size.width,
            child: const Text("Transfer"),
          ),
        ],
      ),
    );
  }
}
