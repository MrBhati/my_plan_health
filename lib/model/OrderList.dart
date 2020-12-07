class OrderList {
  List<Doctorlist> doctorlist;

  OrderList({this.doctorlist});

  OrderList.fromJson(Map<String, dynamic> json) {
    if (json['doctorlist'] != null) {
      doctorlist = new List<Doctorlist>();
      json['doctorlist'].forEach((v) {
        doctorlist.add(new Doctorlist.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.doctorlist != null) {
      data['doctorlist'] = this.doctorlist.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Doctorlist {
  String sId;
  String userId;
  int iV;
  CreatedAt createdAt;
  List<Doctors> doctors;
  CreatedAt updatedAt;
  List<Userdata> userdata;

  Doctorlist(
      {this.sId,
      this.userId,
      this.iV,
      this.createdAt,
      this.doctors,
      this.updatedAt,
      this.userdata});

  Doctorlist.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    userId = json['userId'];
    iV = json['__v'];
    createdAt = json['createdAt'] != null
        ? new CreatedAt.fromJson(json['createdAt'])
        : null;
    if (json['doctors'] != null) {
      doctors = new List<Doctors>();
      json['doctors'].forEach((v) {
        doctors.add(new Doctors.fromJson(v));
      });
    }
    updatedAt = json['updatedAt'] != null
        ? new CreatedAt.fromJson(json['updatedAt'])
        : null;
    if (json['userdata'] != null) {
      userdata = new List<Userdata>();
      json['userdata'].forEach((v) {
        userdata.add(new Userdata.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['userId'] = this.userId;
    data['__v'] = this.iV;
    if (this.createdAt != null) {
      data['createdAt'] = this.createdAt.toJson();
    }
    if (this.doctors != null) {
      data['doctors'] = this.doctors.map((v) => v.toJson()).toList();
    }
    if (this.updatedAt != null) {
      data['updatedAt'] = this.updatedAt.toJson();
    }
    if (this.userdata != null) {
      data['userdata'] = this.userdata.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CreatedAt {
  String date;

  CreatedAt({this.date});

  CreatedAt.fromJson(Map<String, dynamic> json) {
    date = json['$date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$date'] = this.date;
    return data;
  }
}

class Doctors {
  Id iId;
  String id;
  String name;
  String type;
  CreatedAt bookedAt;
  CreatedAt updatedAt;
  CreatedAt createdAt;

  Doctors(
      {this.iId,
      this.id,
      this.name,
      this.type,
      this.bookedAt,
      this.updatedAt,
      this.createdAt});

  Doctors.fromJson(Map<String, dynamic> json) {
    iId = json['_id'] != null ? new Id.fromJson(json['_id']) : null;
    id = json['id'];
    name = json['name'];
    type = json['type'];
    bookedAt = json['bookedAt'] != null
        ? new CreatedAt.fromJson(json['bookedAt'])
        : null;
    updatedAt = json['updatedAt'] != null
        ? new CreatedAt.fromJson(json['updatedAt'])
        : null;
    createdAt = json['createdAt'] != null
        ? new CreatedAt.fromJson(json['createdAt'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.iId != null) {
      data['_id'] = this.iId.toJson();
    }
    data['id'] = this.id;
    data['name'] = this.name;
    data['type'] = this.type;
    if (this.bookedAt != null) {
      data['bookedAt'] = this.bookedAt.toJson();
    }
    if (this.updatedAt != null) {
      data['updatedAt'] = this.updatedAt.toJson();
    }
    if (this.createdAt != null) {
      data['createdAt'] = this.createdAt.toJson();
    }
    return data;
  }
}

class Id {
  String oid;

  Id({this.oid});

  Id.fromJson(Map<String, dynamic> json) {
    oid = json['$oid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$oid'] = this.oid;
    return data;
  }
}

class Userdata {
  String sId;
  String id;
  String name;
  String cityId;
  int pincode;
  String gender;
  int age;
  int mobile;
  String password;
  CreatedAt dateOfJoining;
  String employeeTag;
  int employeeId;
  String groupId;
  String relation;
  String email;
  String renewalFlag;
  String activeFlag;
  String activePlanId;

  Userdata(
      {this.sId,
      this.id,
      this.name,
      this.cityId,
      this.pincode,
      this.gender,
      this.age,
      this.mobile,
      this.password,
      this.dateOfJoining,
      this.employeeTag,
      this.employeeId,
      this.groupId,
      this.relation,
      this.email,
      this.renewalFlag,
      this.activeFlag,
      this.activePlanId});

  Userdata.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    id = json['id'];
    name = json['name'];
    cityId = json['cityId'];
    pincode = json['pincode'];
    gender = json['gender'];
    age = json['age'];
    mobile = json['mobile'];
    password = json['password'];
    dateOfJoining = json['dateOfJoining'] != null
        ? new CreatedAt.fromJson(json['dateOfJoining'])
        : null;
    employeeTag = json['employeeTag'];
    employeeId = json['employeeId'];
    groupId = json['groupId'];
    relation = json['relation'];
    email = json['email'];
    renewalFlag = json['renewalFlag'];
    activeFlag = json['activeFlag'];
    activePlanId = json['activePlanId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['id'] = this.id;
    data['name'] = this.name;
    data['cityId'] = this.cityId;
    data['pincode'] = this.pincode;
    data['gender'] = this.gender;
    data['age'] = this.age;
    data['mobile'] = this.mobile;
    data['password'] = this.password;
    if (this.dateOfJoining != null) {
      data['dateOfJoining'] = this.dateOfJoining.toJson();
    }
    data['employeeTag'] = this.employeeTag;
    data['employeeId'] = this.employeeId;
    data['groupId'] = this.groupId;
    data['relation'] = this.relation;
    data['email'] = this.email;
    data['renewalFlag'] = this.renewalFlag;
    data['activeFlag'] = this.activeFlag;
    data['activePlanId'] = this.activePlanId;
    return data;
  }
}
