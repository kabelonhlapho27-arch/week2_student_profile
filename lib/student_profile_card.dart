import 'package:flutter/material.dart';
import 'package:week2_student_profile/profile_information_row.dart';

class StudentProfileCard extends StatelessWidget {
  final String name;
  final String studentNumber;
  final String programmme;
  final String campus;
  final String email;

  const StudentProfileCard({
    super.key,
    required this.name,
    required this.studentNumber,
    required this.programmme,
    required this.campus,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 48,
              backgroundImage: AssetImage('assets/images/download.jpg'),
            ),
            const SizedBox(height: 16),
            Text(
              name,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Text(programmme, textAlign: TextAlign.center),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 20),
            ProfileInformationRow(
              icon: Icons.badge,
              label: 'Student Number',
              value: studentNumber,
            ),
            const SizedBox(height: 16),
            ProfileInformationRow(
              icon: Icons.location_city,
              label: 'Campus',
              value: campus,
            ),
            const SizedBox(height: 16),
            ProfileInformationRow(
              icon: Icons.email,
              label: 'Email',
              value: email,
            ),
          ],
        ),
      ),
    );
  }
}

class CollegeInformationCard extends StatelessWidget {
  const CollegeInformationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Central University of Technology',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Central University provides '
              'career focused programmes in '
              'technology, business and finance. ',
            ),
            SizedBox(height: 16),
            Divider(),
            SizedBox(height: 16),
            ProfileInformationRow(
              icon: Icons.location_on,
              label: 'Campus',
              value: 'Johanneburg',
            ),
            SizedBox(height: 14),
            ProfileInformationRow(
              icon: Icons.phone,
              label: 'Telephone',
              value: '+27 11 555 0100',
            ),
            SizedBox(height: 14),
            ProfileInformationRow(
              icon: Icons.email,
              label: 'Email',
              value: 'info@centraluniversityoftechnology.ac.za',
            ),
          ],
        ),
      ),
    );
  }
}
