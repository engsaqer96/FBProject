class NotificationModel{
  String destination,title,body;
  NotificationModel({required this.destination,required this.title,required this.body});

  Map<String, dynamic> toJson() {
    return {
      'to': this.destination,
      'notification':
      {'title': this.title,
      'body': this.body,}
    };
  }


}