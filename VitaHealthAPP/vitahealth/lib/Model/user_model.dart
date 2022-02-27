class UserModel {
  late int id;
  late String nome;
  late String email;
  late String senha;

  UserModel(
      {required this.id,
      required this.nome,
      required this.email,
      required this.senha});

  factory UserModel.fromMap(Map<dynamic, dynamic> map) {
    final model = UserModel(
        id: map['id'] as int,
        nome: map['nome'] as String,
        email: map['email'] as String,
        senha: map['senha'] as String);

    return model;
  }
}
