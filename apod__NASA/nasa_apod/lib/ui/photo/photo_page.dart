import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nasa_apod_flutter/model/apod_model.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViewPage extends StatelessWidget {
  final ApodModel apod;

  const PhotoViewPage({Key key, @required this.apod}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      body: Container(
        child: PhotoView(
          heroAttributes: PhotoViewHeroAttributes(tag: apod.url),
          imageProvider: CachedNetworkImageProvider(apod.url),
          loadingBuilder: (context, event) => Center(
        child: Container(
          width: 20.0,
          height: 20.0,
          child: CircularProgressIndicator(
            value: event == null
                ? 0
                : event.cumulativeBytesLoaded / event.expectedTotalBytes,
          ),
        ),
      ),
        ),
      ),
    );
  }
}
