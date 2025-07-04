import 'package:flutter/foundation.dart';
import 'package:geo_notes/map_repository/models/models.dart';
import 'package:geo_notes/store/list_box/list_box.dart';

import 'package:hive_ce/hive.dart';

abstract interface class StoreInterface {
  Future<void> init();
  //геттеры боксов
  Box<ListBox> get listBox;
  Box<CityModel> get cityModel;
  Box<CityNameFromCoordinates> get cityNameFromCoordinates;
  Box<Intersection> get intersection;
  Box<Leg> get leg;
  Box<LocationModel> get locationModel;
  Box<Maneuver> get maneuver;
  Box<MapLocationUpdatedModel> get mapLocationUpdatedModel;
  Box<ReverseGeocodingModel> get reverseGeocodingModel;
  Box<RouteDop> get routeDop;
  Box<RouteModel> get routeModel;
  Box<StepModel> get stepModel;
  //геттеры прослушивателей
  ValueListenable<Box<ListBox>> get listenableListBox;
  ValueListenable<Box<CityModel>> get listenableCityModel;
  ValueListenable<Box<CityNameFromCoordinates>>
      get listenableCityNameFromCoordinates;
  ValueListenable<Box<Intersection>> get listenableIntersection;
  ValueListenable<Box<Leg>> get listenableLeg;
  ValueListenable<Box<LocationModel>> get listenableLocationModel;
  ValueListenable<Box<Maneuver>> get listenableManeuver;
  ValueListenable<Box<MapLocationUpdatedModel>>
      get listenableMapLocationUpdatedModel;
  ValueListenable<Box<ReverseGeocodingModel>>
      get listenableReverseGeocodingModel;
  ValueListenable<Box<RouteDop>> get listenableRouteDop;
  ValueListenable<Box<RouteModel>> get listenableRouteModel;
  ValueListenable<Box<StepModel>> get listenableStep;

  //Функции добавления, изменения, удаления, очистки всего бокса
  //ListBox
  Future<void> addListBox({required ListBox item});
  Future<void> updateListBox({required int index, required ListBox item});
  Future<void> deleteListBox({required int index});
  Future<void> clearListBox();

  ///CityModel
  Future<void> addCityModel({required CityModel item});
  Future<void> updateCityModel({required int index, required CityModel item});
  Future<void> deleteCityModel({required int index});
  Future<void> clearCityModel();

  ///CityNameFromCoordinates
  Future<void> addCityNameFromCoordinates(
      {required CityNameFromCoordinates item});
  Future<void> updateCityNameFromCoordinates(
      {required int index, required CityNameFromCoordinates item});
  Future<void> deleteCityNameFromCoordinates({required int index});
  Future<void> clearCityNameFromCoordinates();

  ///Intersection
  Future<void> addIntersection({required Intersection item});
  Future<void> updateIntersection(
      {required int index, required Intersection item});
  Future<void> deleteIntersection({required int index});
  Future<void> clearIntersection();

  ///Leg
  Future<void> addLeg({required Leg item});
  Future<void> updateLeg({required int index, required Leg item});
  Future<void> deleteLeg({required int index});
  Future<void> clearLeg();

  ///LocationModel
  Future<void> addLocationModel({required LocationModel item});
  Future<void> updateLocationModel(
      {required int index, required LocationModel item});
  Future<void> deleteLocationModel({required int index});
  Future<void> clearLocationModel();

  ///Maneuver
  Future<void> addManeuver({required Maneuver item});
  Future<void> updateManeuver({required int index, required Maneuver item});
  Future<void> deleteManeuver({required int index});
  Future<void> clearManeuver();

  ///MapLocationUpdatedModel
  Future<void> addMapLocationUpdatedModel(
      {required MapLocationUpdatedModel item});
  Future<void> updateMapLocationUpdatedModel(
      {required int index, required MapLocationUpdatedModel item});
  Future<void> deleteMapLocationUpdatedModel({required int index});
  Future<void> clearMapLocationUpdatedModel();

  ///ReverseGeocodingModel
  Future<void> addReverseGeocodingModel({required ReverseGeocodingModel item});
  Future<void> updateReverseGeocodingModel(
      {required int index, required ReverseGeocodingModel item});
  Future<void> deleteReverseGeocodingModel({required int index});
  Future<void> clearReverseGeocodingModel();

  ///Route
  Future<void> addRoute({required RouteDop item});
  Future<void> updateRoute({required int index, required RouteDop item});
  Future<void> deleteRoute({required int index});
  Future<void> clearRoute();

  ///RouteModel
  Future<void> addRouteModel({required RouteModel item});
  Future<void> updateRouteModel({required int index, required RouteModel item});
  Future<void> deleteRouteModel({required int index});
  Future<void> clearRouteModel();

  ///Step
  Future<void> addStep({required StepModel item});
  Future<void> updateStep({required int index, required StepModel item});
  Future<void> deleteStep({required int index});
  Future<void> clearStep();

  Future<void> clearAll();
}
