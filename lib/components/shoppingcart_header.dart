import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/constants.dart';

class ShoppingCartHeader extends StatefulWidget {
  @override
  State<ShoppingCartHeader> createState() => _ShoppingCartHeaderState();
}

class _ShoppingCartHeaderState extends State<ShoppingCartHeader> {
  int selectedId = 0;
  List<String> selectedPic = [
    "assets/p1.jpeg",
    "assets/p2.jpeg",
    "assets/p3.jpeg",
    "assets/p4.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeaderPic(),
        _buildHeaderSelector(),
      ],
    );
  }

  _buildHeaderPic() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AspectRatio(
        aspectRatio: 5 / 3,
        child: Image.asset(
          selectedPic[selectedId],
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildHeaderSelector() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildHeaderSelectButton(0, Icons.directions_bike),
          _buildHeaderSelectButton(1, Icons.motorcycle),
          _buildHeaderSelectButton(2, CupertinoIcons.car_detailed),
          _buildHeaderSelectButton(3, CupertinoIcons.airplane),
        ],
      ),
    );
  }

  Widget _buildHeaderSelectButton(int id, IconData mIcon) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: id == selectedId ? kAccentColor : kSecondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        icon: Icon(mIcon, color: Colors.black),
        onPressed: () {
          setState(() {
            selectedId = id;
          });
        },
      ),
    );
  }
}
