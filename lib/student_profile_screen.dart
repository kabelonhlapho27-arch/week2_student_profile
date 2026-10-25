import 'package:flutter/material.dart';
import 'package:week2_student_profile/course_tile.dart';
import 'package:week2_student_profile/section_heading.dart';
import 'package:week2_student_profile/student_profile_card.dart';

class StudentProfileScreen extends StatelessWidget {
  const StudentProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Profile'),
        actions: [
          IconButton(
            tooltip: 'Profile Information',
            onPressed: () {
              debugPrint('Profile information pressed');
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SectionHeading(title: 'Student Information'),
              const SizedBox(height: 12),
              const StudentProfileCard(
                name: 'Amina Jacobs',
                studentNumber: 'TC2026001',
                programmme: 'Diploma in Information Technology',
                campus: 'Johannesburg Campus',
                email: 'student@college.ac.za',
              ),
              SizedBox(height: 28),
              const SectionHeading(title: 'Registered Programme'),
              const CourseTile(
                icon: Icons.computer,
                code: 'DIT601',
                title: 'Diploma in Information Technology',
                details: '3 years - NQF Level 6',
              ),
              const SizedBox(height: 28),
              const SectionHeading(title: 'College Information'),
              const SizedBox(height: 12),
              const CollegeInformationCard(),
              const SizedBox(height: 24),
              FilledButton.icon(
                onPressed: () {
                  debugPrint('View programme button pressed');
                },
                icon: const Icon(Icons.menu_book),
                label: const Text('View Programme'),
              ),
              const SizedBox(height: 10),
              OutlinedButton.icon(
                onPressed: () {
                  debugPrint('Contact college button pressed');
                },
                icon: const Icon(Icons.email),
                label: const Text('Contact College'),
              ),

              TextButton(
                onPressed: () {
                  debugPrint('Student help button');
                },
                child: const Text('Student Help'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
