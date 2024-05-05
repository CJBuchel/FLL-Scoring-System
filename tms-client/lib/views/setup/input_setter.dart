import 'package:flutter/material.dart';

class InputSetter extends StatefulWidget {
  final String label;
  final String? info;
  final Widget input;
  final Future<void> Function() onSet;
  final double height;

  InputSetter({
    this.info,
    required this.label,
    required this.input,
    required this.onSet,
    this.height = 70,
  });

  @override
  State<InputSetter> createState() => _InputSetterState();
}

class _InputSetterState extends State<InputSetter> {
  Future<void>? _future;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          height: widget.height,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Text(widget.label),
              ),
              Expanded(
                flex: 2,
                child: widget.input,
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: FutureBuilder(
                    future: _future,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      } else {
                        return IconButton(
                          icon: const Icon(Icons.send),
                          onPressed: () {
                            setState(() {
                              _future = widget.onSet();
                            });
                          },
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 0.2,
        ),
      ],
    );
  }
}