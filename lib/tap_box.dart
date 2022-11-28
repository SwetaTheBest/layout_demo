import 'package:flutter/material.dart';

class TapBox extends StatefulWidget {
  const TapBox({
    Key? key,
    this.active = false,
    required this.onChanged,
  }) : super(key: key);
  final bool active;
  final ValueChanged<bool> onChanged;

  @override
  State<TapBox> createState() => _TapBoxState();
}

class _TapBoxState extends State<TapBox> {
  void _handelTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handelTap,
      child: Container(
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
            color: widget.active ? Colors.lightGreen[700] : Colors.grey[600]),
        child: Center(
          child: Text(
            widget.active ? 'Active' : 'Inactive',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
