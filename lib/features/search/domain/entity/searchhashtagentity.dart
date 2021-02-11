import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:colibri/features/search/presentation/widgets/people_item.dart';

class SearchHashtagEntity{
  final int id;
  final String about;
  final int followers;
  final int posts;
  final String avatar;
  final String last_active;
  final String username;
  final String fname;
  final String lname;
  final String email;
  final String verified;
  final String follow_privacy;
  final String assigned_badge;
  final String name;
  final String url;
  final bool is_user;
  final bool is_following;
  final bool follow_requested;

  SearchHashtagEntity({
    @required this.id,
    @required this.about,
    @required this.followers,
    @required this.posts,
    @required this.avatar,
    @required this.last_active,
    @required this.username,
    @required this.fname,
    @required this.lname,
    @required this.email,
    @required this.verified,
    @required this.follow_privacy,
    @required this.assigned_badge,
    @required this.name,
    @required this.url,
    @required this.is_user,
    @required this.is_following,
    @required this.follow_requested});
} 