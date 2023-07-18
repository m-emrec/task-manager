import 'package:flutter/material.dart';
import 'package:todo/utils/shared/circle_container.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(70)),
          boxShadow: [
            BoxShadow(
              color: Color(0x0A101828),
              blurRadius: 4,
              offset: Offset(0, 2),
              spreadRadius: -2,
            ),
            BoxShadow(
              color: Color(0x0F101828),
              blurRadius: 10,
              offset: Offset(0, 3),
              spreadRadius: -2,
            )
          ],
        ),
        child: const SearchBar(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
          elevation: MaterialStatePropertyAll<double>(0),
          shadowColor: MaterialStatePropertyAll(Color(0x0A101828)),
          leading: CircleContainer(
            padding: 6,
            child: Icon(Icons.search),
          ),
          hintText: "Search task..",
          hintStyle: MaterialStatePropertyAll<TextStyle>(
            TextStyle(
              color: Color(0xFF7D89AF),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
