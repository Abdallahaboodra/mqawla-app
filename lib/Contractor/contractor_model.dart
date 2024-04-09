
// تعريف الكلاس Contractor
class Contractor {
  final String name;
  final String specialty;
  final String description;
  final String imagePath;
  final List<String> steps;
  // final List<String> topWorkers;
  final String paymentMethod;
  final String discounts;

  Contractor({
    required this.name,
    required this.specialty,
    required this.description,
    required this.imagePath,
    required this.steps,
    // required this.topWorkers,
    required this.paymentMethod,
    required this.discounts,
  });
}