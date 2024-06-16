import 'package:baseproject/globals/core/path/file_path.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final int tasks;
  final int members;
  final Color color;

  const ProjectCard(
      {super.key,
      required this.title,
      required this.tasks,
      required this.members,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color,
          child: Text(title[0], style: const TextStyle(color: Colors.white)),
        ),
        title: Text(title),
        subtitle: Text('$tasks tasks - $members members'),
      ),
    );
  }
}
