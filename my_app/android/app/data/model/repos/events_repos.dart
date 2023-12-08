import '../models/events_model.dart';

abstract class IEventRepo {
  Future<List<EventsModel>> getEvents();
}

class EventsRepo implements IEventRepo {
  @override
  Future<List<EventsModel>> getEvents() {
    // TODO
    throw UnimplementedError();
  }
}
