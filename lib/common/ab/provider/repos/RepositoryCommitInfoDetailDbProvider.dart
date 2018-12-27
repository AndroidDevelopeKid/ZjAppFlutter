import 'package:zj_app_flutter/common/ab/SqlProvider.dart';

/**
 * 仓库提交信息详情表
 * Created by zj
 * Date: 2018-08-07
 */

class RepositoryCommitInfoDetailDbProvider extends BaseDbProvider {
  final String name = 'RepositoryCommitInfoDetail';
  int id;
  String fullName;
  String data;
  String sha;

  final String columnId = "_id";
  final String columnFullName = "fullName";
  final String columnSha = "sha";
  final String columnData = "data";

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {columnFullName: fullName, columnSha: sha, columnData: data};
    if (id != null) {
      map[columnId] = id;
    }
    return map;
  }

  RepositoryCommitInfoDetailDbProvider.fromMap(Map map) {
    id = map[columnId];
    fullName = map[columnFullName];
    sha = map[columnSha];
    data = map[columnData];
  }

  @override
  tableSqlString() {}

  @override
  tableName() {
    return name;
  }
}