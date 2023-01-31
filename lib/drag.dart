import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class APPBAR extends StatelessWidget {
  const APPBAR({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(15),
    bottomLeft: Radius.circular(15),
    ),
    ),
    title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:[