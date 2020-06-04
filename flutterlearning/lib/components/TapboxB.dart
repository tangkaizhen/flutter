import 'package:flutter/material.dart';

class  TapboxB extends StatelessWidget {
  final bool active;
  final ValueChanged<bool> onChanged;

  const TapboxB({Key key, this.active: false, @required this.onChanged}) : super(key: key);

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            active ? 'Active' : 'Inactive',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: active?Colors.lightGreen[700]:Colors.grey[600]
        ),
      ),
    );
  }
}