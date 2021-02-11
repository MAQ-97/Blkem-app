import 'dart:collection';


import 'package:colibri/core/common/failure.dart';
import 'package:colibri/core/common/usecase.dart';
import 'package:colibri/features/search/data/models/search_people_response.dart';
import 'package:colibri/features/search/domain/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchUseCase extends UseCase<String,String>{
  final SearchRepo searchRepo;
  SearchUseCase(this.searchRepo);
  @override
  Future<Either<Failure, String>> call(String params) {
    return searchRepo.getPeopleSearches(params);
  }

}