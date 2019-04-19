class User {
  // Members
  String _firstName;
  String _lastName;
  String _uid;
  String _email;

  // Properties
  String get firstName => _firstName;
  String get lastName => _lastName;
  String get uid => _uid;
  String get email => _email;
  String get initials => '${_firstName[0]}${_lastName[0]}'.toUpperCase();
  String get fullName => '$_firstName $lastName';

  // Contructors
  User(this._firstName, this._lastName, this._uid, this._email);

  User.fromUser(User user) {
    _firstName = user.firstName;
    _lastName = user.lastName;
    _uid = user._uid;
    _email = user._email;
  }

  User.fromJson(Map<String, dynamic> map) {
    _firstName = map['firstName'];
    _lastName = map['lastName'];
    _uid = map['uid'];
    _email = map['email'];
  }

  Map<String, dynamic> toJson() => {
        'firstName': _firstName,
        'lastName': _lastName,
        'uid': _uid,
        'email': _email
      };

  Map<String, String> toJson2() => {
        'firstName': _firstName,
        'lastName': _lastName,
        'uid': _uid,
        'email': _email
      };

  @override
  operator ==(dynamic user) => user is User && _uid == user._uid;

  @override
  int get hashCode =>
      _firstName.hashCode ^
      _lastName.hashCode ^
      _uid.hashCode ^
      _email.hashCode;
}
