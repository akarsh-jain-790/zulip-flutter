// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unnecessary_cast

part of 'initial_snapshot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitialSnapshot _$InitialSnapshotFromJson(Map<String, dynamic> json) =>
    InitialSnapshot(
      queueId: json['queue_id'] as String?,
      lastEventId: json['last_event_id'] as int,
      zulipFeatureLevel: json['zulip_feature_level'] as int,
      zulipVersion: json['zulip_version'] as String,
      zulipMergeBase: json['zulip_merge_base'] as String?,
      alertWords: (json['alert_words'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      customProfileFields: (json['custom_profile_fields'] as List<dynamic>)
          .map((e) => CustomProfileField.fromJson(e as Map<String, dynamic>))
          .toList(),
      recentPrivateConversations: (json['recent_private_conversations']
              as List<dynamic>)
          .map((e) => RecentDmConversation.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscriptions: (json['subscriptions'] as List<dynamic>)
          .map((e) => Subscription.fromJson(e as Map<String, dynamic>))
          .toList(),
      unreadMsgs: UnreadMessagesSnapshot.fromJson(
          json['unread_msgs'] as Map<String, dynamic>),
      streams: (json['streams'] as List<dynamic>)
          .map((e) => ZulipStream.fromJson(e as Map<String, dynamic>))
          .toList(),
      userSettings: json['user_settings'] == null
          ? null
          : UserSettings.fromJson(
              json['user_settings'] as Map<String, dynamic>),
      maxFileUploadSizeMib: json['max_file_upload_size_mib'] as int,
      realmUsers:
          (InitialSnapshot._readUsersIsActiveFallbackTrue(json, 'realm_users')
                  as List<dynamic>)
              .map((e) => User.fromJson(e as Map<String, dynamic>))
              .toList(),
      realmNonActiveUsers: (InitialSnapshot._readUsersIsActiveFallbackFalse(
              json, 'realm_non_active_users') as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      crossRealmBots: (InitialSnapshot._readUsersIsActiveFallbackTrue(
              json, 'cross_realm_bots') as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InitialSnapshotToJson(InitialSnapshot instance) =>
    <String, dynamic>{
      'queue_id': instance.queueId,
      'last_event_id': instance.lastEventId,
      'zulip_feature_level': instance.zulipFeatureLevel,
      'zulip_version': instance.zulipVersion,
      'zulip_merge_base': instance.zulipMergeBase,
      'alert_words': instance.alertWords,
      'custom_profile_fields': instance.customProfileFields,
      'recent_private_conversations': instance.recentPrivateConversations,
      'subscriptions': instance.subscriptions,
      'unread_msgs': instance.unreadMsgs,
      'streams': instance.streams,
      'user_settings': instance.userSettings,
      'max_file_upload_size_mib': instance.maxFileUploadSizeMib,
      'realm_users': instance.realmUsers,
      'realm_non_active_users': instance.realmNonActiveUsers,
      'cross_realm_bots': instance.crossRealmBots,
    };

RecentDmConversation _$RecentDmConversationFromJson(
        Map<String, dynamic> json) =>
    RecentDmConversation(
      maxMessageId: json['max_message_id'] as int,
      userIds:
          (json['user_ids'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$RecentDmConversationToJson(
        RecentDmConversation instance) =>
    <String, dynamic>{
      'max_message_id': instance.maxMessageId,
      'user_ids': instance.userIds,
    };

UserSettings _$UserSettingsFromJson(Map<String, dynamic> json) => UserSettings(
      twentyFourHourTime: json['twenty_four_hour_time'] as bool,
      displayEmojiReactionUsers: json['display_emoji_reaction_users'] as bool?,
      emojiset: $enumDecode(_$EmojisetEnumMap, json['emojiset']),
    );

const _$UserSettingsFieldMap = <String, String>{
  'twentyFourHourTime': 'twenty_four_hour_time',
  'displayEmojiReactionUsers': 'display_emoji_reaction_users',
  'emojiset': 'emojiset',
};

Map<String, dynamic> _$UserSettingsToJson(UserSettings instance) =>
    <String, dynamic>{
      'twenty_four_hour_time': instance.twentyFourHourTime,
      'display_emoji_reaction_users': instance.displayEmojiReactionUsers,
      'emojiset': _$EmojisetEnumMap[instance.emojiset]!,
    };

const _$EmojisetEnumMap = {
  Emojiset.google: 'google',
  Emojiset.googleBlob: 'google-blob',
  Emojiset.twitter: 'twitter',
  Emojiset.text: 'text',
};

UnreadMessagesSnapshot _$UnreadMessagesSnapshotFromJson(
        Map<String, dynamic> json) =>
    UnreadMessagesSnapshot(
      count: json['count'] as int,
      dms: (json['pms'] as List<dynamic>)
          .map((e) => UnreadDmSnapshot.fromJson(e as Map<String, dynamic>))
          .toList(),
      streams: (json['streams'] as List<dynamic>)
          .map((e) => UnreadStreamSnapshot.fromJson(e as Map<String, dynamic>))
          .toList(),
      huddles: (json['huddles'] as List<dynamic>)
          .map((e) => UnreadHuddleSnapshot.fromJson(e as Map<String, dynamic>))
          .toList(),
      mentions:
          (json['mentions'] as List<dynamic>).map((e) => e as int).toList(),
      oldUnreadsMissing: json['old_unreads_missing'] as bool,
    );

Map<String, dynamic> _$UnreadMessagesSnapshotToJson(
        UnreadMessagesSnapshot instance) =>
    <String, dynamic>{
      'count': instance.count,
      'pms': instance.dms,
      'streams': instance.streams,
      'huddles': instance.huddles,
      'mentions': instance.mentions,
      'old_unreads_missing': instance.oldUnreadsMissing,
    };

UnreadDmSnapshot _$UnreadDmSnapshotFromJson(Map<String, dynamic> json) =>
    UnreadDmSnapshot(
      otherUserId:
          UnreadDmSnapshot._readOtherUserId(json, 'other_user_id') as int,
      unreadMessageIds: (json['unread_message_ids'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$UnreadDmSnapshotToJson(UnreadDmSnapshot instance) =>
    <String, dynamic>{
      'other_user_id': instance.otherUserId,
      'unread_message_ids': instance.unreadMessageIds,
    };

UnreadStreamSnapshot _$UnreadStreamSnapshotFromJson(
        Map<String, dynamic> json) =>
    UnreadStreamSnapshot(
      topic: json['topic'] as String,
      streamId: json['stream_id'] as int,
      unreadMessageIds: (json['unread_message_ids'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$UnreadStreamSnapshotToJson(
        UnreadStreamSnapshot instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'stream_id': instance.streamId,
      'unread_message_ids': instance.unreadMessageIds,
    };

UnreadHuddleSnapshot _$UnreadHuddleSnapshotFromJson(
        Map<String, dynamic> json) =>
    UnreadHuddleSnapshot(
      userIdsString: json['user_ids_string'] as String,
      unreadMessageIds: (json['unread_message_ids'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$UnreadHuddleSnapshotToJson(
        UnreadHuddleSnapshot instance) =>
    <String, dynamic>{
      'user_ids_string': instance.userIdsString,
      'unread_message_ids': instance.unreadMessageIds,
    };

const _$UserSettingNameEnumMap = {
  UserSettingName.twentyFourHourTime: 'twenty_four_hour_time',
  UserSettingName.displayEmojiReactionUsers: 'display_emoji_reaction_users',
  UserSettingName.emojiset: 'emojiset',
};
