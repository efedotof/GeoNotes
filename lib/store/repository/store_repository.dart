import 'package:flutter/foundation.dart';
import 'package:geo_notes/map_repository/models/models.dart';
import 'package:geo_notes/store/list_box/list_box.dart';
import 'package:geo_notes/store/list_box/uint_8_list_adapter.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

import 'store_interface.dart';

class StoreRepository implements StoreInterface {
  late Box<ListBox> _listBox;
  late Box<CityModel> _cityModel;
  late Box<CityNameFromCoordinates> _cityNameFromCoordinates;
  late Box<Intersection> _intersection;
  late Box<Leg> _leg;
  late Box<LocationModel> _locationModel;
  late Box<Maneuver> _maneuver;
  late Box<MapLocationUpdatedModel> _mapLocationUpdatedModel;
  late Box<ReverseGeocodingModel> _reverseGeocodingModel;
  late Box<RouteDop> _routeDop;
  late Box<RouteModel> _routeModel;
  late Box<StepModel> _stepModel;

  @override
  Box<ListBox> get listBox => _listBox;
  @override
  Box<CityModel> get cityModel => _cityModel;
  @override
  Box<CityNameFromCoordinates> get cityNameFromCoordinates =>
      _cityNameFromCoordinates;
  @override
  Box<Intersection> get intersection => _intersection;
  @override
  Box<Leg> get leg => _leg;
  @override
  Box<LocationModel> get locationModel => _locationModel;
  @override
  Box<Maneuver> get maneuver => _maneuver;
  @override
  Box<MapLocationUpdatedModel> get mapLocationUpdatedModel =>
      _mapLocationUpdatedModel;
  @override
  Box<ReverseGeocodingModel> get reverseGeocodingModel =>
      _reverseGeocodingModel;
  @override
  Box<RouteDop> get routeDop => _routeDop;
  @override
  Box<RouteModel> get routeModel => _routeModel;
  @override
  Box<StepModel> get stepModel => _stepModel;

  @override
  ValueListenable<Box<ListBox>> get listenableListBox => _listBox.listenable();
  @override
  ValueListenable<Box<CityModel>> get listenableCityModel =>
      _cityModel.listenable();
  @override
  ValueListenable<Box<CityNameFromCoordinates>>
      get listenableCityNameFromCoordinates =>
          _cityNameFromCoordinates.listenable();
  @override
  ValueListenable<Box<Intersection>> get listenableIntersection =>
      _intersection.listenable();
  @override
  ValueListenable<Box<Leg>> get listenableLeg => _leg.listenable();
  @override
  ValueListenable<Box<LocationModel>> get listenableLocationModel =>
      _locationModel.listenable();
  @override
  ValueListenable<Box<Maneuver>> get listenableManeuver =>
      _maneuver.listenable();
  @override
  ValueListenable<Box<MapLocationUpdatedModel>>
      get listenableMapLocationUpdatedModel =>
          _mapLocationUpdatedModel.listenable();
  @override
  ValueListenable<Box<ReverseGeocodingModel>>
      get listenableReverseGeocodingModel =>
          _reverseGeocodingModel.listenable();
  @override
  ValueListenable<Box<RouteDop>> get listenableRouteDop =>
      _routeDop.listenable();
  @override
  ValueListenable<Box<RouteModel>> get listenableRouteModel =>
      _routeModel.listenable();
  @override
  ValueListenable<Box<StepModel>> get listenableStep => _stepModel.listenable();

