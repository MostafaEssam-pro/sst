class VehicleRequestHup {
  VehicleRequestHup({
    required this.items,
    required this.count,
  });
  late final List<ItemsVehicleRequest> items;
  late final int count;

  VehicleRequestHup.fromJson(Map<String, dynamic> json){
    items = List.from(json['items']).map((e)=>ItemsVehicleRequest.fromJson(e)).toList();
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['items'] = items.map((e)=>e.toJson()).toList();
    _data['count'] = count;
    return _data;
  }
}

class ItemsVehicleRequest {
  ItemsVehicleRequest({
    required this.masterRequestCode,
    required this.masterRequestNo,
    required this.requestTypeCode,
    required this.trackCode,
    required this.requestDate,
    required this.requestDateHijri,
    required this.mainType,
    required this.departmentApproval,
    this.notes,
    this.canceled,
    this.cancelRequestNumber,
    required this.createdBy,
    required this.creationDate,
    required this.creationDateHijri,
    this.modifiedBy,
    this.modificationDate,
    this.modificationDateHijri,
    required this.employeeCode,
    this.fileName,
    this.filebase64,
    required this.isFromMobile,
    required this.isApplyDuplicate,
    required this.isEdit,
    this.addByName,
    this.employeeName,
    this.departmentApprovalName,
    required this.haveAnyApproval,
    this.userPendingName,
    this.createdByUser,
    required this.trackCanceledExist,
    this.createdByNavigation,
    required this.employeeCodeNavigation,
    this.modifiedByNavigation,
    this.requestTypeCodeNavigation,
    this.trackCodeNavigation,
    required this.wfRequestStatus,
    this.academicAward,
    this.academicCoExtraCurricularActivity,
    this.academicCommittee,
    this.academicPgsupervision,
    this.academicProfessionalDevelopmentCommunityService,
    this.academicPublication,
    this.academicResearchProfile,
    this.academicScientificActivity,
    this.academicSponser,
    this.academicStructInstCapBuildExpansion,
    this.changeSectionDepartRequest,
    this.medicalInsuranceRequest,
    required this.wfMasterRequestsSignatures,
    this.newSectionDepartRequest,
    this.scholarshipRequest,
    this.printBusinessCardRequest,
    this.backToWorkRequest,
    this.parentRequestNavigation,
    this.introductionletterRequest,
    this.medicalInquiryRequest,
    this.reimbursementRequest,
    required this.changeEmployeeDataRequest,
    required this.wfMasterRequestsFiles,
    this.bonusesRequestNavigations,
    required this.timeSheetRequestDetail,
    this.purchasesRequest,
    this.conslidatedPurchasesRequest,
    this.maintenancesRequestNavigations,
    this.generalsRequestNavigations,
    required this.vehiclesRequestNavigations,
    this.residenceRequestNavigations,
    this.transferRequestNavigations,
    required this.wfMasterRequestsConditionNaviagtions,
    this.financialPaymentHrRequestNavigations,
    this.financialPaymentRequestNavigations,
    this.newJobRequestNavigations,
    this.trackTypeCode,
    this.subContractGroupCode,
    this.assignmentCode,
  });
  late final int masterRequestCode;
  late final int? masterRequestNo;
  late final int requestTypeCode;
  late final int trackCode;
  late final String requestDate;
  late final String requestDateHijri;
  late final int mainType;
  late final int departmentApproval;
  late final String? notes;
  late final Null canceled;
  late final Null cancelRequestNumber;
  late final int createdBy;
  late final String creationDate;
  late final String creationDateHijri;
  late final Null modifiedBy;
  late final Null modificationDate;
  late final Null modificationDateHijri;
  late final int employeeCode;
  late final Null fileName;
  late final Null filebase64;
  late final bool isFromMobile;
  late final bool isApplyDuplicate;
  late final bool isEdit;
  late final Null addByName;
  late final Null employeeName;
  late final Null departmentApprovalName;
  late final bool haveAnyApproval;
  late final Null userPendingName;
  late final Null createdByUser;
  late final bool trackCanceledExist;
  late final Null createdByNavigation;
  late final EmployeeCodeNavigation employeeCodeNavigation;
  late final Null modifiedByNavigation;
  late final Null requestTypeCodeNavigation;
  late final Null trackCodeNavigation;
  late final WfRequestStatus wfRequestStatus;
  late final Null academicAward;
  late final Null academicCoExtraCurricularActivity;
  late final Null academicCommittee;
  late final Null academicPgsupervision;
  late final Null academicProfessionalDevelopmentCommunityService;
  late final Null academicPublication;
  late final Null academicResearchProfile;
  late final Null academicScientificActivity;
  late final Null academicSponser;
  late final Null academicStructInstCapBuildExpansion;
  late final Null changeSectionDepartRequest;
  late final Null medicalInsuranceRequest;
  late final List<WfMasterRequestsSignatures> wfMasterRequestsSignatures;
  late final Null newSectionDepartRequest;
  late final Null scholarshipRequest;
  late final Null printBusinessCardRequest;
  late final Null backToWorkRequest;
  late final Null parentRequestNavigation;
  late final Null introductionletterRequest;
  late final Null medicalInquiryRequest;
  late final Null reimbursementRequest;
  late final List<dynamic> changeEmployeeDataRequest;
  late final List<dynamic> wfMasterRequestsFiles;
  late final Null bonusesRequestNavigations;
  late final List<dynamic> timeSheetRequestDetail;
  late final Null purchasesRequest;
  late final Null conslidatedPurchasesRequest;
  late final Null maintenancesRequestNavigations;
  late final Null generalsRequestNavigations;
  late final VehiclesRequestNavigations vehiclesRequestNavigations;
  late final Null residenceRequestNavigations;
  late final Null transferRequestNavigations;
  late final List<dynamic> wfMasterRequestsConditionNaviagtions;
  late final Null financialPaymentHrRequestNavigations;
  late final Null financialPaymentRequestNavigations;
  late final Null newJobRequestNavigations;
  late final Null trackTypeCode;
  late final Null subContractGroupCode;
  late final Null assignmentCode;

