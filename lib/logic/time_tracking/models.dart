class WorkingDay {
  final DateTime date;
  List<WorkingSession>? sessions;

  WorkingDay({required this.date, this.sessions});
}

class WorkingSession {
  final DateTime start;
  final DateTime end;
  WorkingSession({required this.start, required this.end});

  int get duration => end.difference(start).inMinutes;
}
