

class UserMadel{
final String? name;
final String?email;
final String? id;

  UserMadel(this.name, this.email, this.id);
Map <String,dynamic>toJeson(){
  return{
   "name":name,
'email':email,
'id':id,
  };
}
}