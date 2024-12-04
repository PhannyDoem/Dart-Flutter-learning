import 'package:flutter/material.dart';

enum Device {
  EURO,
  RIEL,
  DONG,
  BATH,
}

class DeviceConverter extends StatefulWidget {
  const DeviceConverter({super.key});

  @override
  State<DeviceConverter> createState() => _DeviceConverterState();
}

class _DeviceConverterState extends State<DeviceConverter> {
  List<String> devices = ['RIEL', 'DONG', 'EURO', 'BAHT'];
  String? selectedDevice;
  String? result;

  final TextEditingController dollarController = TextEditingController();
  final TextEditingController rielController = TextEditingController();
  final TextEditingController euroController = TextEditingController();
  final TextEditingController dongController = TextEditingController();
  final TextEditingController bahtController = TextEditingController();

  final BoxDecoration textDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
  );

  final Map<Device, double> conversionRates = {
    Device.RIEL: 4000,
    Device.DONG: 23000,
    Device.EURO: 0.92,
    Device.BATH: 34.25,
  };

  void _convertAmount() {
    if (selectedDevice != null && dollarController.text.isNotEmpty) {
      double dollars = double.parse(dollarController.text);
      double? conversionRate = conversionRates[Device.values
          .firstWhere((e) => e.toString().split('.').last == selectedDevice)];

      if (conversionRate != null) {
        double convertedAmount = dollars * conversionRate;
        setState(() {
          result = '${convertedAmount.toStringAsFixed(2)} ${selectedDevice}';
        });
      }
    }
  }

  @override
  void dispose() {
    dollarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.money,
              size: 60,
              color: Colors.white,
            ),
            const Center(
              child: Text(
                "Converter",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            const SizedBox(height: 50),
            const Text("Amount in dollars:"),
            const SizedBox(height: 10),
            TextField(
              controller: dollarController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefix: const Text('\$ '),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 1.0),
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: 'Enter an amount in dollar',
                hintStyle: const TextStyle(color: Colors.white),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 30),
            DropdownButton<String>(
              value: selectedDevice,
              hint: const Text('Select a device'),
              onChanged: (String? newValue) {
                setState(() {
                  selectedDevice = newValue;
                });
                _convertAmount();
              },
              items: devices.map<DropdownMenuItem<String>>((String device) {
                return DropdownMenuItem<String>(
                  value: device,
                  child: Text(device),
                );
              }).toList(),
            ),
            const SizedBox(height: 30),
            const Text("Amount in selected device:"),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: textDecoration,
              child: Text(result ?? ''),
            ),
          ],
        ),
      ),
    );
  }
}
