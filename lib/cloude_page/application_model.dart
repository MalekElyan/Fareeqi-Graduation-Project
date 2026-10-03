class ApplicationModel {
  final String id;
  final String name;
  final String field;
  final double rating;
  final List<String> skills;
  final ApplicationStatus status;

  const ApplicationModel({
    required this.id,
    required this.name,
    required this.field,
    required this.rating,
    required this.skills,
    required this.status,
  });
}

enum ApplicationStatus { pending, accepted, rejected }
