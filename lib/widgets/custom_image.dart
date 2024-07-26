import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mapalus_flutter_commons/shared/theme/theme.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.imageUrl,
    this.assetPath,
  });

  final String imageUrl;
  final String? assetPath;

  @override
  Widget build(BuildContext context) {
    if (imageUrl.isEmpty) {
      return _buildInvalidUrl();
    }

    if (assetPath != null) {
      return Image.asset(
        assetPath!,
        fit: BoxFit.cover,
      );
    }

    return Stack(
      fit: StackFit.expand,
      children: [
        const Center(
          child: CircularProgressIndicator(
            color: BaseColor.primary3,
            strokeWidth: 1,
          ),
        ),
        // FadeInImage.memoryNetwork(
        //   placeholder: kTransparentImage,
        //   image: imageUrl,
        //   imageErrorBuilder: (context, _, __) {
        //     return Container(
        //       color: Palette.accent,
        //       child: Center(
        //         child: SvgPicture.asset(
        //           'assets/images/mapalus.svg',
        //           color: Palette.primary,
        //           width: 60.w,
        //         ),
        //       ),
        //     );
        //   },
        //   fit: BoxFit.cover,
        // ),
        CachedNetworkImage(
          imageUrl: imageUrl,
          fadeInDuration: const Duration(milliseconds: 600),
          placeholder: (context, _) => Container(
            color: Colors.transparent,
          ),
          errorWidget: (context, _, __) => Container(
            color: BaseColor.accent,
            child: Center(
              child: SvgPicture.asset(
                'assets/images/mapalus.svg',
                colorFilter:
                    const ColorFilter.mode(BaseColor.primary3, BlendMode.srcIn),
                width: BaseSize.w64,
              ),
            ),
          ),
        )
      ],
    );
  }

  _buildInvalidUrl() {
    return Container(
      width: BaseSize.w32,
      height: BaseSize.w32,
      // padding: EdgeInsets.symmetric(
      //   horizontal: Insets.medium.w,
      //   vertical: Insets.medium.h,
      // ),
      decoration: const BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(
          Icons.photo,
          size: BaseSize.customRadius(30),
          color: BaseColor.primary3,
        ),
      ),
    );
  }
}
