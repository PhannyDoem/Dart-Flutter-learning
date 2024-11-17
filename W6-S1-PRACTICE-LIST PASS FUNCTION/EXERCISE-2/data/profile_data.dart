import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:week6/EXERCISE-2/model/profile_tile_model.dart';
 
// ignore: non_constant_identifier_names
ProfileData PannyProfile = ProfileData(
    name: "Phanny",
    position: "Flutter Developer",
    avatarUrl: 'assets/w6-s1/hong.jpg',
    tiles: [
      TileData(icon: Icons.phone, title: "Phone Number", value: "+855 967 8435"),
      TileData(icon: Icons.location_on, title: "Address", value: "1550 Cambodia"),
      TileData(icon: Icons.email, title: "Mail", value: "phanny@cadt.edu"),
    ]);
// ignore: non_constant_identifier_names
ProfileData DollaProfile = ProfileData(
    name: "Dolla",
    position: "Flutter Developer",
    avatarUrl: 'assets/w6-s1/feng.jpg',
    tiles: [
      TileData(icon: Icons.phone, title: "Phone Number", value: "+855 98376332"),
      TileData(icon: Icons.location_on, title: "Address", value: "1500 Cambodia"),
      TileData(icon: Icons.email, title: "Mail", value: "dolla@cadt.edu"),
    ]);