  ItemsVehicleRequest.fromJson(Map<String, dynamic> json){
    masterRequestCode = json['masterRequestCode'];
    masterRequestNo = json['masterRequestNo'];
    requestTypeCode = json['requestTypeCode'];
    trackCode = json['trackCode'];
    requestDate = json['requestDate'];
    requestDateHijri = json['requestDateHijri'];
    mainType = json['mainType'];
    departmentApproval = json['departmentApproval'];
    notes = json['notes'];
    canceled = null;
    cancelRequestNumber = null;
    createdBy = json['createdBy'];
    creationDate = json['creationDate'];
    creationDateHijri = json['creationDateHijri'];
    modifiedBy = null;
    modificationDate = null;
    modificationDateHijri = null;
    employeeCode = json['employeeCode'];
    fileName = null;
    filebase64 = null;
    isFromMobile = json['isFromMobile'];
    isApplyDuplicate = json['isApplyDuplicate'];
    isEdit = json['isEdit'];
    addByName = null;
    employeeName = null;
    departmentApprovalName = null;
    haveAnyApproval = json['haveAnyApproval'];
    userPendingName = null;
    createdByUser = null;
    trackCanceledExist = json['trackCanceledExist'];
    createdByNavigation = null;
    employeeCodeNavigation = EmployeeCodeNavigation.fromJson(json['employeeCodeNavigation']);
    modifiedByNavigation = null;
    requestTypeCodeNavigation = null;
    trackCodeNavigation = null;
    wfRequestStatus = WfRequestStatus.fromJson(json['wfRequestStatus']);
    academicAward = null;
    academicCoExtraCurricularActivity = null;
    academicCommittee = null;
    academicPgsupervision = null;
    academicProfessionalDevelopmentCommunityService = null;
    academicPublication = null;
    academicResearchProfile = null;
    academicScientificActivity = null;
    academicSponser = null;
    academicStructInstCapBuildExpansion = null;
    changeSectionDepartRequest = null;
    medicalInsuranceRequest = null;
    wfMasterRequestsSignatures = List.from(json['wfMasterRequestsSignatures']).map((e)=>WfMasterRequestsSignatures.fromJson(e)).toList();
    newSectionDepartRequest = null;
    scholarshipRequest = null;
    printBusinessCardRequest = null;
    backToWorkRequest = null;
    parentRequestNavigation = null;
    introductionletterRequest = null;
    medicalInquiryRequest = null;
    reimbursementRequest = null;
    changeEmployeeDataRequest = List.castFrom<dynamic, dynamic>(json['changeEmployeeDataRequest']);
    wfMasterRequestsFiles = List.castFrom<dynamic, dynamic>(json['wfMasterRequestsFiles']);
    bonusesRequestNavigations = null;
    timeSheetRequestDetail = List.castFrom<dynamic, dynamic>(json['timeSheetRequestDetail']);
    purchasesRequest = null;
    conslidatedPurchasesRequest = null;
    maintenancesRequestNavigations = null;
    generalsRequestNavigations = null;
    vehiclesRequestNavigations = VehiclesRequestNavigations.fromJson(json['vehiclesRequestNavigations']);
    residenceRequestNavigations = null;
    transferRequestNavigations = null;
    wfMasterRequestsConditionNaviagtions = List.castFrom<dynamic, dynamic>(json['wfMasterRequestsConditionNaviagtions']);
    financialPaymentHrRequestNavigations = null;
    financialPaymentRequestNavigations = null;
    newJobRequestNavigations = null;
    trackTypeCode = null;
    subContractGroupCode = null;
    assignmentCode = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['masterRequestCode'] = masterRequestCode;
    _data['masterRequestNo'] = masterRequestNo;
    _data['requestTypeCode'] = requestTypeCode;
    _data['trackCode'] = trackCode;
    _data['requestDate'] = requestDate;
    _data['requestDateHijri'] = requestDateHijri;
    _data['mainType'] = mainType;
    _data['departmentApproval'] = departmentApproval;
    _data['notes'] = notes;
    _data['canceled'] = canceled;
    _data['cancelRequestNumber'] = cancelRequestNumber;
    _data['createdBy'] = createdBy;
    _data['creationDate'] = creationDate;
    _data['creationDateHijri'] = creationDateHijri;
    _data['modifiedBy'] = modifiedBy;
    _data['modificationDate'] = modificationDate;
    _data['modificationDateHijri'] = modificationDateHijri;
    _data['employeeCode'] = employeeCode;
    _data['fileName'] = fileName;
    _data['filebase64'] = filebase64;
    _data['isFromMobile'] = isFromMobile;
    _data['isApplyDuplicate'] = isApplyDuplicate;
    _data['isEdit'] = isEdit;
    _data['addByName'] = addByName;
    _data['employeeName'] = employeeName;
    _data['departmentApprovalName'] = departmentApprovalName;
    _data['haveAnyApproval'] = haveAnyApproval;
    _data['userPendingName'] = userPendingName;
    _data['createdByUser'] = createdByUser;
    _data['trackCanceledExist'] = trackCanceledExist;
    _data['createdByNavigation'] = createdByNavigation;
    _data['employeeCodeNavigation'] = employeeCodeNavigation.toJson();
    _data['modifiedByNavigation'] = modifiedByNavigation;
    _data['requestTypeCodeNavigation'] = requestTypeCodeNavigation;
    _data['trackCodeNavigation'] = trackCodeNavigation;
    _data['wfRequestStatus'] = wfRequestStatus.toJson();
    _data['academicAward'] = academicAward;
    _data['academicCoExtraCurricularActivity'] = academicCoExtraCurricularActivity;
    _data['academicCommittee'] = academicCommittee;
    _data['academicPgsupervision'] = academicPgsupervision;
    _data['academicProfessionalDevelopmentCommunityService'] = academicProfessionalDevelopmentCommunityService;
    _data['academicPublication'] = academicPublication;
    _data['academicResearchProfile'] = academicResearchProfile;
    _data['academicScientificActivity'] = academicScientificActivity;
    _data['academicSponser'] = academicSponser;
    _data['academicStructInstCapBuildExpansion'] = academicStructInstCapBuildExpansion;
    _data['changeSectionDepartRequest'] = changeSectionDepartRequest;
    _data['medicalInsuranceRequest'] = medicalInsuranceRequest;
    _data['wfMasterRequestsSignatures'] = wfMasterRequestsSignatures.map((e)=>e.toJson()).toList();
    _data['newSectionDepartRequest'] = newSectionDepartRequest;
    _data['scholarshipRequest'] = scholarshipRequest;
    _data['printBusinessCardRequest'] = printBusinessCardRequest;
    _data['backToWorkRequest'] = backToWorkRequest;
    _data['parentRequestNavigation'] = parentRequestNavigation;
    _data['introductionletterRequest'] = introductionletterRequest;
    _data['medicalInquiryRequest'] = medicalInquiryRequest;
    _data['reimbursementRequest'] = reimbursementRequest;
    _data['changeEmployeeDataRequest'] = changeEmployeeDataRequest;
    _data['wfMasterRequestsFiles'] = wfMasterRequestsFiles;
    _data['bonusesRequestNavigations'] = bonusesRequestNavigations;
    _data['timeSheetRequestDetail'] = timeSheetRequestDetail;
    _data['purchasesRequest'] = purchasesRequest;
    _data['conslidatedPurchasesRequest'] = conslidatedPurchasesRequest;
    _data['maintenancesRequestNavigations'] = maintenancesRequestNavigations;
    _data['generalsRequestNavigations'] = generalsRequestNavigations;
    _data['vehiclesRequestNavigations'] = vehiclesRequestNavigations.toJson();
    _data['residenceRequestNavigations'] = residenceRequestNavigations;
    _data['transferRequestNavigations'] = transferRequestNavigations;
    _data['wfMasterRequestsConditionNaviagtions'] = wfMasterRequestsConditionNaviagtions;
    _data['financialPaymentHrRequestNavigations'] = financialPaymentHrRequestNavigations;
    _data['financialPaymentRequestNavigations'] = financialPaymentRequestNavigations;
    _data['newJobRequestNavigations'] = newJobRequestNavigations;
    _data['trackTypeCode'] = trackTypeCode;
    _data['subContractGroupCode'] = subContractGroupCode;
    _data['assignmentCode'] = assignmentCode;
    return _data;
  }
}

