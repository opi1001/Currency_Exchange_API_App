import 'package:currency_exchange_api_app/model/currency_model.dart';
import 'package:flutter/material.dart';

class AllCurrency extends StatelessWidget {
  final CurrencyModel currencyModel;
  const AllCurrency({super.key, required this.currencyModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            currencyModel.code.toString(),
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
