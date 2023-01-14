import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


import '../../../providers/Navbar_provider.dart';
import '../../../providers/changescreen.dart';

class Account extends StatelessWidget {
  const Account({super.key});
  
  @override
  Widget build(BuildContext context) {
    final cs = Provider.of<ChangeScreen>(
      context,
    );
    return Scaffold(
        body: cs.account);
  }
}