class EmployeeCodeNavigation {
  EmployeeCodeNavigation({
    required this.employeeCode,
    required this.name,
    required this.arabicName,
    required this.eMail,
    required this.userId,
    required this.levelCode,
    this.englishName,
    this.departmentName,
    this.departmentNameAr,
    this.sectionName,
    this.sectionNameAr,
    required this.locationCode,
    required this.userTypeCode,
    this.positionName,
    this.nationalityName,
    this.positionNameAr,
    this.directManagerName,
    this.directManagerNameAr,
    this.sectionManagerName,
    this.departmentManagerName,
    this.divisionManagerName,
    this.personalManagerName,
    this.hrManagerName,
    this.chiefAccountantName,
    this.financialControlerName,
    this.generalManagerName,
    this.locationManagerName,
    this.userName,
    required this.hiringDate,
    required this.resignationDate,
    required this.hiringDateHijri,
    required this.positionCode,
    required this.divisionCode,
    required this.departmentCode,
    required this.sectionCode,
    this.locationName,
    this.divisionName,
    this.levelName,
    required this.birthDate,
    required this.bankCode,
    required this.sex,
    required this.contractExpireDate,
    required this.isSelected,
    required this.totalSalary,
    required this.outofattendanceMachine,
    required this.active,
    this.userImage,
    this.userFullName,
    required this.delegationId,
    this.org4Code,
    this.org5Code,
    this.org6Code,
    this.org7Code,
    this.org8Code,
    this.org9Code,
    this.extensionNumber,
    required this.maritalCode,
    required this.mobile,
    required this.engFullAddress,
    required this.arabicFullAddress,
    this.bankAccountNumber,
    this.residenceExpireDateHijiri,
    this.residenceExpireDate,
    this.residenceNumber,
    required this.nationalityCode,
  });
  late final int employeeCode;
  late final String name;
  late final String arabicName;
  late final String eMail;
  late final int userId;
  late final int levelCode;
  late final Null englishName;
  late final Null departmentName;
  late final Null departmentNameAr;
  late final Null sectionName;
  late final Null sectionNameAr;
  late final int locationCode;
  late final int userTypeCode;
  late final Null positionName;
  late final Null nationalityName;
  late final Null positionNameAr;
  late final Null directManagerName;
  late final Null directManagerNameAr;
  late final Null sectionManagerName;
  late final Null departmentManagerName;
  late final Null divisionManagerName;
  late final Null personalManagerName;
  late final Null hrManagerName;
  late final Null chiefAccountantName;
  late final Null financialControlerName;
  late final Null generalManagerName;
  late final Null locationManagerName;
  late final Null userName;
  late final String hiringDate;
  late final String resignationDate;
  late final String hiringDateHijri;
  late final String positionCode;
  late final String divisionCode;
  late final String departmentCode;
  late final String sectionCode;
  late final Null locationName;
  late final Null divisionName;
  late final Null levelName;
  late final String birthDate;
  late final int bankCode;
  late final bool sex;
  late final String contractExpireDate;
  late final bool isSelected;
  late final double totalSalary;
  late final bool outofattendanceMachine;
  late final int active;
  late final Null userImage;
  late final Null userFullName;
  late final int delegationId;
  late final Null org4Code;
  late final Null org5Code;
  late final Null org6Code;
  late final Null org7Code;
  late final Null org8Code;
  late final Null org9Code;
  late final Null extensionNumber;
  late final int maritalCode;
  late final String mobile;
  late final String engFullAddress;
  late final String arabicFullAddress;
  late final Null bankAccountNumber;
  late final Null residenceExpireDateHijiri;
  late final Null residenceExpireDate;
  late final Null residenceNumber;
  late final int nationalityCode;

