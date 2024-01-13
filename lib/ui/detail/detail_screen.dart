import 'package:flutter/material.dart';
import 'package:image_search_app_ver2/domain/model/image_item.dart';

class DetailScreen extends StatelessWidget {
  final ImageItem imageItem;

  const DetailScreen({
    super.key,
    required this.imageItem,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('이미지'),
      ),
      body: Hero(
        tag: imageItem.id,
        child: Image.network(imageItem.imageUrl,fit: BoxFit.cover,),
      ),
    );
  }
}
