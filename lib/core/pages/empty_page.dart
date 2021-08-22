import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {

  final String? message;

  const EmptyPage({this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          message!,
        ),
    );
  }
}
