import 'package:flutter/material.dart';

class MainFloatingActions extends StatelessWidget {
  const MainFloatingActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 5,
      children: [
        FloatingActionButton(
          onPressed: () => {},
          child: const Icon(Icons.add_rounded),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            padding: const EdgeInsets.fromLTRB(8, 2, 4, 2),
            backgroundColor: const Color.fromRGBO(103, 0, 255, 1),
            minimumSize: const Size(0, 0),
          ),
          onPressed: () => {},
          child: const Row(
            children: [
              Text(
                'Built in',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(width: 3),
              Icon(
                Icons.air,
                color: Colors.white,
                size: 28,
              )
            ],
          ),
        ),
      ],
    );
  }
}
