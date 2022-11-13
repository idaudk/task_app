class socketResponse {
  String? action;
  String? type;
  String? message;
  String? userid;
  String? roomID;

  socketResponse(
      {this.action, this.type, this.message, this.userid, this.roomID});

  socketResponse.fromJson(Map<String, dynamic> json) {
    action = json['action'];
    type = json['type'];
    message = json['message'];
    userid = json['userid'];
    roomID = json['roomID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['action'] = this.action;
    data['type'] = this.type;
    data['message'] = this.message;
    data['userid'] = this.userid;
    data['roomID'] = this.roomID;
    return data;
  }
}
