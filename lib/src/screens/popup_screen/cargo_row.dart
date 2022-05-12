import 'package:flutter/material.dart';

class CargoRow extends StatelessWidget {
  const CargoRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            children: const [
              Text('Cargo'),
              Spacer(),
              Text('USD\$1,750')
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 7),
            child: Divider(
              thickness: 2,
            ),
          ),
        ],
      ),
    );
  }
}
