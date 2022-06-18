
// ignore_for_file: avoid_print

import 'package:bloc_app/app/bloc/viaCep/bloc/events.dart';
import 'package:bloc_app/app/bloc/viaCep/bloc/states.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViaCepController extends Bloc<SearchCepEvents, SearchCepStates> {

  ViaCepController() : super(Success({})) {
    on<SeachEvent>((event, emit) async {
      emit(Loading());
      try {
        final response = await search(event.cep);
        emit(Success(response));
      } catch (err) {
        emit(Error('Não foi possível obter o endereço!'));
      }
    });
  }

  Future<Map> search(String cep) async {
    final response = await Dio().get('https://viacep.com.br/ws/$cep/json/');
    return response.data as Map;
  }
}