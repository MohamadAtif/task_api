import 'package:flutter/material.dart';

// class CustomDrobDownMenu extends StatelessWidget {
//   const CustomDrobDownMenu(

class CustomDropDownMenu extends StatelessWidget {
  CustomDropDownMenu(
      {super.key, this.dropdownValue, this.ontap, this.onChanged});
  // int? selectedItem = 10;
  final VoidCallback? ontap;
  void Function(int?)? onChanged;
  int? dropdownValue = 10;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: DropdownButton<int>(
        dropdownColor: Colors.white60,
        autofocus: true,
        borderRadius: BorderRadius.circular(18),
        value: dropdownValue,
        iconSize: 45.0,
        iconEnabledColor: Colors.blue,
        onTap: ontap,
        items: const [
          DropdownMenuItem(
              value: 10,
              child: Text(
                '10',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )),
          DropdownMenuItem(
              value: 15,
              child: Text('15', style: TextStyle(fontWeight: FontWeight.bold))),
          DropdownMenuItem(
              value: 25,
              child: Text('25', style: TextStyle(fontWeight: FontWeight.bold))),
        ],
        onChanged: onChanged,
      ),
    );
  }
}
