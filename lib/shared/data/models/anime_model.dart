import 'package:flutter_my_anime_list/shared/utils/enums/anime_image_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_model.freezed.dart';
part 'anime_model.g.dart';

@freezed
class AnimeModel with _$AnimeModel {
  const factory AnimeModel({
    int? malId,
    String? url,
    Map<AnimeImageType, Image>? images,
    Trailer? trailer,
    bool? approved,
    List<Title>? titles,
    String? title,
    String? titleEnglish,
    String? titleJapanese,
    List<String>? titleSynonyms,
    String? type,
    String? source,
    int? episodes,
    String? status,
    bool? airing,
    Aired? aired,
    String? duration,
    String? rating,
    int? score,
    int? scoredBy,
    int? rank,
    int? popularity,
    int? members,
    int? favorites,
    String? synopsis,
    String? background,
    String? season,
    int? year,
    Broadcast? broadcast,
    List<Demographic>? producers,
    List<Demographic>? licensors,
    List<Demographic>? studios,
    List<Demographic>? genres,
    List<Demographic>? explicitGenres,
    List<Demographic>? themes,
    List<Demographic>? demographics,
    List<Relation>? relations,
    Theme? theme,
    List<External>? animeModelExternal,
    List<External>? streaming,
  }) = _AnimeModel;

  factory AnimeModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeModelFromJson(json);
}

@freezed
class Aired with _$Aired {
  const factory Aired({
    String? from,
    String? to,
    Prop? prop,
  }) = _Aired;

  factory Aired.fromJson(Map<String, dynamic> json) => _$AiredFromJson(json);
}

@freezed
class Prop with _$Prop {
  const factory Prop({
    From? from,
    From? to,
    String? string,
  }) = _Prop;

  factory Prop.fromJson(Map<String, dynamic> json) => _$PropFromJson(json);
}

@freezed
class From with _$From {
  const factory From({
    int? day,
    int? month,
    int? year,
  }) = _From;

  factory From.fromJson(Map<String, dynamic> json) => _$FromFromJson(json);
}

@freezed
class External with _$External {
  const factory External({
    String? name,
    String? url,
  }) = _External;

  factory External.fromJson(Map<String, dynamic> json) =>
      _$ExternalFromJson(json);
}

@freezed
class Broadcast with _$Broadcast {
  const factory Broadcast({
    String? day,
    String? time,
    String? timezone,
    String? string,
  }) = _Broadcast;

  factory Broadcast.fromJson(Map<String, dynamic> json) =>
      _$BroadcastFromJson(json);
}

@freezed
class Demographic with _$Demographic {
  const factory Demographic({
    int? malId,
    String? type,
    String? name,
    String? url,
  }) = _Demographic;

  factory Demographic.fromJson(Map<String, dynamic> json) =>
      _$DemographicFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    String? imageUrl,
    String? smallImageUrl,
    String? largeImageUrl,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class Relation with _$Relation {
  const factory Relation({
    String? relation,
    List<Demographic>? entry,
  }) = _Relation;

  factory Relation.fromJson(Map<String, dynamic> json) =>
      _$RelationFromJson(json);
}

@freezed
class Theme with _$Theme {
  const factory Theme({
    List<String>? openings,
    List<String>? endings,
  }) = _Theme;

  factory Theme.fromJson(Map<String, dynamic> json) => _$ThemeFromJson(json);
}

@freezed
class Title with _$Title {
  const factory Title({
    String? type,
    String? title,
  }) = _Title;

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
}

@freezed
class Trailer with _$Trailer {
  const factory Trailer({
    String? youtubeId,
    String? url,
    String? embedUrl,
  }) = _Trailer;

  factory Trailer.fromJson(Map<String, dynamic> json) =>
      _$TrailerFromJson(json);
}
