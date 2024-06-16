import 'package:baseproject/globals/core/path/file_path.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Today\'s tasks',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall,
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  TaskCard(
                    title: 'Homepage design',
                    subtitle: 'Boarding Studio',
                    progress: 70,
                    color: Colors.red,
                  ),
                  SizedBox(width: 16),
                  TaskCard(
                    title: 'Checkout wireframes',
                    subtitle: 'Automotive Shop',
                    progress: 87,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Open projects',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall,
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView(
                children: const [
                  ProjectCard(
                    title: 'Branding Studio',
                    tasks: 21,
                    members: 5,
                    color: Colors.black,
                  ),
                  SizedBox(height: 8),
                  ProjectCard(
                    title: 'Automotive Shop',
                    tasks: 15,
                    members: 3,
                    color: Colors.green,
                  ),
                  SizedBox(height: 8),
                  ProjectCard(
                    title: 'Creative Hub',
                    tasks: 48,
                    members: 8,
                    color: Colors.purple,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
