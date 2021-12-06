import 'dart:convert';

class Discover {
  String image;
  String text;
  Discover({
    required this.image,
    required this.text,
  });

  Discover copyWith({
    String? image,
    String? text,
  }) {
    return Discover(
      image: image ?? this.image,
      text: text ?? this.text,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'text': text,
    };
  }

  factory Discover.fromMap(Map<String, dynamic> map) {
    return Discover(
      image: map['image'],
      text: map['text'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Discover.fromJson(String source) => Discover.fromMap(json.decode(source));

  @override
  String toString() => 'Discover(image: $image, text: $text)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Discover &&
      other.image == image &&
      other.text == text;
  }

  @override
  int get hashCode => image.hashCode ^ text.hashCode;
}
