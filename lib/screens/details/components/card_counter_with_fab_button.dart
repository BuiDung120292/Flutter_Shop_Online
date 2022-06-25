import 'package:flutter/material.dart';
import '/screens/details/components/card_counter.dart';

class CardCounterWithFabButton extends StatelessWidget {
  const CardCounterWithFabButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CardCounter(),
        Container(
          width: 32,
          height: 32,
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: Color(0xffff6464),
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            "assets/icons/heart.png",
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