  EmployeeCodeNavigation.fromJson(Map<String, dynamic> json){
    employeeCode = json['employeeCode'];
    name = json['name'];
    arabicName = json['arabic_Name'];
    eMail = json['eMail'].toString();
    userId = json['userId'];
    levelCode = json['levelCode'];
    englishName = null;
    departmentName = null;
    departmentNameAr = null;
    sectionName = null;
    sectionNameAr = null;
    locationCode = json['locationCode'];
    userTypeCode = json['userTypeCode'];
    positionName = null;
    nationalityName = null;
    positionNameAr = null;
    directManagerName = null;
    directManagerNameAr = null;
    sectionManagerName = null;
    departmentManagerName = null;
    divisionManagerName = null;
    personalManagerName = null;
    hrManagerName = null;
    chiefAccountantName = null;
    financialControlerName = null;
    generalManagerName = null;
    locationManagerName = null;
    userName = null;
    hiringDate = json['hiringDate'];
    resignationDate = json['resignationDate'];
    hiringDateHijri = json['hiringDateHijri'].toString();
    positionCode = json['positionCode'];
    divisionCode = json['divisionCode'];
    departmentCode = json['departmentCode'];
    sectionCode = json['sectionCode'];
    locationName = null;
    divisionName = null;
    levelName = null;
    birthDate = json['birthDate'];
    bankCode = json['bankCode'];
    sex = json['sex'];
    contractExpireDate = json['contractExpireDate'];
    isSelected = json['isSelected'];
    totalSalary = json['totalSalary'];
    outofattendanceMachine = json['outofattendanceMachine'];
    active = json['active'];
    userImage = null;
    userFullName = null;
    delegationId = json['delegationId'];
    org4Code = null;
    org5Code = null;
    org6Code = null;
    org7Code = null;
    org8Code = null;
    org9Code = null;
    extensionNumber = null;
    maritalCode = json['maritalCode'];
    mobile = json['mobile'].toString();
    engFullAddress = json['engFullAddress'].toString();
    arabicFullAddress = json['arabicFullAddress'].toString();
    bankAccountNumber = null;
    residenceExpireDateHijiri = null;
    residenceExpireDate = null;
    residenceNumber = null;
    nationalityCode = json['nationalityCode'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['employeeCode'] = employeeCode;
    _data['name'] = name;
    _data['arabic_Name'] = arabicName;
    _data['eMail'] = eMail;
    _data['userId'] = userId;
    _data['levelCode'] = levelCode;
    _data['english_Name'] = englishName;
    _data['departmentName'] = departmentName;
    _data['departmentNameAr'] = departmentNameAr;
    _data['sectionName'] = sectionName;
    _data['sectionNameAr'] = sectionNameAr;
    _data['locationCode'] = locationCode;
    _data['userTypeCode'] = userTypeCode;
    _data['positionName'] = positionName;
    _data['nationalityName'] = nationalityName;
    _data['positionNameAr'] = positionNameAr;
    _data['directManagerName'] = directManagerName;
    _data['directManagerNameAr'] = directManagerNameAr;
    _data['sectionManagerName'] = sectionManagerName;
    _data['departmentManagerName'] = departmentManagerName;
    _data['divisionManagerName'] = divisionManagerName;
    _data['personalManagerName'] = personalManagerName;
    _data['hrManagerName'] = hrManagerName;
    _data['chiefAccountantName'] = chiefAccountantName;
    _data['financialControlerName'] = financialControlerName;
    _data['generalManagerName'] = generalManagerName;
    _data['locationManagerName'] = locationManagerName;
    _data['userName'] = userName;
    _data['hiringDate'] = hiringDate;
    _data['resignationDate'] = resignationDate;
    _data['hiringDateHijri'] = hiringDateHijri;
    _data['positionCode'] = positionCode;
    _data['divisionCode'] = divisionCode;
    _data['departmentCode'] = departmentCode;
    _data['sectionCode'] = sectionCode;
    _data['locationName'] = locationName;
    _data['divisionName'] = divisionName;
    _data['levelName'] = levelName;
    _data['birthDate'] = birthDate;
    _data['bankCode'] = bankCode;
    _data['sex'] = sex;
    _data['contractExpireDate'] = contractExpireDate;
    _data['isSelected'] = isSelected;
    _data['totalSalary'] = totalSalary;
    _data['outofattendanceMachine'] = outofattendanceMachine;
    _data['active'] = active;
    _data['userImage'] = userImage;
    _data['userFullName'] = userFullName;
    _data['delegationId'] = delegationId;
    _data['org4Code'] = org4Code;
    _data['org5Code'] = org5Code;
    _data['org6Code'] = org6Code;
    _data['org7Code'] = org7Code;
    _data['org8Code'] = org8Code;
    _data['org9Code'] = org9Code;
    _data['extensionNumber'] = extensionNumber;
    _data['maritalCode'] = maritalCode;
    _data['mobile'] = mobile;
    _data['engFullAddress'] = engFullAddress;
    _data['arabicFullAddress'] = arabicFullAddress;
    _data['bankAccountNumber'] = bankAccountNumber;
    _data['residenceExpireDateHijiri'] = residenceExpireDateHijiri;
    _data['residenceExpireDate'] = residenceExpireDate;
    _data['residenceNumber'] = residenceNumber;
    _data['nationalityCode'] = nationalityCode;
    return _data;
  }
}

class WfRequestStatus {
  WfRequestStatus({
    required this.requestStatusId,
    required this.requestStatusName,
    required this.requestStatusNameEn,
  });
  late final int requestStatusId;
  late final String requestStatusName;
  late final String requestStatusNameEn;

