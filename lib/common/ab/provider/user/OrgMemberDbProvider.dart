import 'package:zj_app_flutter/common/ab/SqlProvider.dart';

/**
 * 用户关注表
 *
 * Created by zj
 * Date: 2018-08-07
 */

class OrgMemberDbProvider extends BaseDbProvider {
  final String name = 'OrgMember';

  final String columnId = "_id";
  final String columnOrg = "org";
  final String columnData = "data";

  int id;
  String org;
  String data;

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {columnOrg: org, columnData: data};
    if (id != null) {
      map[columnId] = id;
    }
    return map;
  }

  OrgMemberDbProvider.fromMap(Map map) {
    id = map[columnId];
    org = map[columnOrg];
    data = map[columnData];
  }

  @override
  tableSqlString() {}

  @override
  tableName() {
    return name;
  }
}