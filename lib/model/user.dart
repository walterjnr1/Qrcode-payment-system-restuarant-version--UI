class User {

  final String company_name;
  final String username;
  final String password;
  final String phone;
  final String address;
 // final String photo;

  User({
   required this.company_name,
   required this.username,
   required this.password,
   required this.phone,
   required this.address,
 //  required this.photo,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      company_name: json['company_name'],
      username: json['username'],
      password: json['password'],
      phone: json['phone'],
      address: json['address'],
     // photo: json['photo'],
    );
  }
  Map<String, dynamic> toJson() => {
    'company_name': company_name,
    'username': username,
    'password': password,
    'phone': phone,
    'address': address,
   // 'photo': photo,

  };
}
class Env {
  static String URL_PREFIX = "http://192.168.43.16/Qr_code_payment_system/API";
  //static String URL_PREFIX = "https://livestock.leastpayproject.com.ng";
//var url = "http://192.168.43.16/livestock_API/register.php";
}