class UserModel {
  int? id;
  String? email;
  String? phoneNumber;
  String? userName;
  int? roleId;
  String? mobile;
  String? city;
  String? address;
  String? zipCode;
  String? firstname;
  String? lastname;
  String? drivingLicense;
  String? fromScreen;
  String? state;
  String? token;
  String? roleName;

  UserModel(
      {this.id,
        this.email,
        this.phoneNumber,
        this.userName,
        this.roleId,
        this.mobile,
        this.city,
        this.address,
        this.zipCode,
        this.firstname,
        this.lastname,
        this.drivingLicense,
        this.fromScreen,
        this.state,
        this.token,
        this.roleName});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    userName = json['userName'];
    roleId = json['roleId'];
    mobile = json['mobile'];
    city = json['city'];
    address = json['address'];
    zipCode = json['zipCode'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    drivingLicense = json['drivingLicense'];
    fromScreen = json['fromScreen'];
    state = json['state'];
    token = json['token'];
    roleName = json['roleName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['phoneNumber'] = this.phoneNumber;
    data['userName'] = this.userName;
    data['roleId'] = this.roleId;
    data['mobile'] = this.mobile;
    data['city'] = this.city;
    data['address'] = this.address;
    data['zipCode'] = this.zipCode;
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['drivingLicense'] = this.drivingLicense;
    data['fromScreen'] = this.fromScreen;
    data['state'] = this.state;
    data['token'] = this.token;
    data['roleName'] = this.roleName;
    return data;
  }
}
