import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  bool isSwitched = false;
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/mac-screen.png'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.red,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              color: Colors.blueGrey,
              child: const Center(
                child: Text(
                  'Some text...',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitched ? Colors.blue : Colors.lightBlue,
              ),
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Text Button'),
            ),
            GestureDetector(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home, color: Colors.red),
                  Text('Gesture Detector...'),
                  Icon(Icons.home, color: Colors.red),
                ],
              ),
            ),
            Switch(
              activeColor: Colors.red,
              value: isSwitched,
              onChanged: (bool state) {
                setState(() {
                  isSwitched = state;
                });
              },
            ),
            Checkbox(
              value: isChecked,
              onChanged: (bool? state) {
                setState(
                  () {
                    isChecked = state;
                  },
                );
              },
            ),
            Image.network(
                'https://flowbite.s3.amazonaws.com/docs/gallery/square/image-1.jpg')
          ],
        ),
      ),
    );
  }
}
