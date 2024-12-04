// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimeModelImpl _$$AnimeModelImplFromJson(Map<String, dynamic> json) =>
    _$AnimeModelImpl(
      malId: (json['mal_id'] as num?)?.toInt(),
      url: json['url'] as String?,
      images: (json['images'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry($enumDecode(_$AnimeImageTypeEnumMap, k),
            Image.fromJson(e as Map<String, dynamic>)),
      ),
      trailer: json['trailer'] == null
          ? null
          : Trailer.fromJson(json['trailer'] as Map<String, dynamic>),
      approved: json['approved'] as bool?,
      titles: (json['titles'] as List<dynamic>?)
          ?.map((e) => Title.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String?,
      titleEnglish: json['title_english'] as String?,
      titleJapanese: json['title_japanese'] as String?,
      titleSynonyms: (json['title_synonyms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      type: json['type'] as String?,
      source: json['source'] as String?,
      episodes: (json['episodes'] as num?)?.toInt(),
      status: json['status'] as String?,
      airing: json['airing'] as bool?,
      aired: json['aired'] == null
          ? null
          : Aired.fromJson(json['aired'] as Map<String, dynamic>),
      duration: json['duration'] as String?,
      rating: json['rating'] as String?,
      score: (json['score'] as num?)?.toInt(),
      scoredBy: (json['scored_by'] as num?)?.toInt(),
      rank: (json['rank'] as num?)?.toInt(),
      popularity: (json['popularity'] as num?)?.toInt(),
      members: (json['members'] as num?)?.toInt(),
      favorites: (json['favorites'] as num?)?.toInt(),
      synopsis: json['synopsis'] as String?,
      background: json['background'] as String?,
      season: json['season'] as String?,
      year: (json['year'] as num?)?.toInt(),
      broadcast: json['broadcast'] == null
          ? null
          : Broadcast.fromJson(json['broadcast'] as Map<String, dynamic>),
      producers: (json['producers'] as List<dynamic>?)
          ?.map((e) => Demographic.fromJson(e as Map<String, dynamic>))
          .toList(),
      licensors: (json['licensors'] as List<dynamic>?)
          ?.map((e) => Demographic.fromJson(e as Map<String, dynamic>))
          .toList(),
      studios: (json['studios'] as List<dynamic>?)
          ?.map((e) => Demographic.fromJson(e as Map<String, dynamic>))
          .toList(),
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => Demographic.fromJson(e as Map<String, dynamic>))
          .toList(),
      explicitGenres: (json['explicit_genres'] as List<dynamic>?)
          ?.map((e) => Demographic.fromJson(e as Map<String, dynamic>))
          .toList(),
      themes: (json['themes'] as List<dynamic>?)
          ?.map((e) => Demographic.fromJson(e as Map<String, dynamic>))
          .toList(),
      demographics: (json['demographics'] as List<dynamic>?)
          ?.map((e) => Demographic.fromJson(e as Map<String, dynamic>))
          .toList(),
      relations: (json['relations'] as List<dynamic>?)
          ?.map((e) => Relation.fromJson(e as Map<String, dynamic>))
          .toList(),
      theme: json['theme'] == null
          ? null
          : Theme.fromJson(json['theme'] as Map<String, dynamic>),
      animeModelExternal: (json['anime_model_external'] as List<dynamic>?)
          ?.map((e) => External.fromJson(e as Map<String, dynamic>))
          .toList(),
      streaming: (json['streaming'] as List<dynamic>?)
          ?.map((e) => External.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnimeModelImplToJson(_$AnimeModelImpl instance) =>
    <String, dynamic>{
      'mal_id': instance.malId,
      'url': instance.url,
      'images': instance.images
          ?.map((k, e) => MapEntry(_$AnimeImageTypeEnumMap[k]!, e)),
      'trailer': instance.trailer,
      'approved': instance.approved,
      'titles': instance.titles,
      'title': instance.title,
      'title_english': instance.titleEnglish,
      'title_japanese': instance.titleJapanese,
      'title_synonyms': instance.titleSynonyms,
      'type': instance.type,
      'source': instance.source,
      'episodes': instance.episodes,
      'status': instance.status,
      'airing': instance.airing,
      'aired': instance.aired,
      'duration': instance.duration,
      'rating': instance.rating,
      'score': instance.score,
      'scored_by': instance.scoredBy,
      'rank': instance.rank,
      'popularity': instance.popularity,
      'members': instance.members,
      'favorites': instance.favorites,
      'synopsis': instance.synopsis,
      'background': instance.background,
      'season': instance.season,
      'year': instance.year,
      'broadcast': instance.broadcast,
      'producers': instance.producers,
      'licensors': instance.licensors,
      'studios': instance.studios,
      'genres': instance.genres,
      'explicit_genres': instance.explicitGenres,
      'themes': instance.themes,
      'demographics': instance.demographics,
      'relations': instance.relations,
      'theme': instance.theme,
      'anime_model_external': instance.animeModelExternal,
      'streaming': instance.streaming,
    };

const _$AnimeImageTypeEnumMap = {
  AnimeImageType.jpg: 'jpg',
  AnimeImageType.webp: 'webp',
};

_$AiredImpl _$$AiredImplFromJson(Map<String, dynamic> json) => _$AiredImpl(
      from: json['from'] as String?,
      to: json['to'] as String?,
      prop: json['prop'] == null
          ? null
          : Prop.fromJson(json['prop'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AiredImplToJson(_$AiredImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'prop': instance.prop,
    };

_$PropImpl _$$PropImplFromJson(Map<String, dynamic> json) => _$PropImpl(
      from: json['from'] == null
          ? null
          : From.fromJson(json['from'] as Map<String, dynamic>),
      to: json['to'] == null
          ? null
          : From.fromJson(json['to'] as Map<String, dynamic>),
      string: json['string'] as String?,
    );

Map<String, dynamic> _$$PropImplToJson(_$PropImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'string': instance.string,
    };

_$FromImpl _$$FromImplFromJson(Map<String, dynamic> json) => _$FromImpl(
      day: (json['day'] as num?)?.toInt(),
      month: (json['month'] as num?)?.toInt(),
      year: (json['year'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FromImplToJson(_$FromImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
    };

_$ExternalImpl _$$ExternalImplFromJson(Map<String, dynamic> json) =>
    _$ExternalImpl(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$ExternalImplToJson(_$ExternalImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$BroadcastImpl _$$BroadcastImplFromJson(Map<String, dynamic> json) =>
    _$BroadcastImpl(
      day: json['day'] as String?,
      time: json['time'] as String?,
      timezone: json['timezone'] as String?,
      string: json['string'] as String?,
    );

Map<String, dynamic> _$$BroadcastImplToJson(_$BroadcastImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'time': instance.time,
      'timezone': instance.timezone,
      'string': instance.string,
    };

_$DemographicImpl _$$DemographicImplFromJson(Map<String, dynamic> json) =>
    _$DemographicImpl(
      malId: (json['mal_id'] as num?)?.toInt(),
      type: json['type'] as String?,
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$DemographicImplToJson(_$DemographicImpl instance) =>
    <String, dynamic>{
      'mal_id': instance.malId,
      'type': instance.type,
      'name': instance.name,
      'url': instance.url,
    };

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      imageUrl: json['image_url'] as String?,
      smallImageUrl: json['small_image_url'] as String?,
      largeImageUrl: json['large_image_url'] as String?,
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'image_url': instance.imageUrl,
      'small_image_url': instance.smallImageUrl,
      'large_image_url': instance.largeImageUrl,
    };

_$RelationImpl _$$RelationImplFromJson(Map<String, dynamic> json) =>
    _$RelationImpl(
      relation: json['relation'] as String?,
      entry: (json['entry'] as List<dynamic>?)
          ?.map((e) => Demographic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RelationImplToJson(_$RelationImpl instance) =>
    <String, dynamic>{
      'relation': instance.relation,
      'entry': instance.entry,
    };

_$ThemeImpl _$$ThemeImplFromJson(Map<String, dynamic> json) => _$ThemeImpl(
      openings: (json['openings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      endings:
          (json['endings'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ThemeImplToJson(_$ThemeImpl instance) =>
    <String, dynamic>{
      'openings': instance.openings,
      'endings': instance.endings,
    };

_$TitleImpl _$$TitleImplFromJson(Map<String, dynamic> json) => _$TitleImpl(
      type: json['type'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$TitleImplToJson(_$TitleImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
    };

_$TrailerImpl _$$TrailerImplFromJson(Map<String, dynamic> json) =>
    _$TrailerImpl(
      youtubeId: json['youtube_id'] as String?,
      url: json['url'] as String?,
      embedUrl: json['embed_url'] as String?,
    );

Map<String, dynamic> _$$TrailerImplToJson(_$TrailerImpl instance) =>
    <String, dynamic>{
      'youtube_id': instance.youtubeId,
      'url': instance.url,
      'embed_url': instance.embedUrl,
    };
