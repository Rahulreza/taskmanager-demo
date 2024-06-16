import 'package:baseproject/globals/core/path/file_path.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;
  List<Map<String, dynamic>> tasks = [];
  late AddTaskScreen _addTaskScreen;

  @override
  void initState() {
    super.initState();
    _addTaskScreen = AddTaskScreen(
      onAddTask: addTask,
    );
  }

  void addTask(Map<String, dynamic> task) {
    setState(() {
      tasks.add(task);
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pagesList = [
      const HomeScreen(),
      const SearchScreen(),
      _addTaskScreen,
      NotificationsScreen(),
      const ProfileScreen(),
    ];

    return Scaffold(
      body: pagesList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
