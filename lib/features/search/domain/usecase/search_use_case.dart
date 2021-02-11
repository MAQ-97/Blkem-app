import 'dart:collection';

import 'package:colibri/core/common/failure.dart';
import 'package:colibri/core/common/usecase.dart';
import 'package:colibri/features/search/data/models/search_people_response.dart';
import 'package:colibri/features/search/domain/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchCase extends UseCase<dynamic,HashMap<String,dynamic>>{
  final SearchRepo searchRepo;
  SearchCase(this.searchRepo);

  Future<Either<Failure, dynamic>> call(HashMap<String, dynamic> params) {
    return searchRepo.getPeopleSearches(params);
  }

}