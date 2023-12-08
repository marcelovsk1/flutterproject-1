class EventsModel {
  final String title;
  final String date;
  final String location;
  final String url;
  final List<String> image;

  EventsModel({
    required this.title,
    required this.date,
    required this.location,
    required this.url,
    required this.image
    });

   factory EventsModel.fromMap(Map<String, dynamic> map) {
      return EventsModel(
       title: map['title'],
       date: map['date'],
       location: map['location'],
       url: map['url'],
       image: List<String>.from((map['image'] as List)),
      );
    }
}