  WfRequestStatus.fromJson(Map<String, dynamic> json){
    requestStatusId = json['requestStatusId'];
    requestStatusName = json['requestStatusName'];
    requestStatusNameEn = json['requestStatusNameEn'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['requestStatusId'] = requestStatusId;
    _data['requestStatusName'] = requestStatusName;
    _data['requestStatusNameEn'] = requestStatusNameEn;
    return _data;
  }
}

class WfMasterRequestsSignatures {
  WfMasterRequestsSignatures({
    required this.masterRequestSignatureCode,
    required this.masterRequestCode,
    required this.userCode,
    required this.stepNumber,
    required this.approved,
    this.signatureDate,
    this.signatureDateHijri,
    this.signatureTime,
    this.signatureComment,
    this.signatureCommentInverse,
    required this.turn,
    this.oldUserCode,
    this.changedBy,
    this.changeDate,
    required this.userTypeCode,
    required this.requestTypeCode,
    required this.userCodeNavigation,
    required this.wfRequestStatus,
  });
  late final int masterRequestSignatureCode;
  late final int masterRequestCode;
  late final int userCode;
  late final int stepNumber;
  late final int approved;
  late final Null signatureDate;
  late final Null signatureDateHijri;
  late final Null signatureTime;
  late final Null signatureComment;
  late final Null signatureCommentInverse;
  late final int turn;
  late final Null oldUserCode;
  late final Null changedBy;
  late final Null changeDate;
  late final int userTypeCode;
  late final int requestTypeCode;
  late final UserCodeNavigation userCodeNavigation;
  late final WfRequestStatus wfRequestStatus;

