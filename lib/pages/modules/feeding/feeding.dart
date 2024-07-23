import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'dart:math';

class Feeding extends StatefulWidget {
  const Feeding({super.key});

  @override
  State<Feeding> createState() => _FeedingState();
}

class _FeedingState extends State<Feeding> {
  CalendarView _currentView = CalendarView.month;
  TimeOfDay _timeOfDay = TimeOfDay.now();
  DateTime _selectedDate = DateTime.now();

  void _changeCalendarView() {
    setState(() {
      // Change the calendar view
      if (_currentView == CalendarView.month) {
        _currentView = CalendarView.schedule;
      } else {
        _currentView = CalendarView.month;
      }
    });
  }

  Future<void> _showAddEventDialog(BuildContext context) async {
    final TextEditingController titleController = TextEditingController();

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add New Event'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextField(
                  controller: titleController,
                  decoration: const InputDecoration(hintText: "Event Title"),
                ),
                TextButton(
                  onPressed: _showDatePicker,
                  child: Text('Select Date: ${_selectedDate.toString()}',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                TextButton(
                  onPressed: _showTimerPicker,
                  child: Text('Select time: ${_timeOfDay.toString()}',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Add'),
              onPressed: () {
                // _addEvent(
                //   titleController.text,
                //   DateTime.parse(startDateController.text),
                //   DateTime.parse(endDateController.text),
                // );
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showTimerPicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101), // Limit it to a reasonable future date
    ).then((value) {
      if (value != null) {
        setState(() {
          _selectedDate = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Feeding',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () => _showAddEventDialog(context),
            ),
            IconButton(
              icon: const Icon(Icons.calendar_today),
              onPressed: _changeCalendarView,
            ),
            const Gap(20),
          ],
        ),
        body: SfCalendar(
          dataSource: MeetingDataSource(_getDataSource()),
          monthViewSettings: const MonthViewSettings(
              appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
          view: _currentView,
          firstDayOfWeek: 1,
          onTap: (CalendarTapDetails details) {
            if (details.targetElement == CalendarElement.appointment) {
              final Meeting meeting = details.appointments!.first;
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(meeting.eventName),
                    content: Text(
                        'Starts at: ${meeting.from}\nEnds at: ${meeting.to}'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Close'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            }
          },
        ));
  }
}

List<Meeting> _getDataSource() {
  final List<Meeting> meetings = <Meeting>[];
  final Random random = Random();
  final List<String> meetingTitles = [
    'Conference',
    'Feed sheeps',
    'Team Meeting',
    'Project Discussion',
    'Client Call'
  ];
  final List<Color> colors = [
    const Color(0xFF0F8644), // Green
    const Color(0xFFD50000), // Red
    const Color(0xFF304FFE), // Blue
    const Color(0xFFF9A825), // Yellow
    const Color(0xFF00B8D4) // Cyan
  ];

  final DateTime today = DateTime.now();
  for (int i = 0; i < 10; i++) {
    final DateTime randomDay = today.add(Duration(days: random.nextInt(30)));
    final DateTime startTime = DateTime(
      randomDay.year,
      randomDay.month,
      randomDay.day,
      9 + random.nextInt(8), // Random start hour between 9 AM and 4 PM
      (random.nextBool()
          ? 0
          : 30), // Randomly choose between on the hour or half past
    );
    final DateTime endTime = startTime.add(
        Duration(hours: 1 + random.nextInt(2))); // 1 to 2 hours long meeting
    final String title = meetingTitles[random.nextInt(meetingTitles.length)];
    final Color color = colors[random.nextInt(colors.length)];

    meetings.add(Meeting(title, startTime, endTime, color, false));
  }

  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}
