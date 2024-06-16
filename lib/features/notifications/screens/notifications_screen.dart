import 'package:baseproject/globals/core/path/file_path.dart';

class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({super.key});

  final List<NotificationItem> notifications = [
    NotificationItem(
      icon: Icons.flight,
      title: 'Reminder: You better be ready! flight is tomorrow at 9am',
      time: '24min ago',
      color: Colors.purple,
    ),
    NotificationItem(
      icon: Icons.event,
      title: 'Reminder: You have 1 invitation tonight at 17pm',
      time: '2h 17min ago',
      color: Colors.green,
    ),
    NotificationItem(
      icon: Icons.hotel,
      title: 'Reminder: There is only 1 day left to reserve your hotel room!',
      time: 'Yesterday, 17:35 pm',
      color: Colors.orange,
    ),
    NotificationItem(
      icon: Icons.directions_car,
      title: 'Reminder: Your transfer from the hotel to airport at 5pm',
      time: 'Sunday, 06:15 pm',
      color: Colors.blue,
    ),
    NotificationItem(
      icon: Icons.local_offer,
      title: 'Offer: Off-Season will end in 20 Oct get it now!',
      time: 'Oct, 18 2018',
      color: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: NotificationCard(notification: notifications[index]),
          );
        },
      ),
    );
  }
}
