import 'package:flutter/material.dart';
import 'package:my_app/app/data/model/http/exceptions.dart';
import 'package:my_app/app/data/model/repos/events_repos.dart';
import '../events_model.dart';

class EventStore {
  final IEventRepo repository;

  final ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);

  final ValueNotifier<List<EventsModel>> state =
  ValueNotifier<List<EventsModel>>([]);

  final ValueNotifier<String> erro = ValueNotifier<String>('');

  EventStore({required this.repository});

  Future getEvents() async {
    isLoading.value = true;

    try {
      final result = await repository.getEvents();
      state.value = result.cast<EventsModel>();
     } on NotFoundException catch (e) {
        erro.value = e.message;
      } catch (e) {
        erro.value = e.toString();
    }

    isLoading.value = false;
  }
}
