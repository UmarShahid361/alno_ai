import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

void debugLog(message){
  Logger logger = Logger();
  logger.d(message);
}

void errorLog(message){
  Logger logger = Logger();
  logger.d(message);
}

Color resolveCustomColor({required BuildContext context, required Color lightColor, required Color darkColor}){
  Brightness brightness = Theme.of(context).brightness;
  return brightness == Brightness.light ? lightColor : darkColor;
}