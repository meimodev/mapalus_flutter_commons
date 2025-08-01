import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mapalus_flutter_commons/shared/theme/theme.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.imageUrl,
    this.assetPath,
    this.fit,
  });

  final String imageUrl;
  final String? assetPath;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    if (imageUrl.isEmpty || !imageUrl.contains("http")) {
      return _buildInvalidUrl();
    }

    if (assetPath != null) {
      return Image.asset(
        assetPath!,
        fit: fit ?? BoxFit.cover,
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
        CachedNetworkImage(
          imageUrl: imageUrl,
          fadeInDuration: const Duration(milliseconds: 400),
          fit: fit ?? BoxFit.cover,
          placeholder: (context, _) => Container(
            color: Colors.transparent,
          ),
          errorWidget: (context, _, _) => Container(
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

  Widget _buildInvalidUrl() {
    return Container(
      width: BaseSize.w32,
      height: BaseSize.w32,
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
