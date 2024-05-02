import "package:flutter/material.dart";
import "package:web_sim/widgets/btn_action.dart";

class DetailSimScreen extends StatefulWidget {
  const DetailSimScreen({super.key});

  @override
  State<DetailSimScreen> createState() => _DetailSimScreenState();
}

class _DetailSimScreenState extends State<DetailSimScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: const Column(
        children: [
          BtnAction(
            icon: Icons.image,
            title: 'SIM Nasional',
            description: 'Perpanjang SIM Nasional',
            route: '/',
          ),
        ],
      ),
    );
  }
}
