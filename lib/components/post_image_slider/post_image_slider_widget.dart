import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'post_image_slider_model.dart';
export 'post_image_slider_model.dart';

class PostImageSliderWidget extends StatefulWidget {
  const PostImageSliderWidget({
    super.key,
    required this.imageList,
  });

  final List<ImageMediaModelStruct>? imageList;

  @override
  State<PostImageSliderWidget> createState() => _PostImageSliderWidgetState();
}

class _PostImageSliderWidgetState extends State<PostImageSliderWidget> {
  late PostImageSliderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostImageSliderModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final postImageList = widget.imageList!.toList();

        return Container(
          width: double.infinity,
          height: 375.0,
          child: CarouselSlider.builder(
            itemCount: postImageList.length,
            itemBuilder: (context, postImageListIndex, _) {
              final postImageListItem = postImageList[postImageListIndex];
              return CachedNetworkImage(
                fadeInDuration: Duration(milliseconds: 500),
                fadeOutDuration: Duration(milliseconds: 500),
                imageUrl: postImageListItem.url,
                width: 200.0,
                height: 200.0,
                fit: BoxFit.cover,
                errorWidget: (context, error, stackTrace) => Image.asset(
                  'assets/images/error_image.jpg',
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              );
            },
            carouselController: _model.carouselController ??=
                CarouselSliderController(),
            options: CarouselOptions(
              initialPage: max(0, min(1, postImageList.length - 1)),
              viewportFraction: 1.0,
              disableCenter: true,
              enlargeCenterPage: true,
              enlargeFactor: 0.25,
              enableInfiniteScroll: true,
              scrollDirection: Axis.horizontal,
              autoPlay: false,
              onPageChanged: (index, _) => _model.carouselCurrentIndex = index,
            ),
          ),
        );
      },
    );
  }
}