  @override
  Future<void> init() async {
    //регистрация адаптеров
    Hive.registerAdapter(CityModelAdapter());
    Hive.registerAdapter(CityNameFromCoordinatesAdapter());
    Hive.registerAdapter(IntersectionAdapter());
    Hive.registerAdapter(LegAdapter());
    Hive.registerAdapter(ListBoxAdapter());
    Hive.registerAdapter(LocationModelAdapter());
    Hive.registerAdapter(ManeuverAdapter());
    Hive.registerAdapter(MapLocationUpdatedModelAdapter());
    Hive.registerAdapter(ReverseGeocodingModelAdapter());
    Hive.registerAdapter(RouteDopAdapter());
    Hive.registerAdapter(RouteModelAdapter());
    Hive.registerAdapter(StepModelAdapter());
    Hive.registerAdapter(WaypointAdapter());
    Hive.registerAdapter(Uint8ListAdapter());

    //открытие боксов
    _listBox = await Hive.openBox<ListBox>('list_box');
    if (_listBox.isOpen) {
      debugPrint("Box:_listBox is open");
    }
    _cityModel = await Hive.openBox<CityModel>('city_model');
    if (_cityModel.isOpen) {
      debugPrint("Box:_cityModel is open");
    }
    _cityNameFromCoordinates = await Hive.openBox<CityNameFromCoordinates>(
        'city_name_from_coordinates');
    if (_cityNameFromCoordinates.isOpen) {
      debugPrint("Box:_cityNameFromCoordinates is open");
    }
    _intersection = await Hive.openBox<Intersection>('intersection');
    if (_intersection.isOpen) {
      debugPrint("Box:_intersection is open");
    }
    _leg = await Hive.openBox<Leg>('leg');
    if (_leg.isOpen) {
      debugPrint("Box:_leg is open");
    }
    _locationModel = await Hive.openBox<LocationModel>('location_model');
    if (_locationModel.isOpen) {
      debugPrint("Box:_locationModel is open");
    }
    _maneuver = await Hive.openBox<Maneuver>('maneuver');
    if (_maneuver.isOpen) {
      debugPrint("Box:_maneuver is open");
    }
    _mapLocationUpdatedModel = await Hive.openBox<MapLocationUpdatedModel>(
        'map_location_updated_model');
    if (_mapLocationUpdatedModel.isOpen) {
      debugPrint("Box:_mapLocationUpdatedModel is open");
    }
    _reverseGeocodingModel =
        await Hive.openBox<ReverseGeocodingModel>('reverse_geocoding_model');
    if (_reverseGeocodingModel.isOpen) {
      debugPrint("Box:_reverseGeocodingModel is open");
    }
    _routeDop = await Hive.openBox<RouteDop>('route_dop');
    if (_routeDop.isOpen) {
      debugPrint("Box:_routeDop is open");
    }
    _routeModel = await Hive.openBox<RouteModel>('route_model');
    if (_routeModel.isOpen) {
      debugPrint("Box:_routeModel is open");
    }
    _stepModel = await Hive.openBox<StepModel>('step_model');
    if (_stepModel.isOpen) {
      debugPrint("Box:_stepModel is open");
    }
  }

  @override
  Future<void> addListBox({required ListBox item}) async {
    await _listBox.add(item);
    debugPrint('StoreRepository: Added item to list_box => $item');
  }

  @override
  Future<void> updateListBox(
      {required int index, required ListBox item}) async {
    await _listBox.putAt(index, item);
    debugPrint('StoreRepository: Updated list_box at index $index => $item');
  }

  @override
  Future<void> deleteListBox({required int index}) async {
    await _listBox.deleteAt(index);
    debugPrint('StoreRepository: Deleted item from list_box at index $index');
  }

  @override
  Future<void> clearListBox() async {
    await _listBox.clear();
    debugPrint('StoreRepository: Cleared all items from list_box');
  }

  @override
  Future<void> addCityModel({required CityModel item}) async {
    await _cityModel.add(item);
    debugPrint('StoreRepository: Added item to _cityModel => $item');
  }

  @override
  Future<void> updateCityModel(
      {required int index, required CityModel item}) async {
    await _cityModel.putAt(index, item);
    debugPrint('StoreRepository: Updated _cityModel at index $index => $item');
  }

  @override
  Future<void> deleteCityModel({required int index}) async {
    await _cityModel.deleteAt(index);
    debugPrint('StoreRepository: Deleted item from _cityModel at index $index');
  }

  @override
  Future<void> clearCityModel() async {
    await _cityModel.clear();
    debugPrint('StoreRepository: Cleared all items from _cityModel');
  }

  @override
  Future<void> addCityNameFromCoordinates(
      {required CityNameFromCoordinates item}) async {
    await _cityNameFromCoordinates.add(item);
    debugPrint(
        'StoreRepository: Added item to _cityNameFromCoordinates => $item');
  }

  @override
  Future<void> updateCityNameFromCoordinates(
      {required int index, required CityNameFromCoordinates item}) async {
    await _cityNameFromCoordinates.putAt(index, item);
    debugPrint(
        'StoreRepository: Updated _cityNameFromCoordinates at index $index => $item');
  }

