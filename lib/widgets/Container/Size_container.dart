import 'package:ecommerce_fresh_app/Constant/my_Style/My_Style.dart';
import 'package:flutter/material.dart';

import '../../Constant/My_colors/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeContainer extends StatefulWidget {
  final bool index_container_size;
  final Function ontap;
  final String size;
  final String ml;
  final double imgSize;

  const SizeContainer(
      {required this.imgSize,
      required this.ml,
      required this.size,
      Key? key,
      required this.index_container_size,
      required this.ontap})
      : super(key: key);

  @override
  _SizeContainerState createState() => _SizeContainerState();
}

class _SizeContainerState extends State<SizeContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.ontap();
      },
      child: Container(
        height: 100,
        width: sizeFromWidth(context, 4),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        // padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 2),
              )
            ],
            color: widget.index_container_size == true ? pinkClear : white,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Image.asset(
            'assets/images/frappe.png',
            width: 60,
            color: black,
          ),
          Text(widget.size,
              style: GoogleFonts.cairo(
                textStyle: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: gray),
              )),
          Text(
            widget.ml,
            style: GoogleFonts.cairo(
              textStyle: const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w500, color: gray),
            ),
          ),
        ]),
      ),
    );
  }
}
