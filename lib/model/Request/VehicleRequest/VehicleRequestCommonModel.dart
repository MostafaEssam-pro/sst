class VehicleRequestCommon {
  VehicleRequestCommon({
    required this.directionDto,
    required this.vehicleTypeDto,
  });
  late final List<DirectionDto> directionDto;
  late final List<VehicleTypeDto> vehicleTypeDto;

  VehicleRequestCommon.fromJson(Map<String, dynamic> json){
    directionDto = List.from(json['directionDto']).map((e)=>DirectionDto.fromJson(e)).toList();
    vehicleTypeDto = List.from(json['vehicleTypeDto']).map((e)=>VehicleTypeDto.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['directionDto'] = directionDto.map((e)=>e.toJson()).toList();
    _data['vehicleTypeDto'] = vehicleTypeDto.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class DirectionDto {
  DirectionDto({
    required this.directionCode,
    required this.name,
    required this.arabicName,
    this.vehiclesRequestDtoNavigation,
  });
  late final int directionCode;
  late final String name;
  late final String arabicName;
  late final Null vehiclesRequestDtoNavigation;

  DirectionDto.fromJson(Map<String, dynamic> json){
    directionCode = json['directionCode'];
    name = json['name'];
    arabicName = json['arabic_Name'];
    vehiclesRequestDtoNavigation = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['directionCode'] = directionCode;
    _data['name'] = name;
    _data['arabic_Name'] = arabicName;
    _data['vehiclesRequestDtoNavigation'] = vehiclesRequestDtoNavigation;
    return _data;
  }
}

class VehicleTypeDto {
  VehicleTypeDto({
    required this.vehicleTypeCode,
    required this.name,
    required this.arabicName,
    required this.vehiclesRequestNavigation,
  });
  late final int vehicleTypeCode;
  late final String name;
  late final String arabicName;
  late final List<dynamic> vehiclesRequestNavigation;

  VehicleTypeDto.fromJson(Map<String, dynamic> json){
    vehicleTypeCode = json['vehicleTypeCode'];
    name = json['name'];
    arabicName = json['arabic_Name'];
    vehiclesRequestNavigation = List.castFrom<dynamic, dynamic>(json['vehiclesRequestNavigation']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['vehicleTypeCode'] = vehicleTypeCode;
    _data['name'] = name;
    _data['arabic_Name'] = arabicName;
    _data['vehiclesRequestNavigation'] = vehiclesRequestNavigation;
    return _data;
  }
}