import 'package:colibri/core/common/failure.dart';
import 'package:colibri/features/search/domain/entity/searchpeopleentity.dart';
import 'package:colibri/features/search/domain/entity/searchhashtagentity.dart';
import 'package:dartz/dartz.dart';
import 'dart:collection';

abstract class SearchRepo{
  Future<Either<Failure,String>> getPeopleSearches(String param);
  Future<Either<Failure,String>> getHashtagSearches(String param);
}