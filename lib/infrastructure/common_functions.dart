import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:convert';

import 'dart:math';
import 'dart:convert'; // For base64 encoding

String generateUniqueChecksum() {
  final uniqueData = StringBuffer();
  uniqueData.write(DateTime.now().microsecondsSinceEpoch.toString());
  uniqueData.write(Random().nextInt(1000000).toString());
  // Add more unique identifiers if available (e.g., device ID, app version)

  final bytes = utf8.encode(uniqueData.toString());
  final checksum = base64Encode(bytes); // Base64 encode for readability
  return checksum;
}
