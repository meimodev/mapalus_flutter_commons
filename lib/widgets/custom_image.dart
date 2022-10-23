import 'package:flutter/material.dart';
import '../mapalus_flutter_commons.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    Key? key,
    required this.imageUrl, this.boxFit,
  }) : super(key: key);

  final String imageUrl;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    return imageUrl.isEmpty
        ? _buildInvalidUrl()
        : Stack(
            fit: StackFit.expand,
            children: [
              const Center(
                child: CircularProgressIndicator(
                  color: Palette.primary,
                  strokeWidth: 1,
                ),
              ),
              FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: imageUrl,
                fit: boxFit ?? BoxFit.cover,
                imageErrorBuilder: (context, _, __) {
                  return SvgPicture.asset(
                    'assets/images/mapalus.svg',
                    color: Palette.primary,
                    width: 12.w,
                  );
                },
              ),
            ],
          );
  }

  _buildInvalidUrl() {
    return Container(
      width: 30.w,
      height: 30.w,
      // padding: EdgeInsets.symmetric(
      //   horizontal: Insets.medium.w,
      //   vertical: Insets.medium.h,
      // ),
      decoration: const BoxDecoration(
        color: Palette.primary,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(
          Icons.photo,
          size: 30.w,
          color: Palette.accent,
        ),
      ),
    );
  }
}