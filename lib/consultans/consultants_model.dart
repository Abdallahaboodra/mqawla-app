class Consultant {
  final String name;
  final String specialty;
  final String description;
  final String imagePath;
  final List<PreviousProject> previousProjects; // قائمة بالأعمال السابقة

  Consultant({
    required this.name,
    required this.specialty,
    required this.description,
    required this.imagePath,
    required this.previousProjects, // تم اضافتها هنا
  });
}

class PreviousProject {
  final String projectName;
  final String duration;
  final String image;
  final String details;

  PreviousProject({
    required this.projectName,
    required this.duration,
    required this.image,
    required this.details,
  });
}