class ProfileStatModel {
  final String value;
  final String label;
  final bool showBolt;

  const ProfileStatModel({
    required this.value,
    required this.label,
    this.showBolt = false,
  });
}
