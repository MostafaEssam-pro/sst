class LoginModel {
  String? userName;
  int? userCode;
  String? lang;
  String? name;
  String? arabicName;
  String? userImage;
  int? employeeCode;
  String? sectionCode;
  String? departmentCode;
  int? locationCode;
  List<int>? userEmployees;
  List<String>? userSections;
  List<String>? userDepartments;
  List<String>? userDivisions;
  List<int>? userEmployeesFullOption;
  List<int>? userPrivileges;
  List<UserLocations>? userLocations;
  String? token;

  LoginModel(
      {this.userName,
        this.userCode,
        this.lang,
        this.name,
        this.arabicName,
        this.userImage,
        this.employeeCode,
        this.sectionCode,
        this.departmentCode,
        this.locationCode,
        this.userEmployees,
        this.userSections,
        this.userDepartments,
        this.userDivisions,
        this.userEmployeesFullOption,
        this.userPrivileges,
        this.userLocations,
        this.token});

  LoginModel.fromJson(Map<String, dynamic> json) {
    userName = json['UserName'];
    userCode = json['UserCode'];
    lang = json['Lang'];
    name = json['Name'];
    arabicName = json['Arabic_Name'];
    userImage = json['UserImage'];
    employeeCode = json['EmployeeCode'];
    sectionCode = json['SectionCode'];
    departmentCode = json['DepartmentCode'];
    locationCode = json['LocationCode'];
    userEmployees = json['UserEmployees'].cast<int>();
    userSections = json['UserSections'].cast<String>();
    userDepartments = json['UserDepartments'].cast<String>();
    userDivisions = json['UserDivisions'].cast<String>();
    userEmployeesFullOption = json['UserEmployeesFullOption'].cast<int>();
    userPrivileges = json['UserPrivileges'].cast<int>();
    if (json['UserLocations'] != null) {
      userLocations = <UserLocations>[];
      json['UserLocations'].forEach((v) {
        userLocations!.add(new UserLocations.fromJson(v));
      });
    }
    token = json['Token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['UserName'] = this.userName;
    data['UserCode'] = this.userCode;
    data['Lang'] = this.lang;
    data['Name'] = this.name;
    data['Arabic_Name'] = this.arabicName;
    data['UserImage'] = this.userImage;
    data['EmployeeCode'] = this.employeeCode;
    data['SectionCode'] = this.sectionCode;
    data['DepartmentCode'] = this.departmentCode;
    data['LocationCode'] = this.locationCode;
    data['UserEmployees'] = this.userEmployees;
    data['UserSections'] = this.userSections;
    data['UserDepartments'] = this.userDepartments;
    data['UserDivisions'] = this.userDivisions;
    data['UserEmployeesFullOption'] = this.userEmployeesFullOption;
    data['UserPrivileges'] = this.userPrivileges;
    if (this.userLocations != null) {
      data['UserLocations'] =
          this.userLocations!.map((v) => v.toJson()).toList();
    }
    data['Token'] = this.token;
    return data;
  }
}

class UserLocations {
  int? locationCode;
  String? locationName;
  String? locationNameAr;
  bool? isMainLocation;

  UserLocations(
      {this.locationCode,
        this.locationName,
        this.locationNameAr,
        this.isMainLocation});

  UserLocations.fromJson(Map<String, dynamic> json) {
    locationCode = json['LocationCode'];
    locationName = json['LocationName'];
    locationNameAr = json['LocationNameAr'];
    isMainLocation = json['IsMainLocation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['LocationCode'] = this.locationCode;
    data['LocationName'] = this.locationName;
    data['LocationNameAr'] = this.locationNameAr;
    data['IsMainLocation'] = this.isMainLocation;
    return data;
  }
}