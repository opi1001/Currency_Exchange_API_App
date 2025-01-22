import 'package:country_currency_pickers/country.dart';
import 'package:country_currency_pickers/country_pickers.dart';
import 'package:country_currency_pickers/currency_picker_dropdown.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String selectedCurrency = 'USD';

  Widget _buildCurrencyDropdownItem(Country country) => Container(
        child: Row(
          children: <Widget>[
            CountryPickerUtils.getDefaultFlagImage(country),
            const SizedBox(
              width: 8.0,
            ),
            Text("${country.currencyName}"),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(height: 8),
          const Center(
            child: Text(
              "Base Currency",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            margin: const EdgeInsets.all(8),
            child: CountryPickerDropdown(
              initialValue: 'us',
              itemBuilder: _buildCurrencyDropdownItem,
              onValuePicked: (Country? country) {
                setState(() {
                  selectedCurrency = country?.currencyCode ?? "";
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
