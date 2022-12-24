class Announcement {
  final String title;
  final String description;
  final String imageUrl;
  final bool activated;

  Announcement({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.activated,
  });

  factory Announcement.fromMap(Map<String, dynamic> data) => Announcement(
        title: data['title'],
        description: data['description'],
        imageUrl: data['image_url'],
        activated: data['activated'],
      );

  @override
  String toString() {
    return 'Announcement{title: $title, description: $description, urlImg: $imageUrl, activated: $activated}';
  }
}