  WfMasterRequestsSignatures.fromJson(Map<String, dynamic> json){
    masterRequestSignatureCode = json['masterRequestSignatureCode'];
    masterRequestCode = json['masterRequestCode'];
    userCode = json['userCode'];
    stepNumber = json['stepNumber'];
    approved = json['approved'];
    signatureDate = null;
    signatureDateHijri = null;
    signatureTime = null;
    signatureComment = null;
    signatureCommentInverse = null;
    turn = json['turn'];
    oldUserCode = null;
    changedBy = null;
    changeDate = null;
    userTypeCode = json['userTypeCode'];
    requestTypeCode = json['requestTypeCode'];
    userCodeNavigation = UserCodeNavigation.fromJson(json['userCodeNavigation']);
    wfRequestStatus = WfRequestStatus.fromJson(json['wfRequestStatus']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['masterRequestSignatureCode'] = masterRequestSignatureCode;
    _data['masterRequestCode'] = masterRequestCode;
    _data['userCode'] = userCode;
    _data['stepNumber'] = stepNumber;
    _data['approved'] = approved;
    _data['signatureDate'] = signatureDate;
    _data['signatureDateHijri'] = signatureDateHijri;
    _data['signatureTime'] = signatureTime;
    _data['signatureComment'] = signatureComment;
    _data['signatureCommentInverse'] = signatureCommentInverse;
    _data['turn'] = turn;
    _data['oldUserCode'] = oldUserCode;
    _data['changedBy'] = changedBy;
    _data['changeDate'] = changeDate;
    _data['userTypeCode'] = userTypeCode;
    _data['requestTypeCode'] = requestTypeCode;
    _data['userCodeNavigation'] = userCodeNavigation.toJson();
    _data['wfRequestStatus'] = wfRequestStatus.toJson();
    return _data;
  }
}

class UserCodeNavigation {
  UserCodeNavigation({
    required this.securityUserCode,
    required this.securityGroupCode,
    required this.userName,
    required this.password,
    required this.isActive,
    required this.isAdmin,
    required this.lang,
    required this.skin,
    required this.name,
    required this.arabicName,
    required this.isEditable,
    this.email,
    required this.recieveEmailNotifications,
    required this.employeeCode,
    this.userTypeCode,
    this.defaultMenuCode,
    this.maxStorageSize,
    required this.securityLevel,
    required this.isFirstLogin,
    this.employeeCodeNavigation,
    this.userTypeCodeNavigation,
  });
  late final int securityUserCode;
  late final int securityGroupCode;
  late final String userName;
  late final String password;
  late final bool isActive;
  late final bool isAdmin;
  late final String lang;
  late final String skin;
  late final String name;
  late final String arabicName;
  late final bool isEditable;
  late final Null email;
  late final bool recieveEmailNotifications;
  late final int employeeCode;
  late final Null userTypeCode;
  late final Null defaultMenuCode;
  late final Null maxStorageSize;
  late final int securityLevel;
  late final bool isFirstLogin;
  late final Null employeeCodeNavigation;
  late final Null userTypeCodeNavigation;

