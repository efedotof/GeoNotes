import 'package:flutter/foundation.dart';
import 'package:geo_notes/map_repository/models/models.dart';
import 'package:geo_notes/store/list_box/list_box.dart';

import 'package:hive_ce/hive.dart';

abstract interface class StoreInterface {
  Future<void> init();
  //геттеры боксов
  Box<ListBox> get listBox;
  Box<LocationModel> get locationModel;
  Box<RouteModel> get routeModel;

  //геттеры прослушивателей
  ValueListenable<Box<ListBox>> get listenableListBox;
  ValueListenable<Box<LocationModel>> get listenableLocationModel;
  ValueListenable<Box<RouteModel>> get listenableRouteModel;

  //Функции добавления, изменения, удаления, очистки всего бокса
  //ListBox
  Future<void> addListBox({required ListBox item});
  Future<void> updateListBox({required int index, required ListBox item});
  Future<void> deleteListBox({required int index});
  Future<void> clearListBox();

  ///LocationModel
  Future<void> addLocationModel({required LocationModel item});
  Future<void> updateLocationModel(
      {required int index, required LocationModel item});
  Future<void> deleteLocationModel({required int index});
  Future<void> clearLocationModel();

  ///RouteModel
  Future<void> addRouteModel({required RouteModel item});
  Future<void> updateRouteModel({required int index, required RouteModel item});
  Future<void> deleteRouteModel({required int index});
  Future<void> clearRouteModel();

  Future<void> clearAll();
}
