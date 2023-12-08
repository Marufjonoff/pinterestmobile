import 'dart:async';
import 'package:floor/floor.dart';
import 'package:pinterestmobile/sql/data_access_object/claim_checklist_dao.dart';
import 'package:pinterestmobile/sql/entity/claim_checklist_entity.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
part 'app_database.g.dart';

@Database(version: 1, entities: [ImagesListEntity])
abstract class AppDatabase extends FloorDatabase {
  ImagesListDao get imagesList;
}