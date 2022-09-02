class Alert {
  final String title;
  final String subject;
  final DateTime time;

  Alert({required this.title, required this.subject, required this.time});
}

List<Alert> recentAlerts = [
  Alert(
    title: "Web Technology",
    subject: "CDCSC05",
    time: DateTime.parse("2022-09-01 10:30:00"),
  ),
  Alert(
    title: "Design and Analysis \nof Algorithms",
    subject: "CDCSC06",
    time: DateTime.parse("2020-09-06 14:30:00"),
  ),
  Alert(
    title: "Computer Architecture",
    subject: "CDCSC07",
    time: DateTime.parse("2020-06-06 14:30:00"),
  ),
  Alert(
    title: "Microprocessors and \nMicrocontrollers",
    subject: "CDCSC08",
    time: DateTime.parse("2020-06-06 14:30:00"),
  ),
  Alert(
    title: "Database management \nsystem",
    subject: "CDCSC08",
    time: DateTime.parse("2020-06-06 14:30:00"),
  ),
];
