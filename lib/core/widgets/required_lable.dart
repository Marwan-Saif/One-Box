
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Text requiredLable({required String lable,bool required=false}) {
    return  Text.rich(
          TextSpan(
            children: [
               TextSpan(text: lable, style: const TextStyle(fontSize: 15)),
              TextSpan(
                  text:required? '*':'',
                  style: const TextStyle(color: Colors.red, fontSize: 15)),
            ],
          ),
        );
  }