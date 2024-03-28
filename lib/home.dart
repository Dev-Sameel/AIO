import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import 'apikey.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController amountController = TextEditingController();
  late Razorpay razorpay;
  @override
  void initState() {
   // Initialize Razorpay instance
  razorpay = Razorpay();
  // Set up event handlers
  razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, errorHandler);
  razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, successHandler);
  razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, externalWalletHandler);
  super.initState();
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(title: const Text("Razor pay")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: amountController,
              decoration: const InputDecoration(
                hintText: "Amount",
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.0)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.0)),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.0)),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () {
              openCheckout();
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
              child: Text("Pay now"),
            ),
          ),
        ],
      )),
    );
  }

  void errorHandler(PaymentFailureResponse response) {
  // Display a red-colored SnackBar with the error message
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(response.message!),
    backgroundColor: Colors.red,
  ));
}
void successHandler(PaymentSuccessResponse response) {
  // Display a green-colored SnackBar with the payment ID
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(response.paymentId!),
    backgroundColor: Colors.green,
  ));
}
void externalWalletHandler(ExternalWalletResponse response) {
  // Display a green-colored SnackBar with the name of the external wallet used
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(response.walletName!),
    backgroundColor: Colors.green,
  ));
}

void openCheckout() {
  var options = {
    "key": apiKey,
    "amount": num.parse(amountController.text) * 100,
    "name": "test",
    "description": " this is the test payment",
    "timeout": "180",
    "currency": "INR",
    "prefill": {
      "contact": "11111111111",
      "email": "test@abc.com",
    }
  };
  razorpay.open(options);
}
}


