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
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
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
            color: widget.index_container_size == true ? pinklight : white,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/frappe.png',
                width: widget.imgSize.toDouble(),
                color: widget.index_container_size == true ? pink : black,
              ),
              Text(widget.size,
                  style: GoogleFonts.cairo(
                    textStyle: widget.index_container_size == true
                        ? TextStyle(
                        fontSize: 25, fontWeight: FontWeight.w800, color: pink)
                        : TextStyle(
                  fontSize: 25, fontWeight: FontWeight.w800, color: gray),
                  )),
              Text(
                widget.ml,
                style: widget.index_container_size == true
                    ? TextStyle(
                    fontSize: 25, fontWeight: FontWeight.w800, color: pink)
                    : TextStyle(
                    fontSize: 25, fontWeight: FontWeight.w800, color: gray),
              ),
            ]),
      ),
    );
  }
}
