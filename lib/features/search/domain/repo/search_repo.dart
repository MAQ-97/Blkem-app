import 'package:colibri/core/common/failure.dart';
import 'package:colibri/features/search/domain/entity/searchpeopleentity.dart';
import 'package:colibri/features/search/domain/entity/searchhashtagentity.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo{
  Future<Either<Failure,List<SearchPeopleEntity>>> getPeopleSearches(params);
  Future<Either<Failure,List<SearchHashtagEntity>>> getHashtagSearches(params);
}