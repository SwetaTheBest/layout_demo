import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({Key? key}) : super(key: key);

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorite = true;
  int _favCount = 26;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: IconButton(
              padding: const EdgeInsets.all(0),
              onPressed: _toggleFavorite,
              icon: (_isFavorite ? Icon(Icons.star) : Icon(Icons.star_border)),
              color: Colors.red,
            ),
          ),
        ),
        SizedBox(
          child: Text('$_favCount'),
        ),
      ],
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorite == true) {
        _favCount--;
      } else {
        _favCount++;
      }
      _isFavorite = !_isFavorite;
    });
  }
}
