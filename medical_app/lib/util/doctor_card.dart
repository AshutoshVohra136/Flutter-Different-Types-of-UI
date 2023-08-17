import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        decoration: const BoxDecoration(color: Colors.deepPurple),
        child: Column(
          children: [
            Image.asset(
              'lib/images/doctor1.jpg',
              height: 50,
            ),
            const Row(
              children: [
                Icon(Icons.star),
                Text('4.9'),
              ],
            ),
            const Text('Dr. Arlene McCoy'),
            const Text('Therapist, 7 y.e.'),
          ],
        ),
      ),
    );
  }
}
