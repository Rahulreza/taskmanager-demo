

import 'package:baseproject/globals/core/path/file_path.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final int progress;
  final Color color;

  const TaskCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.progress,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(subtitle, style: TextStyle(color: color)),
          const SizedBox(height: 8),
          Text(title,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const Spacer(),
          LinearProgressIndicator(
            value: progress / 100,
            color: color,
            backgroundColor: color.withOpacity(0.2),
          ),
          const SizedBox(height: 8),
          Text('$progress%', style: TextStyle(color: color)),
        ],
      ),
    );
  }
}
