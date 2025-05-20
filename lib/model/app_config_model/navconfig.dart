import 'package:json_annotation/json_annotation.dart';

part 'navconfig.g.dart';

@JsonSerializable()
class Navconfig {
  bool? searchHere;
  bool? liveCase;
  bool? mySchedules;
  bool? selectDate;
  bool? selectStatus;
  bool? addNewCase;
  bool? boq;
  bool? caseComments;
  bool? quotationAndSpareParts;
  bool? operationalProducts;
  bool? caseProducts;
  bool? timer;

  Navconfig({
    this.searchHere,
    this.liveCase,
    this.mySchedules,
    this.selectDate,
    this.selectStatus,
    this.addNewCase,
    this.boq,
    this.caseComments,
    this.quotationAndSpareParts,
    this.operationalProducts,
    this.caseProducts,
    this.timer,
  });

  @override
  String toString() {
    return 'Navconfig(searchHere: $searchHere, liveCase: $liveCase, mySchedules: $mySchedules, selectDate: $selectDate, selectStatus: $selectStatus, addNewCase: $addNewCase, boq: $boq, caseComments: $caseComments, quotationAndSpareParts: $quotationAndSpareParts, operationalProducts: $operationalProducts, caseProducts: $caseProducts, timer: $timer)';
  }

  factory Navconfig.fromJson(Map<String, dynamic> json) {
    return _$NavconfigFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NavconfigToJson(this);

  Navconfig copyWith({
    bool? searchHere,
    bool? liveCase,
    bool? mySchedules,
    bool? selectDate,
    bool? selectStatus,
    bool? addNewCase,
    bool? boq,
    bool? caseComments,
    bool? quotationAndSpareParts,
    bool? operationalProducts,
    bool? caseProducts,
    bool? timer,
  }) {
    return Navconfig(
      searchHere: searchHere ?? this.searchHere,
      liveCase: liveCase ?? this.liveCase,
      mySchedules: mySchedules ?? this.mySchedules,
      selectDate: selectDate ?? this.selectDate,
      selectStatus: selectStatus ?? this.selectStatus,
      addNewCase: addNewCase ?? this.addNewCase,
      boq: boq ?? this.boq,
      caseComments: caseComments ?? this.caseComments,
      quotationAndSpareParts:
          quotationAndSpareParts ?? this.quotationAndSpareParts,
      operationalProducts: operationalProducts ?? this.operationalProducts,
      caseProducts: caseProducts ?? this.caseProducts,
      timer: timer ?? this.timer,
    );
  }
}
