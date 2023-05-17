import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataList {
  String? text, emoji,details,about;
  double ?rate;
  DataList({required this.emoji,required this.text,this.rate,this.details,this.about});
}

List<DataList> symptoms = [
  DataList(
    text: "Temperature",
    emoji: "assets/images/temp.png"
  ),
  DataList(
      text: "Snuffle",
      emoji: "assets/images/snuff.png"
  ),
  DataList(
      text: "Headache",
      emoji: "assets/images/head.png"
  ),
  DataList(
      text: "Temperature",
      emoji: "assets/images/temp.png"
  ),
  DataList(
      text: "Snuffle",
      emoji: "assets/images/snuff.png"
  ),
  DataList(
      text: "Headache",
      emoji: "assets/images/head.png"
  ),
];

List<DataList> doctors = [
  DataList(
    text: "Dr. Chris Frazier",
    emoji: "assets/images/male.png",
    details: "Pediatrician",
    about: "Dr. Chris Frazier's is an experienced specialist who is constantly working on improving her skills.",
    rate: 5.0
  ),DataList(
    text: "Dr. Viola Dunn",
    emoji: "assets/images/female.png",
    details: "Therapist",
    about: "Dr. Viola Dunn's is an experienced specialist who is constantly working on improving her skills.",
    rate: 4.9
  ),
  DataList(
      text: "Dr. Chris Frazier",
      emoji: "assets/images/male.png",
      details: "Pediatrician",
      about: "Dr. Chris Frazier's is an experienced specialist who is constantly working on improving her skills.",
      rate: 5.0
  ),DataList(
      text: "Dr. Viola Dunn",
      emoji: "assets/images/female.png",
      details: "Therapist",
      about: "Dr. Viola Dunn's is an experienced specialist who is constantly working on improving her skills.",
      rate: 4.9
  ),
  DataList(
      text: "Dr. Chris Frazier",
      emoji: "assets/images/male.png",
      details: "Pediatrician",
      about: "Dr. Chris Frazier's is an experienced specialist who is constantly working on improving her skills.",
      rate: 5.0
  ),DataList(
      text: "Dr. Viola Dunn",
      emoji: "assets/images/female.png",
      details: "Therapist",
      about: "Dr. Viola Dunn's is an experienced specialist who is constantly working on improving her skills.",
      rate: 4.9
  ),
];

class BottomNev{
  Icon icon;
  String text;
  BottomNev({required this.text,required this.icon});
}