  @override
  Future<void> deleteCityNameFromCoordinates({required int index}) async {
    await _cityNameFromCoordinates.deleteAt(index);
    debugPrint(
        'StoreRepository: Deleted item from _cityNameFromCoordinates at index $index');
  }

  @override
  Future<void> clearCityNameFromCoordinates() async {
    await _cityNameFromCoordinates.clear();
    debugPrint(
        'StoreRepository: Cleared all items from _cityNameFromCoordinates');
  }

  ///Intersection
  @override
  Future<void> addIntersection({required Intersection item}) async {
    await _intersection.add(item);
    debugPrint(
        'StoreRepository: Added item to _cityNameFromCoordinates => $item');
  }

  @override
  Future<void> updateIntersection(
      {required int index, required Intersection item}) async {
    await _intersection.putAt(index, item);
    debugPrint(
        'StoreRepository: Updated _intersection at index $index => $item');
  }

  @override
  Future<void> deleteIntersection({required int index}) async {
    await _intersection.deleteAt(index);
    debugPrint(
        'StoreRepository: Deleted item from _intersection at index $index');
  }

  @override
  Future<void> clearIntersection() async {
    await _intersection.clear();
    debugPrint('StoreRepository: Cleared all items from _leg');
  }

  ///Leg
  @override
  Future<void> addLeg({required Leg item}) async {
    await _leg.add(item);
    debugPrint('StoreRepository: Added item to _leg => $item');
  }

  @override
  Future<void> updateLeg({required int index, required Leg item}) async {
    await _leg.putAt(index, item);
    debugPrint('StoreRepository: Updated _leg at index $index => $item');
  }

  @override
  Future<void> deleteLeg({required int index}) async {
    await _leg.deleteAt(index);
    debugPrint('StoreRepository: Deleted item from _leg at index $index');
  }

  @override
  Future<void> clearLeg() async {
    await _leg.clear();
    debugPrint('StoreRepository: Cleared all items from _leg');
  }

  ///LocationModel
  @override
  Future<void> addLocationModel({required LocationModel item}) async {
    await _locationModel.add(item);
    debugPrint('StoreRepository: Added item to _locationModel => $item');
  }

  @override
  Future<void> updateLocationModel(
      {required int index, required LocationModel item}) async {
    await _locationModel.putAt(index, item);
    debugPrint(
        'StoreRepository: Updated _locationModel at index $index => $item');
  }

  @override
  Future<void> deleteLocationModel({required int index}) async {
    await _locationModel.deleteAt(index);
    debugPrint(
        'StoreRepository: Deleted item from _locationModel at index $index');
  }

  @override
  Future<void> clearLocationModel() async {
    await _locationModel.clear();
    debugPrint('StoreRepository: Cleared all items from _locationModel');
  }

  ///Maneuver
  @override
  Future<void> addManeuver({required Maneuver item}) async {
    await _maneuver.add(item);
    debugPrint('StoreRepository: Added item to _maneuver => $item');
  }

  @override
  Future<void> updateManeuver(
      {required int index, required Maneuver item}) async {
    await _maneuver.putAt(index, item);
    debugPrint('StoreRepository: Updated _maneuver at index $index => $item');
  }

  @override
  Future<void> deleteManeuver({required int index}) async {
    await _maneuver.deleteAt(index);
    debugPrint('StoreRepository: Deleted item from _maneuver at index $index');
  }

  @override
  Future<void> clearManeuver() async {
    await _maneuver.clear();
    debugPrint('StoreRepository: Cleared all items from _maneuver');
  }

  ///MapLocationUpdatedModel
  @override
  Future<void> addMapLocationUpdatedModel(
      {required MapLocationUpdatedModel item}) async {
    await _mapLocationUpdatedModel.add(item);
    debugPrint(
        'StoreRepository: Added item to _mapLocationUpdatedModel => $item');
  }

  @override
  Future<void> updateMapLocationUpdatedModel(
      {required int index, required MapLocationUpdatedModel item}) async {
    await _mapLocationUpdatedModel.putAt(index, item);
    debugPrint(
        'StoreRepository: Updated _mapLocationUpdatedModel at index $index => $item');
  }

