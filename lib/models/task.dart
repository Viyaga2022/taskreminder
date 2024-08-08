class Task {
  int? id;
  String name;
  DateTime dateTime;

  Task({this.id, required this.name, required this.dateTime});

  // Convert a Task into a Map. The keys must correspond to the column names in the database.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'dateTime': dateTime.toIso8601String(),
    };
  }

  // Convert a Map into a Task object
  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      name: map['name'],
      dateTime: DateTime.parse(map['dateTime']),
    );
  }
}
