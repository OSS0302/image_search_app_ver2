class ImageItem {
  String imageUrl;
  String tage;
  int id;

//<editor-fold desc="Data Methods">
  ImageItem({
    required this.imageUrl,
    required this.tage,
    required this.id,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ImageItem &&
          runtimeType == other.runtimeType &&
          imageUrl == other.imageUrl &&
          tage == other.tage &&
          id == other.id);

  @override
  int get hashCode => imageUrl.hashCode ^ tage.hashCode ^ id.hashCode;

  @override
  String toString() {
    return 'ImageItem{' +
        ' imageUrl: $imageUrl,' +
        ' tage: $tage,' +
        ' id: $id,' +
        '}';
  }

  ImageItem copyWith({
    String? imageUrl,
    String? tage,
    int? id,
  }) {
    return ImageItem(
      imageUrl: imageUrl ?? this.imageUrl,
      tage: tage ?? this.tage,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'imageUrl': this.imageUrl,
      'tage': this.tage,
      'id': this.id,
    };
  }

  factory ImageItem.fromJson(Map<String, dynamic> json) {
    return ImageItem(
      imageUrl: json['imageUrl'] as String,
      tage: json['tage'] as String,
      id: json['id'] as int,
    );
  }

//</editor-fold>
}
