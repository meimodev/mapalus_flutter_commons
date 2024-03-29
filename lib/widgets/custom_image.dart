import 'package:flutter/material.dart';
import '../mapalus_flutter_commons.dart';

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
            color: PaletteTheme.primary,
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
            color: PaletteTheme.accent,
            child: Center(
              child: SvgPicture.asset(
                'assets/images/mapalus.svg',
                colorFilter:
                    const ColorFilter.mode(PaletteTheme.primary, BlendMode.srcIn),
                width: 60.w,
              ),
            ),
          ),
        )
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
        color: Colors.transparent,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(
          Icons.photo,
          size: 30.w,
          color: PaletteTheme.primary,
        ),
      ),
    );
  }
}
