class SearchModel {
  Null? srchEmployeeId;
  int? srchUserId;
  int? srchRequestType;
  Null? fromCreationDate;
  Null? toCreationDate;
  Null? fromRequestDate;
  Null? toRequestDate;
  int? srchMainType;
  bool? deptPending;
  int? deptAccepted;
  bool? deptRefused;
  Null? srchSection;
  bool? signaturePendingHaveOldSignature;
  PagingRequest? pagingRequest;
  bool? signaturePending;
  bool? signatureAccepted;
  bool? signatureRefused;

  SearchModel(
      {this.srchEmployeeId,
        this.srchUserId,
        this.srchRequestType,
        this.fromCreationDate,
        this.toCreationDate,
        this.fromRequestDate,
        this.toRequestDate,
        this.srchMainType,
        this.deptPending,
        this.deptAccepted,
        this.deptRefused,
        this.srchSection,
        this.signaturePendingHaveOldSignature,
        this.pagingRequest,
        this.signaturePending,
        this.signatureAccepted,
        this.signatureRefused});

  SearchModel.fromJson(Map<String, dynamic> json) {
    srchEmployeeId = json['srchEmployeeId'];
    srchUserId = json['srchUserId'];
    srchRequestType = json['srchRequestType'];
    fromCreationDate = json['fromCreationDate'];
    toCreationDate = json['toCreationDate'];
    fromRequestDate = json['fromRequestDate'];
    toRequestDate = json['toRequestDate'];
    srchMainType = json['srchMainType'];
    deptPending = json['deptPending'];
    deptAccepted = json['deptAccepted'];
    deptRefused = json['deptRefused'];
    srchSection = json['srchSection'];
    signaturePendingHaveOldSignature = json['signaturePendingHaveOldSignature'];
    pagingRequest = json['pagingRequest'] != null
        ? new PagingRequest.fromJson(json['pagingRequest'])
        : null;
    signaturePending = json['signaturePending'];
    signatureAccepted = json['signatureAccepted'];
    signatureRefused = json['signatureRefused'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['srchEmployeeId'] = this.srchEmployeeId;
    data['srchUserId'] = this.srchUserId;
    data['srchRequestType'] = this.srchRequestType;
    data['fromCreationDate'] = this.fromCreationDate;
    data['toCreationDate'] = this.toCreationDate;
    data['fromRequestDate'] = this.fromRequestDate;
    data['toRequestDate'] = this.toRequestDate;
    data['srchMainType'] = this.srchMainType;
    data['deptPending'] = this.deptPending;
    data['deptAccepted'] = this.deptAccepted;
    data['deptRefused'] = this.deptRefused;
    data['srchSection'] = this.srchSection;
    data['signaturePendingHaveOldSignature'] =
        this.signaturePendingHaveOldSignature;
    if (this.pagingRequest != null) {
      data['pagingRequest'] = this.pagingRequest!.toJson();
    }
    data['signaturePending'] = this.signaturePending;
    data['signatureAccepted'] = this.signatureAccepted;
    data['signatureRefused'] = this.signatureRefused;
    return data;
  }
}

class PagingRequest {
  int? page;
  int? pageSize;
  Null? sort;

  PagingRequest({this.page, this.pageSize, this.sort});

  PagingRequest.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    pageSize = json['pageSize'];
    sort = json['sort'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    data['pageSize'] = this.pageSize;
    data['sort'] = this.sort;
    return data;
  }
}