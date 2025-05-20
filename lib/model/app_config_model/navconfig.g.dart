// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navconfig.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Navconfig _$NavconfigFromJson(Map<String, dynamic> json) => Navconfig(
      searchHere: json['searchHere'] as bool?,
      liveCase: json['liveCase'] as bool?,
      mySchedules: json['mySchedules'] as bool?,
      selectDate: json['selectDate'] as bool?,
      selectStatus: json['selectStatus'] as bool?,
      addNewCase: json['addNewCase'] as bool?,
      boq: json['boq'] as bool?,
      caseComments: json['caseComments'] as bool?,
      quotationAndSpareParts: json['quotationAndSpareParts'] as bool?,
      operationalProducts: json['operationalProducts'] as bool?,
      caseProducts: json['caseProducts'] as bool?,
      timer: json['timer'] as bool?,
    );

Map<String, dynamic> _$NavconfigToJson(Navconfig instance) => <String, dynamic>{
      'searchHere': instance.searchHere,
      'liveCase': instance.liveCase,
      'mySchedules': instance.mySchedules,
      'selectDate': instance.selectDate,
      'selectStatus': instance.selectStatus,
      'addNewCase': instance.addNewCase,
      'boq': instance.boq,
      'caseComments': instance.caseComments,
      'quotationAndSpareParts': instance.quotationAndSpareParts,
      'operationalProducts': instance.operationalProducts,
      'caseProducts': instance.caseProducts,
      'timer': instance.timer,
    };
