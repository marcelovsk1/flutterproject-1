import 'dart:convert';

import '../http/exceptions.dart';
import '../http/http_client.dart';
import '../models/events_model.dart';

abstract class IEventRepo {
  Future<List<EventsModel>> getEvents();
}

class EventsRepo implements IEventRepo {
   final IHttpClient client;

EventsRepo({required this.client});

  @override
  Future<List<EventsModel>> getEvents() async {
    final response = await client.get(
    url: 'http://127.0.0.1:5500/APIs/Facebook_Events/facebook.json',
   );

   if (response.statusCode == 200) {
    final List<EventsModel> events = [];

    final body = jsonDecode(response.body);

    body['events'].map((item){
      final EventsModel values = EventsModel.fromMap(item);
      events.add(values);
    }).toList();

    return events;
   } else if (response.statusCode == 404) {
    throw NotFoundException('The Url doesnt exist');
   } else {
    throw Exception('Wasnt possible loading the events');
   }
  }
}
