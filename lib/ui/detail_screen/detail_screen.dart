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
        title: Text(imageItem.tags),
      ),
      body: Column(
        children: [
          const Text('자세한 이미지 ',style: TextStyle(fontSize: 30, fontWeight:FontWeight.bold),),
          Container(
            width: MediaQuery.of(context).size.width * 1.0,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Hero(
              tag: imageItem.id,
              child: Image.network(
                imageItem.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}