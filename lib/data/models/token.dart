class Token {
  final String token;
  final String refreshToken;
  final DateTime tokenExpiresIn;
  final DateTime refreshTokenExpiresIn;

  const Token({
    required this.token,
    required this.refreshToken,
    required this.tokenExpiresIn,
    required this.refreshTokenExpiresIn,
  });

  factory Token.fromJson(Map<String, dynamic> json) {
    return Token(
      token: json['token'],
      refreshToken: json['refreshToken'],
      tokenExpiresIn: DateTime.parse(json['tokenExpiresIn']),
      refreshTokenExpiresIn: DateTime.parse(json['refreshTokenExpiresIn']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'refreshToken': refreshToken,
      'tokenExpiresIn': tokenExpiresIn.toIso8601String(),
      'refreshTokenExpiresIn': refreshTokenExpiresIn.toIso8601String(),
    };
  }
}
