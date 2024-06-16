import 'package:baseproject/globals/core/path/file_path.dart';


class AddTaskScreen extends StatefulWidget {
  final Function(Map<String, dynamic>) onAddTask;

  const AddTaskScreen({super.key, required this.onAddTask});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final _titleController = TextEditingController();
  final _subtitleController = TextEditingController();
  final _progressController = TextEditingController();
  Color _selectedColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: _subtitleController,
              decoration: const InputDecoration(labelText: 'Subtitle'),
            ),
            TextField(
              controller: _progressController,
              decoration: const InputDecoration(labelText: 'Progress'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Text('Color:'),
                const SizedBox(width: 16),
                BuildColorPicker(
                  color: Colors.red,
                  selectedColor: _selectedColor,
                  onTap: () {
                    setState(() {
                      _selectedColor = Colors.red;
                    });
                  },
                ),
                BuildColorPicker(
                  color: Colors.blue,
                  selectedColor: _selectedColor,
                  onTap: () {
                    setState(() {
                      _selectedColor = Colors.blue;
                    });
                  },
                ),
                BuildColorPicker(
                  color: Colors.green,
                  selectedColor: _selectedColor,
                  onTap: () {
                    setState(() {
                      _selectedColor = Colors.green;
                    });
                  },
                ),
                BuildColorPicker(
                  color: Colors.purple,
                  selectedColor: _selectedColor,
                  onTap: () {
                    setState(() {
                      _selectedColor = Colors.purple;
                    });
                  },
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                final newTask = {
                  'title': _titleController.text,
                  'subtitle': _subtitleController.text,
                  'progress': int.parse(_progressController.text),
                  'color': _selectedColor,
                };
                widget.onAddTask(newTask);
               // Navigator.pop(context);
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: const Text('Add Task'),
            ),
          ],
        ),
      ),
    );
  }
}

