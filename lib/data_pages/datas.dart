import 'package:flutter/material.dart';

class Datas {
  final String name;
  final String subtitles;
  final String dates;
  final String doctror_name;
  Datas(
      {required this.name,
      required this.subtitles,
      required this.dates,
      required this.doctror_name});
}

List<Datas> Data_Page = [
  Datas(
      name: "1. VIKRAM SING",
      subtitles: "couple combo package (rajeevan....)",
      dates: "28/08/2002",
      doctror_name: "jithes"),
      Datas(
      name: "2. RAJENDRA PRASAD",
      subtitles: "single combo offer (shasheendran....)",
      dates: "08/04/2012",
      doctror_name: "jayachandran"),
      Datas(
      name: "3. MUNEEFUL AZEEM",
      subtitles: "doble damaka offer (shahana....)",
      dates: "12/06/2004",
      doctror_name: "hamsappa"),
      Datas(
      name: "4. MAALOOF NASAR",
      subtitles: "jimakka ttamakka offer (riyasudheen.....)",
      dates: "30/12/2015",
      doctror_name: "staphin"),
];