  @override
  Future<void> deleteMapLocationUpdatedModel({required int index}) async {
    await _mapLocationUpdatedModel.deleteAt(index);
    debugPrint(
        'StoreRepository: Deleted item from _mapLocationUpdatedModel at index $index');
  }

  @override
  Future<void> clearMapLocationUpdatedModel() async {
    await _mapLocationUpdatedModel.clear();
    debugPrint(
        'StoreRepository: Cleared all items from _mapLocationUpdatedModel');
  }

  ///ReverseGeocodingModel
  @override
  Future<void> addReverseGeocodingModel({
    required ReverseGeocodingModel item,
  }) async {
    await _reverseGeocodingModel.add(item);
    debugPrint(
        'StoreRepository: Added item to _reverseGeocodingModel => $item');
  }

  @override
  Future<void> updateReverseGeocodingModel({
    required int index,
    required ReverseGeocodingModel item,
  }) async {
    await _reverseGeocodingModel.putAt(index, item);
    debugPrint(
        'StoreRepository: Updated _reverseGeocodingModel at index $index => $item');
  }

  @override
  Future<void> deleteReverseGeocodingModel({required int index}) async {
    await _reverseGeocodingModel.deleteAt(index);
    debugPrint(
        'StoreRepository: Deleted item from _reverseGeocodingModel at index $index');
  }

  @override
  Future<void> clearReverseGeocodingModel() async {
    await _reverseGeocodingModel.clear();
    debugPrint(
        'StoreRepository: Cleared all items from _reverseGeocodingModel');
  }

  ///Route
  @override
  Future<void> addRoute({required RouteDop item}) async {
    await _routeDop.add(item);
    debugPrint('StoreRepository: Added item to _routeDop => $item');
  }

  @override
  Future<void> updateRoute({required int index, required RouteDop item}) async {
    await _routeDop.putAt(index, item);
    debugPrint('StoreRepository: Updated _routeDop at index $index => $item');
  }

  @override
  Future<void> deleteRoute({required int index}) async {
    await _routeDop.deleteAt(index);
    debugPrint('StoreRepository: Deleted item from _routeDop at index $index');
  }

  @override
  Future<void> clearRoute() async {
    await _routeDop.clear();
    debugPrint('StoreRepository: Cleared all items from _routeDop');
  }

  ///RouteModel
  @override
  Future<void> addRouteModel({required RouteModel item}) async {
    await _routeModel.add(item);
    debugPrint('StoreRepository: Added item to _routeModel => $item');
  }

  @override
  Future<void> updateRouteModel(
      {required int index, required RouteModel item}) async {
    await _routeModel.putAt(index, item);
    debugPrint('StoreRepository: Updated _routeModel at index $index => $item');
  }

  @override
  Future<void> deleteRouteModel({required int index}) async {
    await _routeModel.deleteAt(index);
    debugPrint(
        'StoreRepository: Deleted item from _routeModel at index $index');
  }

  @override
  Future<void> clearRouteModel() async {
    await _routeModel.clear();
    debugPrint('StoreRepository: Cleared all items from _routeModel');
  }

  ///StepModel
  @override
  Future<void> addStep({required StepModel item}) async {
    await _stepModel.add(item);
    debugPrint('StoreRepository: Added item to _stepModel => $item');
  }

  @override
  Future<void> updateStep({required int index, required StepModel item}) async {
    await _stepModel.putAt(index, item);
    debugPrint('StoreRepository: Updated _stepModel at index $index => $item');
  }

  @override
  Future<void> deleteStep({required int index}) async {
    await _stepModel.deleteAt(index);
    debugPrint('StoreRepository: Deleted item from _stepModel at index $index');
  }

  @override
  Future<void> clearStep() async {
    await _stepModel.clear();
    debugPrint('StoreRepository: Cleared all items from _stepModel');
  }

  @override
  Future<void> clearAll() async {
    await clearStep();
    await clearRouteModel();
    await clearRoute();
    await clearReverseGeocodingModel();
    await clearMapLocationUpdatedModel();
    await clearManeuver();
    await clearLocationModel();
    await clearLeg();
    await clearIntersection();
    await clearCityNameFromCoordinates();
    await clearCityModel();
    await clearListBox();
  }
}
