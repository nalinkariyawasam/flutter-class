import 'package:fistapp/util/text.dart';
import 'package:fistapp/widget/reuse_contaniner.dart';
import 'package:fistapp/util/colors.dart';
import 'package:fistapp/util/image.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                color: kYellow,
              ),
              child: Image.network(
                logo,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              textLoginForm,
              style: TextStyle(
                fontSize: 40,
                color: kBlack,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                      labelText: textEnterYourEmail,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.password),
                      labelText: textEnterYourPassword,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: const Center(
                  child: Text(
                    textLogin,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const HomePageTwo(),
                //   ),
                // );
              },
              child: const Text(
                text,
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ReuseContainer(
                  imagePath: imageOne,
                  height: 90.0,
                  width: 90.0,
                  color: kGrey,
                ),
                SizedBox(
                  width: 30,
                ),
                ReuseContainer(
                  imagePath: imageTow,
                  height: 90.0,
                  width: 90.0,
                  color: kGrey,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
