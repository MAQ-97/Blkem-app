import 'dart:async';
import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:colibri/core/common/stream_validators.dart';
import 'package:colibri/features/search/presentation/widgets/hasttag_item.dart';
import 'package:colibri/features/search/presentation/widgets/people_item.dart';
import 'package:colibri/features/search/domain/usecase/search_use_case.dart';
import 'package:colibri/core/common/uistate/common_ui_state.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/usecase/search_use_case.dart';

part 'search_state.dart';

@injectable
class SearchCubit extends Cubit<CommonUIState> {
  final hashTagItems = BehaviorSubject<List<String>>();
final SearchUseCase searchUseCase;
  Function(List<String>) get changeHashTagList => hashTagItems.sink.add;
  final searchQuery = FieldValidators(null, null);

  Stream<List<String>> get haTagList =>hashTagItems.stream;

  SearchCubit(this.searchUseCase) : super(CommonUIState.initial()) {
    changeHashTagList(dummyHashTags);
    searchQuery.stream.listen((event) async{
      var response = await searchUseCase(event);
      print(response);
      emit(response.fold(
        (l) => CommonUIState.error(l.errorMessage),
        (r) => CommonUIState.success(r)));
  });
    //  if(event.isEmpty) changeHashTagList(dummyHashTags);
    //  else changeHashTagList(dummyHashTags.where((element) => element.contains(event.toLowerCase())).toList());
    
  }
}
