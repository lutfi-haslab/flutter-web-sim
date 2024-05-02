import "package:flutter/material.dart";
import 'package:web_sim/widgets/btn_action.dart';
import 'package:web_sim/widgets/container_alert.dart';
import 'package:web_sim/widgets/sliders.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80'
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Sliders(),
        SizedBox(
          height: 30,
        ),
        BtnAction(
          icon: Icons.image,
          title: 'SIM Nasional',
          description: 'Perpanjang SIM Nasional',
          route: '/detail-sim',
        ),
        SizedBox(
          height: 16,
        ),
        BtnAction(
          icon: Icons.image,
          title: 'SIM Nasional',
          description: 'Perpanjang SIM Nasional',
          route: '/detail-sim',
        ),
        SizedBox(
          height: 30,
        ),
        ContainerAlert(
          title: 'Tentang SIM',
          description:
              'Surat Izin Mengemudi (SIM) adalah bukti tertulis yang diberikan oleh Polri untuk sesorang yang telah memenuhi persyaratan sebagai pengemudi kendaraan bermotor.',
        )
      ],
    ));
  }
}
