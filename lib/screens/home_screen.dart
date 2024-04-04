import 'package:flutter/material.dart';

import '../components/text_field.dart';
import '../const/container_decoration.dart';
import '../const/text_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Generative AI', style: ConstantTextStyle.appBar),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return const SizedBox();
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 10);
                    },
                    itemCount: 2)
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                decoration: ContainerDecoration.decoration,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: [
                      Expanded(child: HomeTextField(controller: controller)),
                      IconButton(
                        icon: const Icon(Icons.send),
                        onPressed: () {},
                        color: Colors.indigo,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
