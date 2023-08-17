import 'package:flutter/material.dart';
import 'package:medical_app/util/category_card.dart';
import 'package:medical_app/util/doctor_card.dart';

//  DRIBBLE DESIGN LINK
// https://dribbble.com/shots/17942760-Medical-Mobile-App

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // APP BAR
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Jerome Bell',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.purple[100],
                    backgroundImage: const AssetImage('lib/images/doctor2.jpg'),
                    // child: Image.asset(
                    //   'lib/images/doctor1.jpg',
                    // ),
                  )
                ],
              ),

              const SizedBox(
                height: 15,
              ),
              // CARD HOW DO U FEEL
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 233, 172, 244),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Image.asset(
                        'lib/images/doctor1.jpg',
                        width: 50,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 12,
                            ),
                            const Text(
                              'How do you feel?',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Fill out your medical \nCard Right Now',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Container(
                              padding: const EdgeInsets.all(12.0),
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 135, 131, 253),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Get Started',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // SEARCH BAR
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: 'How can we help you?'),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              // HORIZONTAL LISTVIEW FOR DOCTORS
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryCard(
                      categoryName: 'Dentist',
                      iconImagePath: 'lib/icons/tooth.png',
                    ),
                    CategoryCard(
                        categoryName: 'Surgeon',
                        iconImagePath: 'lib/icons/dentist.png'),
                    CategoryCard(
                        categoryName: 'Pharmisist',
                        iconImagePath: 'lib/icons/medicine.png'),
                    CategoryCard(
                        categoryName: 'Pharmisist',
                        iconImagePath: 'lib/icons/medicine.png'),
                    CategoryCard(
                        categoryName: 'Pharmisist',
                        iconImagePath: 'lib/icons/medicine.png'),
                    CategoryCard(
                        categoryName: 'Pharmisist',
                        iconImagePath: 'lib/icons/medicine.png'),
                  ],
                ),
              ),
              //DOCTORS LIST
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Doctors List',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                  child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  DoctorCard(),
                  DoctorCard(),
                  DoctorCard(),
                  DoctorCard(),
                  DoctorCard(),
                  DoctorCard(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
