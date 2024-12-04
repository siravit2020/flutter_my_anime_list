import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_anime_list/shared/extensions/build_context_extensions.dart';

class AppImage {
  static Widget network(
    String url, {
    double? width,
    double? height,
    BoxFit? fit,
    Alignment alignment = Alignment.center,
    BorderRadius? borderRadius,
    bool usePlaceholder = true,
  }) {
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      placeholder: usePlaceholder
          ? (context, url) => Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  color: context.theme.appColors.shimerBase,
                  borderRadius: borderRadius,
                ),
              )
          : null,
      errorWidget: (context, url, error) => ColoredBox(
        color: context.theme.appColors.shimerBase,
        child: Center(
          child: Icon(
            Icons.photo,
            color: context.theme.appColors.iconSecondary,
          ),
        ),
      ),
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: context.theme.appColors.backgroundImage,
          image: DecorationImage(
            image: imageProvider,
            fit: fit,
          ),
          borderRadius: borderRadius,
        ),
      ),
    );
  }

  static Widget asset(
    String asset, {
    double? width,
    double? height,
    BoxFit? fit,
    Alignment alignment = Alignment.center,
    BorderRadius? borderRadius,
  }) {
    final image = Image.asset(
      asset,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
    );

    if (borderRadius != null) {
      return ClipRRect(
        borderRadius: borderRadius,
        child: image,
      );
    } else {
      return image;
    }
  }
}
