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
  Box<LocationModel> get locationModel => _locationModel;
  @override
  Box<RouteModel> get routeModel => _routeModel;

  @override
  ValueListenable<Box<ListBox>> get listenableListBox => _listBox.listenable();
  @override
  ValueListenable<Box<LocationModel>> get listenableLocationModel =>
      _locationModel.listenable();
  @override
  ValueListenable<Box<RouteModel>> get listenableRouteModel =>
      _routeModel.listenable();

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

  @override
  Future<void> clearAll() async {
    await clearRouteModel();
    await clearLocationModel();
    await clearListBox();
  }
}