  UserCodeNavigation.fromJson(Map<String, dynamic> json){
    securityUserCode = json['securityUserCode'];
    securityGroupCode = json['securityGroupCode'];
    userName = json['userName'];
    password = json['password'];
    isActive = json['isActive'];
    isAdmin = json['isAdmin'];
    lang = json['lang'];
    skin = json['skin'];
    name = json['name'];
    arabicName = json['arabic_Name'];
    isEditable = json['isEditable'];
    email = null;
    recieveEmailNotifications = json['recieveEmailNotifications'];
    employeeCode = json['employeeCode'];
    userTypeCode = null;
    defaultMenuCode = null;
    maxStorageSize = null;
    securityLevel = json['securityLevel'];
    isFirstLogin = json['isFirstLogin'];
    employeeCodeNavigation = null;
    userTypeCodeNavigation = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['securityUserCode'] = securityUserCode;
    _data['securityGroupCode'] = securityGroupCode;
    _data['userName'] = userName;
    _data['password'] = password;
    _data['isActive'] = isActive;
    _data['isAdmin'] = isAdmin;
    _data['lang'] = lang;
    _data['skin'] = skin;
    _data['name'] = name;
    _data['arabic_Name'] = arabicName;
    _data['isEditable'] = isEditable;
    _data['email'] = email;
    _data['recieveEmailNotifications'] = recieveEmailNotifications;
    _data['employeeCode'] = employeeCode;
    _data['userTypeCode'] = userTypeCode;
    _data['defaultMenuCode'] = defaultMenuCode;
    _data['maxStorageSize'] = maxStorageSize;
    _data['securityLevel'] = securityLevel;
    _data['isFirstLogin'] = isFirstLogin;
    _data['employeeCodeNavigation'] = employeeCodeNavigation;
    _data['userTypeCodeNavigation'] = userTypeCodeNavigation;
    return _data;
  }
}

class VehiclesRequestNavigations {
  VehiclesRequestNavigations({
    required this.masterRequestCode,
    required this.requestFromTime,
    required this.requestToTime,
    required this.isFullDay,
    required this.directionCode,
    required this.vehicleTypeCode,
    this.vehicleCost,
    required this.directionCodeNavigation,
    required this.vehicleTypeCodeNavigation,
  });
  late final int masterRequestCode;
  late final String requestFromTime;
  late final String requestToTime;
  late final bool isFullDay;
  late final int directionCode;
  late final int vehicleTypeCode;
  late final Null vehicleCost;
  late final DirectionCodeNavigation directionCodeNavigation;
  late final VehicleTypeCodeNavigation vehicleTypeCodeNavigation;

