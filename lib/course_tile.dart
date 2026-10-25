import 'package:flutter/material.dart';

class CourseTile extends StatelessWidget {
  final IconData icon;
  final String code;
  final String title;
  final String details;

  const CourseTile({
    super.key,
    required this.icon,
    required this.code,
    required this.title,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(child: Icon(icon)),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('$code\n$details'),
        isThreeLine: true,
        trailing: const Icon(Icons.school),
      ),
    );
  }
}
