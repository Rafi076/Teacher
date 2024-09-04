import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class FlutterFlowCalendar extends StatefulWidget {
  final DateTime? selectedDate;
  final void Function(DateTime) onDateSelected;

  const FlutterFlowCalendar({
    Key? key,
    this.selectedDate,
    required this.onDateSelected, required Color color, required bool weekFormat, required Color iconColor, required bool weekStartsMonday, required int rowHeight, required Future<Null> Function(DateTimeRange? newSelectedDate) onChange, required titleStyle, required dayOfWeekStyle, required dateStyle, required selectedDateStyle, required inactiveDateStyle,
  }) : super(key: key);

  @override
  _FlutterFlowCalendarState createState() => _FlutterFlowCalendarState();
}

class _FlutterFlowCalendarState extends State<FlutterFlowCalendar> {
  late DateTime _focusedDay;
  late DateTime _selectedDay;

  @override
  void initState() {
    super.initState();
    _focusedDay = widget.selectedDate ?? DateTime.now();
    _selectedDay = widget.selectedDate ?? DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: _focusedDay,
      selectedDayPredicate: (day) {
        return isSameDay(_selectedDay, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
        });
        widget.onDateSelected(selectedDay);
      },
      calendarFormat: CalendarFormat.month,
      startingDayOfWeek: StartingDayOfWeek.monday,
      calendarStyle: CalendarStyle(
        selectedDecoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          shape: BoxShape.circle,
        ),
        todayDecoration: BoxDecoration(
          color: Colors.orange,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
