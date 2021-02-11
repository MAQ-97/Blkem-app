import 'dart:collection';

import 'package:colibri/core/common/api/api_constants.dart';
import 'package:colibri/core/common/api/api_helper.dart';
import 'package:colibri/core/common/failure.dart';
import 'package:colibri/features/search/domain/entity/searchhashtagentity.dart';
import 'package:colibri/features/search/domain/entity/searchpeopleentity.dart';
import 'package:colibri/features/search/domain/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as:SearchRepo)
class SearchRepoImpl extends SearchRepo{
  final ApiHelper apiHelper;
  SearchRepoImpl(this.apiHelper);
  @override
  Future<Either<Failure, List<SearchPeopleEntity>>> getPeopleSearches(param) async{
    var searchUrl = ApiConstants.searchPeople + "?query=" + param + "&offset=0&session_id=46d3d28f1d4a8cd6f9da33ed1ee7811d58258bc516129658839f5c4bd8b66143c172a63539f5bbbdc8&page_size=10";
   var response= await apiHelper.get(searchUrl);
   response.fold(
           (l) => null,
           (r) => null);
  }
  @override
  Future<Either<Failure, List<SearchHashtagEntity>>> getHashtagSearches(param) async{
    var searchUrl = ApiConstants.searchPeople + "?query=" + param + "&offset=0&session_id=46d3d28f1d4a8cd6f9da33ed1ee7811d58258bc516129658839f5c4bd8b66143c172a63539f5bbbdc8&page_size=10";
   var response= await apiHelper.get(searchUrl);
   response.fold(
           (l) => null,
           (r) => null);
  }
  
}