  VehiclesRequestNavigations.fromJson(Map<String, dynamic> json){
    masterRequestCode = json['masterRequestCode'];
    requestFromTime = json['requestFromTime'];
    requestToTime = json['requestToTime'];
    isFullDay = json['isFullDay'];
    directionCode = json['directionCode'];
    vehicleTypeCode = json['vehicleTypeCode'];
    vehicleCost = null;
    directionCodeNavigation = DirectionCodeNavigation.fromJson(json['directionCodeNavigation']);
    vehicleTypeCodeNavigation = VehicleTypeCodeNavigation.fromJson(json['vehicleTypeCodeNavigation']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['masterRequestCode'] = masterRequestCode;
    _data['requestFromTime'] = requestFromTime;
    _data['requestToTime'] = requestToTime;
    _data['isFullDay'] = isFullDay;
    _data['directionCode'] = directionCode;
    _data['vehicleTypeCode'] = vehicleTypeCode;
    _data['vehicleCost'] = vehicleCost;
    _data['directionCodeNavigation'] = directionCodeNavigation.toJson();
    _data['vehicleTypeCodeNavigation'] = vehicleTypeCodeNavigation.toJson();
    return _data;
  }
}

class DirectionCodeNavigation {
  DirectionCodeNavigation({
    required this.directionCode,
    required this.name,
    required this.arabicName,
    this.vehiclesRequestDtoNavigation,
  });
  late final int directionCode;
  late final String name;
  late final String arabicName;
  late final Null vehiclesRequestDtoNavigation;

  DirectionCodeNavigation.fromJson(Map<String, dynamic> json){
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

class VehicleTypeCodeNavigation {
  VehicleTypeCodeNavigation({
    required this.vehicleTypeCode,
    required this.name,
    required this.arabicName,
    required this.vehiclesRequestNavigation,
  });
  late final int vehicleTypeCode;
  late final String name;
  late final String arabicName;
  late final List<dynamic> vehiclesRequestNavigation;

  VehicleTypeCodeNavigation.fromJson(Map<String, dynamic> json){
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