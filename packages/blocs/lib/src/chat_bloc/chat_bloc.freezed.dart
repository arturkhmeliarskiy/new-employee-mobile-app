// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatEventTearOff {
  const _$ChatEventTearOff();

  InitChatEvent init(String agencyId, bool isPushNatificationMessage) {
    return InitChatEvent(
      agencyId,
      isPushNatificationMessage,
    );
  }

  InitNewMessageChatEvent initNewMessage(String agencyId, dynamic data) {
    return InitNewMessageChatEvent(
      agencyId,
      data,
    );
  }

  AddMyMessageEvent addMyMessageOrFile(
      String message, String messageType, String agencyId) {
    return AddMyMessageEvent(
      message,
      messageType,
      agencyId,
    );
  }

  CheckChatGroupsEvent checkChatGroups(String agencyId, String orgName) {
    return CheckChatGroupsEvent(
      agencyId,
      orgName,
    );
  }

  GetFileChatEvent getFile({required String link}) {
    return GetFileChatEvent(
      link: link,
    );
  }

  LoadMoreChatEvent loadMore({required int offset, required String agencyId}) {
    return LoadMoreChatEvent(
      offset: offset,
      agencyId: agencyId,
    );
  }

  UpdateUnreadMessageEvent updateUnreadMessage({required String agencyId}) {
    return UpdateUnreadMessageEvent(
      agencyId: agencyId,
    );
  }
}

/// @nodoc
const $ChatEvent = _$ChatEventTearOff();

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String agencyId, bool isPushNatificationMessage)
        init,
    required TResult Function(String agencyId, dynamic data) initNewMessage,
    required TResult Function(
            String message, String messageType, String agencyId)
        addMyMessageOrFile,
    required TResult Function(String agencyId, String orgName) checkChatGroups,
    required TResult Function(String link) getFile,
    required TResult Function(int offset, String agencyId) loadMore,
    required TResult Function(String agencyId) updateUnreadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String agencyId, bool isPushNatificationMessage)? init,
    TResult Function(String agencyId, dynamic data)? initNewMessage,
    TResult Function(String message, String messageType, String agencyId)?
        addMyMessageOrFile,
    TResult Function(String agencyId, String orgName)? checkChatGroups,
    TResult Function(String link)? getFile,
    TResult Function(int offset, String agencyId)? loadMore,
    TResult Function(String agencyId)? updateUnreadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String agencyId, bool isPushNatificationMessage)? init,
    TResult Function(String agencyId, dynamic data)? initNewMessage,
    TResult Function(String message, String messageType, String agencyId)?
        addMyMessageOrFile,
    TResult Function(String agencyId, String orgName)? checkChatGroups,
    TResult Function(String link)? getFile,
    TResult Function(int offset, String agencyId)? loadMore,
    TResult Function(String agencyId)? updateUnreadMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitChatEvent value) init,
    required TResult Function(InitNewMessageChatEvent value) initNewMessage,
    required TResult Function(AddMyMessageEvent value) addMyMessageOrFile,
    required TResult Function(CheckChatGroupsEvent value) checkChatGroups,
    required TResult Function(GetFileChatEvent value) getFile,
    required TResult Function(LoadMoreChatEvent value) loadMore,
    required TResult Function(UpdateUnreadMessageEvent value)
        updateUnreadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(InitNewMessageChatEvent value)? initNewMessage,
    TResult Function(AddMyMessageEvent value)? addMyMessageOrFile,
    TResult Function(CheckChatGroupsEvent value)? checkChatGroups,
    TResult Function(GetFileChatEvent value)? getFile,
    TResult Function(LoadMoreChatEvent value)? loadMore,
    TResult Function(UpdateUnreadMessageEvent value)? updateUnreadMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(InitNewMessageChatEvent value)? initNewMessage,
    TResult Function(AddMyMessageEvent value)? addMyMessageOrFile,
    TResult Function(CheckChatGroupsEvent value)? checkChatGroups,
    TResult Function(GetFileChatEvent value)? getFile,
    TResult Function(LoadMoreChatEvent value)? loadMore,
    TResult Function(UpdateUnreadMessageEvent value)? updateUnreadMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res> implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  final ChatEvent _value;
  // ignore: unused_field
  final $Res Function(ChatEvent) _then;
}

/// @nodoc
abstract class $InitChatEventCopyWith<$Res> {
  factory $InitChatEventCopyWith(
          InitChatEvent value, $Res Function(InitChatEvent) then) =
      _$InitChatEventCopyWithImpl<$Res>;
  $Res call({String agencyId, bool isPushNatificationMessage});
}

/// @nodoc
class _$InitChatEventCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $InitChatEventCopyWith<$Res> {
  _$InitChatEventCopyWithImpl(
      InitChatEvent _value, $Res Function(InitChatEvent) _then)
      : super(_value, (v) => _then(v as InitChatEvent));

  @override
  InitChatEvent get _value => super._value as InitChatEvent;

  @override
  $Res call({
    Object? agencyId = freezed,
    Object? isPushNatificationMessage = freezed,
  }) {
    return _then(InitChatEvent(
      agencyId == freezed
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as String,
      isPushNatificationMessage == freezed
          ? _value.isPushNatificationMessage
          : isPushNatificationMessage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitChatEvent implements InitChatEvent {
  const _$InitChatEvent(this.agencyId, this.isPushNatificationMessage);

  @override
  final String agencyId;
  @override
  final bool isPushNatificationMessage;

  @override
  String toString() {
    return 'ChatEvent.init(agencyId: $agencyId, isPushNatificationMessage: $isPushNatificationMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitChatEvent &&
            const DeepCollectionEquality().equals(other.agencyId, agencyId) &&
            const DeepCollectionEquality().equals(
                other.isPushNatificationMessage, isPushNatificationMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(agencyId),
      const DeepCollectionEquality().hash(isPushNatificationMessage));

  @JsonKey(ignore: true)
  @override
  $InitChatEventCopyWith<InitChatEvent> get copyWith =>
      _$InitChatEventCopyWithImpl<InitChatEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String agencyId, bool isPushNatificationMessage)
        init,
    required TResult Function(String agencyId, dynamic data) initNewMessage,
    required TResult Function(
            String message, String messageType, String agencyId)
        addMyMessageOrFile,
    required TResult Function(String agencyId, String orgName) checkChatGroups,
    required TResult Function(String link) getFile,
    required TResult Function(int offset, String agencyId) loadMore,
    required TResult Function(String agencyId) updateUnreadMessage,
  }) {
    return init(agencyId, isPushNatificationMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String agencyId, bool isPushNatificationMessage)? init,
    TResult Function(String agencyId, dynamic data)? initNewMessage,
    TResult Function(String message, String messageType, String agencyId)?
        addMyMessageOrFile,
    TResult Function(String agencyId, String orgName)? checkChatGroups,
    TResult Function(String link)? getFile,
    TResult Function(int offset, String agencyId)? loadMore,
    TResult Function(String agencyId)? updateUnreadMessage,
  }) {
    return init?.call(agencyId, isPushNatificationMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String agencyId, bool isPushNatificationMessage)? init,
    TResult Function(String agencyId, dynamic data)? initNewMessage,
    TResult Function(String message, String messageType, String agencyId)?
        addMyMessageOrFile,
    TResult Function(String agencyId, String orgName)? checkChatGroups,
    TResult Function(String link)? getFile,
    TResult Function(int offset, String agencyId)? loadMore,
    TResult Function(String agencyId)? updateUnreadMessage,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(agencyId, isPushNatificationMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitChatEvent value) init,
    required TResult Function(InitNewMessageChatEvent value) initNewMessage,
    required TResult Function(AddMyMessageEvent value) addMyMessageOrFile,
    required TResult Function(CheckChatGroupsEvent value) checkChatGroups,
    required TResult Function(GetFileChatEvent value) getFile,
    required TResult Function(LoadMoreChatEvent value) loadMore,
    required TResult Function(UpdateUnreadMessageEvent value)
        updateUnreadMessage,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(InitNewMessageChatEvent value)? initNewMessage,
    TResult Function(AddMyMessageEvent value)? addMyMessageOrFile,
    TResult Function(CheckChatGroupsEvent value)? checkChatGroups,
    TResult Function(GetFileChatEvent value)? getFile,
    TResult Function(LoadMoreChatEvent value)? loadMore,
    TResult Function(UpdateUnreadMessageEvent value)? updateUnreadMessage,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(InitNewMessageChatEvent value)? initNewMessage,
    TResult Function(AddMyMessageEvent value)? addMyMessageOrFile,
    TResult Function(CheckChatGroupsEvent value)? checkChatGroups,
    TResult Function(GetFileChatEvent value)? getFile,
    TResult Function(LoadMoreChatEvent value)? loadMore,
    TResult Function(UpdateUnreadMessageEvent value)? updateUnreadMessage,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitChatEvent implements ChatEvent {
  const factory InitChatEvent(String agencyId, bool isPushNatificationMessage) =
      _$InitChatEvent;

  String get agencyId;
  bool get isPushNatificationMessage;
  @JsonKey(ignore: true)
  $InitChatEventCopyWith<InitChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitNewMessageChatEventCopyWith<$Res> {
  factory $InitNewMessageChatEventCopyWith(InitNewMessageChatEvent value,
          $Res Function(InitNewMessageChatEvent) then) =
      _$InitNewMessageChatEventCopyWithImpl<$Res>;
  $Res call({String agencyId, dynamic data});
}

/// @nodoc
class _$InitNewMessageChatEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $InitNewMessageChatEventCopyWith<$Res> {
  _$InitNewMessageChatEventCopyWithImpl(InitNewMessageChatEvent _value,
      $Res Function(InitNewMessageChatEvent) _then)
      : super(_value, (v) => _then(v as InitNewMessageChatEvent));

  @override
  InitNewMessageChatEvent get _value => super._value as InitNewMessageChatEvent;

  @override
  $Res call({
    Object? agencyId = freezed,
    Object? data = freezed,
  }) {
    return _then(InitNewMessageChatEvent(
      agencyId == freezed
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as String,
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$InitNewMessageChatEvent implements InitNewMessageChatEvent {
  const _$InitNewMessageChatEvent(this.agencyId, this.data);

  @override
  final String agencyId;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'ChatEvent.initNewMessage(agencyId: $agencyId, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitNewMessageChatEvent &&
            const DeepCollectionEquality().equals(other.agencyId, agencyId) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(agencyId),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $InitNewMessageChatEventCopyWith<InitNewMessageChatEvent> get copyWith =>
      _$InitNewMessageChatEventCopyWithImpl<InitNewMessageChatEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String agencyId, bool isPushNatificationMessage)
        init,
    required TResult Function(String agencyId, dynamic data) initNewMessage,
    required TResult Function(
            String message, String messageType, String agencyId)
        addMyMessageOrFile,
    required TResult Function(String agencyId, String orgName) checkChatGroups,
    required TResult Function(String link) getFile,
    required TResult Function(int offset, String agencyId) loadMore,
    required TResult Function(String agencyId) updateUnreadMessage,
  }) {
    return initNewMessage(agencyId, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String agencyId, bool isPushNatificationMessage)? init,
    TResult Function(String agencyId, dynamic data)? initNewMessage,
    TResult Function(String message, String messageType, String agencyId)?
        addMyMessageOrFile,
    TResult Function(String agencyId, String orgName)? checkChatGroups,
    TResult Function(String link)? getFile,
    TResult Function(int offset, String agencyId)? loadMore,
    TResult Function(String agencyId)? updateUnreadMessage,
  }) {
    return initNewMessage?.call(agencyId, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String agencyId, bool isPushNatificationMessage)? init,
    TResult Function(String agencyId, dynamic data)? initNewMessage,
    TResult Function(String message, String messageType, String agencyId)?
        addMyMessageOrFile,
    TResult Function(String agencyId, String orgName)? checkChatGroups,
    TResult Function(String link)? getFile,
    TResult Function(int offset, String agencyId)? loadMore,
    TResult Function(String agencyId)? updateUnreadMessage,
    required TResult orElse(),
  }) {
    if (initNewMessage != null) {
      return initNewMessage(agencyId, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitChatEvent value) init,
    required TResult Function(InitNewMessageChatEvent value) initNewMessage,
    required TResult Function(AddMyMessageEvent value) addMyMessageOrFile,
    required TResult Function(CheckChatGroupsEvent value) checkChatGroups,
    required TResult Function(GetFileChatEvent value) getFile,
    required TResult Function(LoadMoreChatEvent value) loadMore,
    required TResult Function(UpdateUnreadMessageEvent value)
        updateUnreadMessage,
  }) {
    return initNewMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(InitNewMessageChatEvent value)? initNewMessage,
    TResult Function(AddMyMessageEvent value)? addMyMessageOrFile,
    TResult Function(CheckChatGroupsEvent value)? checkChatGroups,
    TResult Function(GetFileChatEvent value)? getFile,
    TResult Function(LoadMoreChatEvent value)? loadMore,
    TResult Function(UpdateUnreadMessageEvent value)? updateUnreadMessage,
  }) {
    return initNewMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(InitNewMessageChatEvent value)? initNewMessage,
    TResult Function(AddMyMessageEvent value)? addMyMessageOrFile,
    TResult Function(CheckChatGroupsEvent value)? checkChatGroups,
    TResult Function(GetFileChatEvent value)? getFile,
    TResult Function(LoadMoreChatEvent value)? loadMore,
    TResult Function(UpdateUnreadMessageEvent value)? updateUnreadMessage,
    required TResult orElse(),
  }) {
    if (initNewMessage != null) {
      return initNewMessage(this);
    }
    return orElse();
  }
}

abstract class InitNewMessageChatEvent implements ChatEvent {
  const factory InitNewMessageChatEvent(String agencyId, dynamic data) =
      _$InitNewMessageChatEvent;

  String get agencyId;
  dynamic get data;
  @JsonKey(ignore: true)
  $InitNewMessageChatEventCopyWith<InitNewMessageChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMyMessageEventCopyWith<$Res> {
  factory $AddMyMessageEventCopyWith(
          AddMyMessageEvent value, $Res Function(AddMyMessageEvent) then) =
      _$AddMyMessageEventCopyWithImpl<$Res>;
  $Res call({String message, String messageType, String agencyId});
}

/// @nodoc
class _$AddMyMessageEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $AddMyMessageEventCopyWith<$Res> {
  _$AddMyMessageEventCopyWithImpl(
      AddMyMessageEvent _value, $Res Function(AddMyMessageEvent) _then)
      : super(_value, (v) => _then(v as AddMyMessageEvent));

  @override
  AddMyMessageEvent get _value => super._value as AddMyMessageEvent;

  @override
  $Res call({
    Object? message = freezed,
    Object? messageType = freezed,
    Object? agencyId = freezed,
  }) {
    return _then(AddMyMessageEvent(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      messageType == freezed
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
      agencyId == freezed
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddMyMessageEvent implements AddMyMessageEvent {
  const _$AddMyMessageEvent(this.message, this.messageType, this.agencyId);

  @override
  final String message;
  @override
  final String messageType;
  @override
  final String agencyId;

  @override
  String toString() {
    return 'ChatEvent.addMyMessageOrFile(message: $message, messageType: $messageType, agencyId: $agencyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddMyMessageEvent &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.messageType, messageType) &&
            const DeepCollectionEquality().equals(other.agencyId, agencyId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(messageType),
      const DeepCollectionEquality().hash(agencyId));

  @JsonKey(ignore: true)
  @override
  $AddMyMessageEventCopyWith<AddMyMessageEvent> get copyWith =>
      _$AddMyMessageEventCopyWithImpl<AddMyMessageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String agencyId, bool isPushNatificationMessage)
        init,
    required TResult Function(String agencyId, dynamic data) initNewMessage,
    required TResult Function(
            String message, String messageType, String agencyId)
        addMyMessageOrFile,
    required TResult Function(String agencyId, String orgName) checkChatGroups,
    required TResult Function(String link) getFile,
    required TResult Function(int offset, String agencyId) loadMore,
    required TResult Function(String agencyId) updateUnreadMessage,
  }) {
    return addMyMessageOrFile(message, messageType, agencyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String agencyId, bool isPushNatificationMessage)? init,
    TResult Function(String agencyId, dynamic data)? initNewMessage,
    TResult Function(String message, String messageType, String agencyId)?
        addMyMessageOrFile,
    TResult Function(String agencyId, String orgName)? checkChatGroups,
    TResult Function(String link)? getFile,
    TResult Function(int offset, String agencyId)? loadMore,
    TResult Function(String agencyId)? updateUnreadMessage,
  }) {
    return addMyMessageOrFile?.call(message, messageType, agencyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String agencyId, bool isPushNatificationMessage)? init,
    TResult Function(String agencyId, dynamic data)? initNewMessage,
    TResult Function(String message, String messageType, String agencyId)?
        addMyMessageOrFile,
    TResult Function(String agencyId, String orgName)? checkChatGroups,
    TResult Function(String link)? getFile,
    TResult Function(int offset, String agencyId)? loadMore,
    TResult Function(String agencyId)? updateUnreadMessage,
    required TResult orElse(),
  }) {
    if (addMyMessageOrFile != null) {
      return addMyMessageOrFile(message, messageType, agencyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitChatEvent value) init,
    required TResult Function(InitNewMessageChatEvent value) initNewMessage,
    required TResult Function(AddMyMessageEvent value) addMyMessageOrFile,
    required TResult Function(CheckChatGroupsEvent value) checkChatGroups,
    required TResult Function(GetFileChatEvent value) getFile,
    required TResult Function(LoadMoreChatEvent value) loadMore,
    required TResult Function(UpdateUnreadMessageEvent value)
        updateUnreadMessage,
  }) {
    return addMyMessageOrFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(InitNewMessageChatEvent value)? initNewMessage,
    TResult Function(AddMyMessageEvent value)? addMyMessageOrFile,
    TResult Function(CheckChatGroupsEvent value)? checkChatGroups,
    TResult Function(GetFileChatEvent value)? getFile,
    TResult Function(LoadMoreChatEvent value)? loadMore,
    TResult Function(UpdateUnreadMessageEvent value)? updateUnreadMessage,
  }) {
    return addMyMessageOrFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(InitNewMessageChatEvent value)? initNewMessage,
    TResult Function(AddMyMessageEvent value)? addMyMessageOrFile,
    TResult Function(CheckChatGroupsEvent value)? checkChatGroups,
    TResult Function(GetFileChatEvent value)? getFile,
    TResult Function(LoadMoreChatEvent value)? loadMore,
    TResult Function(UpdateUnreadMessageEvent value)? updateUnreadMessage,
    required TResult orElse(),
  }) {
    if (addMyMessageOrFile != null) {
      return addMyMessageOrFile(this);
    }
    return orElse();
  }
}

abstract class AddMyMessageEvent implements ChatEvent {
  const factory AddMyMessageEvent(
          String message, String messageType, String agencyId) =
      _$AddMyMessageEvent;

  String get message;
  String get messageType;
  String get agencyId;
  @JsonKey(ignore: true)
  $AddMyMessageEventCopyWith<AddMyMessageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckChatGroupsEventCopyWith<$Res> {
  factory $CheckChatGroupsEventCopyWith(CheckChatGroupsEvent value,
          $Res Function(CheckChatGroupsEvent) then) =
      _$CheckChatGroupsEventCopyWithImpl<$Res>;
  $Res call({String agencyId, String orgName});
}

/// @nodoc
class _$CheckChatGroupsEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $CheckChatGroupsEventCopyWith<$Res> {
  _$CheckChatGroupsEventCopyWithImpl(
      CheckChatGroupsEvent _value, $Res Function(CheckChatGroupsEvent) _then)
      : super(_value, (v) => _then(v as CheckChatGroupsEvent));

  @override
  CheckChatGroupsEvent get _value => super._value as CheckChatGroupsEvent;

  @override
  $Res call({
    Object? agencyId = freezed,
    Object? orgName = freezed,
  }) {
    return _then(CheckChatGroupsEvent(
      agencyId == freezed
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as String,
      orgName == freezed
          ? _value.orgName
          : orgName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckChatGroupsEvent implements CheckChatGroupsEvent {
  const _$CheckChatGroupsEvent(this.agencyId, this.orgName);

  @override
  final String agencyId;
  @override
  final String orgName;

  @override
  String toString() {
    return 'ChatEvent.checkChatGroups(agencyId: $agencyId, orgName: $orgName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckChatGroupsEvent &&
            const DeepCollectionEquality().equals(other.agencyId, agencyId) &&
            const DeepCollectionEquality().equals(other.orgName, orgName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(agencyId),
      const DeepCollectionEquality().hash(orgName));

  @JsonKey(ignore: true)
  @override
  $CheckChatGroupsEventCopyWith<CheckChatGroupsEvent> get copyWith =>
      _$CheckChatGroupsEventCopyWithImpl<CheckChatGroupsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String agencyId, bool isPushNatificationMessage)
        init,
    required TResult Function(String agencyId, dynamic data) initNewMessage,
    required TResult Function(
            String message, String messageType, String agencyId)
        addMyMessageOrFile,
    required TResult Function(String agencyId, String orgName) checkChatGroups,
    required TResult Function(String link) getFile,
    required TResult Function(int offset, String agencyId) loadMore,
    required TResult Function(String agencyId) updateUnreadMessage,
  }) {
    return checkChatGroups(agencyId, orgName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String agencyId, bool isPushNatificationMessage)? init,
    TResult Function(String agencyId, dynamic data)? initNewMessage,
    TResult Function(String message, String messageType, String agencyId)?
        addMyMessageOrFile,
    TResult Function(String agencyId, String orgName)? checkChatGroups,
    TResult Function(String link)? getFile,
    TResult Function(int offset, String agencyId)? loadMore,
    TResult Function(String agencyId)? updateUnreadMessage,
  }) {
    return checkChatGroups?.call(agencyId, orgName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String agencyId, bool isPushNatificationMessage)? init,
    TResult Function(String agencyId, dynamic data)? initNewMessage,
    TResult Function(String message, String messageType, String agencyId)?
        addMyMessageOrFile,
    TResult Function(String agencyId, String orgName)? checkChatGroups,
    TResult Function(String link)? getFile,
    TResult Function(int offset, String agencyId)? loadMore,
    TResult Function(String agencyId)? updateUnreadMessage,
    required TResult orElse(),
  }) {
    if (checkChatGroups != null) {
      return checkChatGroups(agencyId, orgName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitChatEvent value) init,
    required TResult Function(InitNewMessageChatEvent value) initNewMessage,
    required TResult Function(AddMyMessageEvent value) addMyMessageOrFile,
    required TResult Function(CheckChatGroupsEvent value) checkChatGroups,
    required TResult Function(GetFileChatEvent value) getFile,
    required TResult Function(LoadMoreChatEvent value) loadMore,
    required TResult Function(UpdateUnreadMessageEvent value)
        updateUnreadMessage,
  }) {
    return checkChatGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(InitNewMessageChatEvent value)? initNewMessage,
    TResult Function(AddMyMessageEvent value)? addMyMessageOrFile,
    TResult Function(CheckChatGroupsEvent value)? checkChatGroups,
    TResult Function(GetFileChatEvent value)? getFile,
    TResult Function(LoadMoreChatEvent value)? loadMore,
    TResult Function(UpdateUnreadMessageEvent value)? updateUnreadMessage,
  }) {
    return checkChatGroups?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(InitNewMessageChatEvent value)? initNewMessage,
    TResult Function(AddMyMessageEvent value)? addMyMessageOrFile,
    TResult Function(CheckChatGroupsEvent value)? checkChatGroups,
    TResult Function(GetFileChatEvent value)? getFile,
    TResult Function(LoadMoreChatEvent value)? loadMore,
    TResult Function(UpdateUnreadMessageEvent value)? updateUnreadMessage,
    required TResult orElse(),
  }) {
    if (checkChatGroups != null) {
      return checkChatGroups(this);
    }
    return orElse();
  }
}

abstract class CheckChatGroupsEvent implements ChatEvent {
  const factory CheckChatGroupsEvent(String agencyId, String orgName) =
      _$CheckChatGroupsEvent;

  String get agencyId;
  String get orgName;
  @JsonKey(ignore: true)
  $CheckChatGroupsEventCopyWith<CheckChatGroupsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFileChatEventCopyWith<$Res> {
  factory $GetFileChatEventCopyWith(
          GetFileChatEvent value, $Res Function(GetFileChatEvent) then) =
      _$GetFileChatEventCopyWithImpl<$Res>;
  $Res call({String link});
}

/// @nodoc
class _$GetFileChatEventCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $GetFileChatEventCopyWith<$Res> {
  _$GetFileChatEventCopyWithImpl(
      GetFileChatEvent _value, $Res Function(GetFileChatEvent) _then)
      : super(_value, (v) => _then(v as GetFileChatEvent));

  @override
  GetFileChatEvent get _value => super._value as GetFileChatEvent;

  @override
  $Res call({
    Object? link = freezed,
  }) {
    return _then(GetFileChatEvent(
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetFileChatEvent implements GetFileChatEvent {
  const _$GetFileChatEvent({required this.link});

  @override
  final String link;

  @override
  String toString() {
    return 'ChatEvent.getFile(link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetFileChatEvent &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  $GetFileChatEventCopyWith<GetFileChatEvent> get copyWith =>
      _$GetFileChatEventCopyWithImpl<GetFileChatEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String agencyId, bool isPushNatificationMessage)
        init,
    required TResult Function(String agencyId, dynamic data) initNewMessage,
    required TResult Function(
            String message, String messageType, String agencyId)
        addMyMessageOrFile,
    required TResult Function(String agencyId, String orgName) checkChatGroups,
    required TResult Function(String link) getFile,
    required TResult Function(int offset, String agencyId) loadMore,
    required TResult Function(String agencyId) updateUnreadMessage,
  }) {
    return getFile(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String agencyId, bool isPushNatificationMessage)? init,
    TResult Function(String agencyId, dynamic data)? initNewMessage,
    TResult Function(String message, String messageType, String agencyId)?
        addMyMessageOrFile,
    TResult Function(String agencyId, String orgName)? checkChatGroups,
    TResult Function(String link)? getFile,
    TResult Function(int offset, String agencyId)? loadMore,
    TResult Function(String agencyId)? updateUnreadMessage,
  }) {
    return getFile?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String agencyId, bool isPushNatificationMessage)? init,
    TResult Function(String agencyId, dynamic data)? initNewMessage,
    TResult Function(String message, String messageType, String agencyId)?
        addMyMessageOrFile,
    TResult Function(String agencyId, String orgName)? checkChatGroups,
    TResult Function(String link)? getFile,
    TResult Function(int offset, String agencyId)? loadMore,
    TResult Function(String agencyId)? updateUnreadMessage,
    required TResult orElse(),
  }) {
    if (getFile != null) {
      return getFile(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitChatEvent value) init,
    required TResult Function(InitNewMessageChatEvent value) initNewMessage,
    required TResult Function(AddMyMessageEvent value) addMyMessageOrFile,
    required TResult Function(CheckChatGroupsEvent value) checkChatGroups,
    required TResult Function(GetFileChatEvent value) getFile,
    required TResult Function(LoadMoreChatEvent value) loadMore,
    required TResult Function(UpdateUnreadMessageEvent value)
        updateUnreadMessage,
  }) {
    return getFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(InitNewMessageChatEvent value)? initNewMessage,
    TResult Function(AddMyMessageEvent value)? addMyMessageOrFile,
    TResult Function(CheckChatGroupsEvent value)? checkChatGroups,
    TResult Function(GetFileChatEvent value)? getFile,
    TResult Function(LoadMoreChatEvent value)? loadMore,
    TResult Function(UpdateUnreadMessageEvent value)? updateUnreadMessage,
  }) {
    return getFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(InitNewMessageChatEvent value)? initNewMessage,
    TResult Function(AddMyMessageEvent value)? addMyMessageOrFile,
    TResult Function(CheckChatGroupsEvent value)? checkChatGroups,
    TResult Function(GetFileChatEvent value)? getFile,
    TResult Function(LoadMoreChatEvent value)? loadMore,
    TResult Function(UpdateUnreadMessageEvent value)? updateUnreadMessage,
    required TResult orElse(),
  }) {
    if (getFile != null) {
      return getFile(this);
    }
    return orElse();
  }
}

abstract class GetFileChatEvent implements ChatEvent {
  const factory GetFileChatEvent({required String link}) = _$GetFileChatEvent;

  String get link;
  @JsonKey(ignore: true)
  $GetFileChatEventCopyWith<GetFileChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadMoreChatEventCopyWith<$Res> {
  factory $LoadMoreChatEventCopyWith(
          LoadMoreChatEvent value, $Res Function(LoadMoreChatEvent) then) =
      _$LoadMoreChatEventCopyWithImpl<$Res>;
  $Res call({int offset, String agencyId});
}

/// @nodoc
class _$LoadMoreChatEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $LoadMoreChatEventCopyWith<$Res> {
  _$LoadMoreChatEventCopyWithImpl(
      LoadMoreChatEvent _value, $Res Function(LoadMoreChatEvent) _then)
      : super(_value, (v) => _then(v as LoadMoreChatEvent));

  @override
  LoadMoreChatEvent get _value => super._value as LoadMoreChatEvent;

  @override
  $Res call({
    Object? offset = freezed,
    Object? agencyId = freezed,
  }) {
    return _then(LoadMoreChatEvent(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      agencyId: agencyId == freezed
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadMoreChatEvent implements LoadMoreChatEvent {
  const _$LoadMoreChatEvent({required this.offset, required this.agencyId});

  @override
  final int offset;
  @override
  final String agencyId;

  @override
  String toString() {
    return 'ChatEvent.loadMore(offset: $offset, agencyId: $agencyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadMoreChatEvent &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality().equals(other.agencyId, agencyId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(agencyId));

  @JsonKey(ignore: true)
  @override
  $LoadMoreChatEventCopyWith<LoadMoreChatEvent> get copyWith =>
      _$LoadMoreChatEventCopyWithImpl<LoadMoreChatEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String agencyId, bool isPushNatificationMessage)
        init,
    required TResult Function(String agencyId, dynamic data) initNewMessage,
    required TResult Function(
            String message, String messageType, String agencyId)
        addMyMessageOrFile,
    required TResult Function(String agencyId, String orgName) checkChatGroups,
    required TResult Function(String link) getFile,
    required TResult Function(int offset, String agencyId) loadMore,
    required TResult Function(String agencyId) updateUnreadMessage,
  }) {
    return loadMore(offset, agencyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String agencyId, bool isPushNatificationMessage)? init,
    TResult Function(String agencyId, dynamic data)? initNewMessage,
    TResult Function(String message, String messageType, String agencyId)?
        addMyMessageOrFile,
    TResult Function(String agencyId, String orgName)? checkChatGroups,
    TResult Function(String link)? getFile,
    TResult Function(int offset, String agencyId)? loadMore,
    TResult Function(String agencyId)? updateUnreadMessage,
  }) {
    return loadMore?.call(offset, agencyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String agencyId, bool isPushNatificationMessage)? init,
    TResult Function(String agencyId, dynamic data)? initNewMessage,
    TResult Function(String message, String messageType, String agencyId)?
        addMyMessageOrFile,
    TResult Function(String agencyId, String orgName)? checkChatGroups,
    TResult Function(String link)? getFile,
    TResult Function(int offset, String agencyId)? loadMore,
    TResult Function(String agencyId)? updateUnreadMessage,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(offset, agencyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitChatEvent value) init,
    required TResult Function(InitNewMessageChatEvent value) initNewMessage,
    required TResult Function(AddMyMessageEvent value) addMyMessageOrFile,
    required TResult Function(CheckChatGroupsEvent value) checkChatGroups,
    required TResult Function(GetFileChatEvent value) getFile,
    required TResult Function(LoadMoreChatEvent value) loadMore,
    required TResult Function(UpdateUnreadMessageEvent value)
        updateUnreadMessage,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(InitNewMessageChatEvent value)? initNewMessage,
    TResult Function(AddMyMessageEvent value)? addMyMessageOrFile,
    TResult Function(CheckChatGroupsEvent value)? checkChatGroups,
    TResult Function(GetFileChatEvent value)? getFile,
    TResult Function(LoadMoreChatEvent value)? loadMore,
    TResult Function(UpdateUnreadMessageEvent value)? updateUnreadMessage,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(InitNewMessageChatEvent value)? initNewMessage,
    TResult Function(AddMyMessageEvent value)? addMyMessageOrFile,
    TResult Function(CheckChatGroupsEvent value)? checkChatGroups,
    TResult Function(GetFileChatEvent value)? getFile,
    TResult Function(LoadMoreChatEvent value)? loadMore,
    TResult Function(UpdateUnreadMessageEvent value)? updateUnreadMessage,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class LoadMoreChatEvent implements ChatEvent {
  const factory LoadMoreChatEvent(
      {required int offset, required String agencyId}) = _$LoadMoreChatEvent;

  int get offset;
  String get agencyId;
  @JsonKey(ignore: true)
  $LoadMoreChatEventCopyWith<LoadMoreChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUnreadMessageEventCopyWith<$Res> {
  factory $UpdateUnreadMessageEventCopyWith(UpdateUnreadMessageEvent value,
          $Res Function(UpdateUnreadMessageEvent) then) =
      _$UpdateUnreadMessageEventCopyWithImpl<$Res>;
  $Res call({String agencyId});
}

/// @nodoc
class _$UpdateUnreadMessageEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $UpdateUnreadMessageEventCopyWith<$Res> {
  _$UpdateUnreadMessageEventCopyWithImpl(UpdateUnreadMessageEvent _value,
      $Res Function(UpdateUnreadMessageEvent) _then)
      : super(_value, (v) => _then(v as UpdateUnreadMessageEvent));

  @override
  UpdateUnreadMessageEvent get _value =>
      super._value as UpdateUnreadMessageEvent;

  @override
  $Res call({
    Object? agencyId = freezed,
  }) {
    return _then(UpdateUnreadMessageEvent(
      agencyId: agencyId == freezed
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateUnreadMessageEvent implements UpdateUnreadMessageEvent {
  const _$UpdateUnreadMessageEvent({required this.agencyId});

  @override
  final String agencyId;

  @override
  String toString() {
    return 'ChatEvent.updateUnreadMessage(agencyId: $agencyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateUnreadMessageEvent &&
            const DeepCollectionEquality().equals(other.agencyId, agencyId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(agencyId));

  @JsonKey(ignore: true)
  @override
  $UpdateUnreadMessageEventCopyWith<UpdateUnreadMessageEvent> get copyWith =>
      _$UpdateUnreadMessageEventCopyWithImpl<UpdateUnreadMessageEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String agencyId, bool isPushNatificationMessage)
        init,
    required TResult Function(String agencyId, dynamic data) initNewMessage,
    required TResult Function(
            String message, String messageType, String agencyId)
        addMyMessageOrFile,
    required TResult Function(String agencyId, String orgName) checkChatGroups,
    required TResult Function(String link) getFile,
    required TResult Function(int offset, String agencyId) loadMore,
    required TResult Function(String agencyId) updateUnreadMessage,
  }) {
    return updateUnreadMessage(agencyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String agencyId, bool isPushNatificationMessage)? init,
    TResult Function(String agencyId, dynamic data)? initNewMessage,
    TResult Function(String message, String messageType, String agencyId)?
        addMyMessageOrFile,
    TResult Function(String agencyId, String orgName)? checkChatGroups,
    TResult Function(String link)? getFile,
    TResult Function(int offset, String agencyId)? loadMore,
    TResult Function(String agencyId)? updateUnreadMessage,
  }) {
    return updateUnreadMessage?.call(agencyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String agencyId, bool isPushNatificationMessage)? init,
    TResult Function(String agencyId, dynamic data)? initNewMessage,
    TResult Function(String message, String messageType, String agencyId)?
        addMyMessageOrFile,
    TResult Function(String agencyId, String orgName)? checkChatGroups,
    TResult Function(String link)? getFile,
    TResult Function(int offset, String agencyId)? loadMore,
    TResult Function(String agencyId)? updateUnreadMessage,
    required TResult orElse(),
  }) {
    if (updateUnreadMessage != null) {
      return updateUnreadMessage(agencyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitChatEvent value) init,
    required TResult Function(InitNewMessageChatEvent value) initNewMessage,
    required TResult Function(AddMyMessageEvent value) addMyMessageOrFile,
    required TResult Function(CheckChatGroupsEvent value) checkChatGroups,
    required TResult Function(GetFileChatEvent value) getFile,
    required TResult Function(LoadMoreChatEvent value) loadMore,
    required TResult Function(UpdateUnreadMessageEvent value)
        updateUnreadMessage,
  }) {
    return updateUnreadMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(InitNewMessageChatEvent value)? initNewMessage,
    TResult Function(AddMyMessageEvent value)? addMyMessageOrFile,
    TResult Function(CheckChatGroupsEvent value)? checkChatGroups,
    TResult Function(GetFileChatEvent value)? getFile,
    TResult Function(LoadMoreChatEvent value)? loadMore,
    TResult Function(UpdateUnreadMessageEvent value)? updateUnreadMessage,
  }) {
    return updateUnreadMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitChatEvent value)? init,
    TResult Function(InitNewMessageChatEvent value)? initNewMessage,
    TResult Function(AddMyMessageEvent value)? addMyMessageOrFile,
    TResult Function(CheckChatGroupsEvent value)? checkChatGroups,
    TResult Function(GetFileChatEvent value)? getFile,
    TResult Function(LoadMoreChatEvent value)? loadMore,
    TResult Function(UpdateUnreadMessageEvent value)? updateUnreadMessage,
    required TResult orElse(),
  }) {
    if (updateUnreadMessage != null) {
      return updateUnreadMessage(this);
    }
    return orElse();
  }
}

abstract class UpdateUnreadMessageEvent implements ChatEvent {
  const factory UpdateUnreadMessageEvent({required String agencyId}) =
      _$UpdateUnreadMessageEvent;

  String get agencyId;
  @JsonKey(ignore: true)
  $UpdateUnreadMessageEventCopyWith<UpdateUnreadMessageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatStateTearOff {
  const _$ChatStateTearOff();

  LoadingChatStateState loading() {
    return const LoadingChatStateState();
  }

  InitChatState init(
      {required List<ChatMessagesDataModel> allMyMessage,
      required String message,
      String? orgLogo,
      String? orgName,
      String? agencyColor}) {
    return InitChatState(
      allMyMessage: allMyMessage,
      message: message,
      orgLogo: orgLogo,
      orgName: orgName,
      agencyColor: agencyColor,
    );
  }

  AddMyFileChatSuccessState addMyFileSuccess(
      {required ChatMessagesAgencyDataModel model}) {
    return AddMyFileChatSuccessState(
      model: model,
    );
  }

  AddMyFileChatFailureState addMyFileFailure(
      {required ChatMessagesAgencyDataModel model}) {
    return AddMyFileChatFailureState(
      model: model,
    );
  }

  ChatUpdateStateIndicatorState updateStateIndicator(
      {required String agencyId}) {
    return ChatUpdateStateIndicatorState(
      agencyId: agencyId,
    );
  }

  LoadingFileChatState loadingFile() {
    return const LoadingFileChatState();
  }

  ChatErrorState error({required String message}) {
    return ChatErrorState(
      message: message,
    );
  }

  GetFileChatState getFile(
      {required String nameFile,
      required Uint8List file,
      required String type}) {
    return GetFileChatState(
      nameFile: nameFile,
      file: file,
      type: type,
    );
  }
}

/// @nodoc
const $ChatState = _$ChatStateTearOff();

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ChatMessagesDataModel> allMyMessage,
            String message,
            String? orgLogo,
            String? orgName,
            String? agencyColor)
        init,
    required TResult Function(ChatMessagesAgencyDataModel model)
        addMyFileSuccess,
    required TResult Function(ChatMessagesAgencyDataModel model)
        addMyFileFailure,
    required TResult Function(String agencyId) updateStateIndicator,
    required TResult Function() loadingFile,
    required TResult Function(String message) error,
    required TResult Function(String nameFile, Uint8List file, String type)
        getFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ChatMessagesDataModel> allMyMessage, String message,
            String? orgLogo, String? orgName, String? agencyColor)?
        init,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileSuccess,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileFailure,
    TResult Function(String agencyId)? updateStateIndicator,
    TResult Function()? loadingFile,
    TResult Function(String message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ChatMessagesDataModel> allMyMessage, String message,
            String? orgLogo, String? orgName, String? agencyColor)?
        init,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileSuccess,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileFailure,
    TResult Function(String agencyId)? updateStateIndicator,
    TResult Function()? loadingFile,
    TResult Function(String message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChatStateState value) loading,
    required TResult Function(InitChatState value) init,
    required TResult Function(AddMyFileChatSuccessState value) addMyFileSuccess,
    required TResult Function(AddMyFileChatFailureState value) addMyFileFailure,
    required TResult Function(ChatUpdateStateIndicatorState value)
        updateStateIndicator,
    required TResult Function(LoadingFileChatState value) loadingFile,
    required TResult Function(ChatErrorState value) error,
    required TResult Function(GetFileChatState value) getFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingChatStateState value)? loading,
    TResult Function(InitChatState value)? init,
    TResult Function(AddMyFileChatSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileChatFailureState value)? addMyFileFailure,
    TResult Function(ChatUpdateStateIndicatorState value)? updateStateIndicator,
    TResult Function(LoadingFileChatState value)? loadingFile,
    TResult Function(ChatErrorState value)? error,
    TResult Function(GetFileChatState value)? getFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChatStateState value)? loading,
    TResult Function(InitChatState value)? init,
    TResult Function(AddMyFileChatSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileChatFailureState value)? addMyFileFailure,
    TResult Function(ChatUpdateStateIndicatorState value)? updateStateIndicator,
    TResult Function(LoadingFileChatState value)? loadingFile,
    TResult Function(ChatErrorState value)? error,
    TResult Function(GetFileChatState value)? getFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;
}

/// @nodoc
abstract class $LoadingChatStateStateCopyWith<$Res> {
  factory $LoadingChatStateStateCopyWith(LoadingChatStateState value,
          $Res Function(LoadingChatStateState) then) =
      _$LoadingChatStateStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingChatStateStateCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res>
    implements $LoadingChatStateStateCopyWith<$Res> {
  _$LoadingChatStateStateCopyWithImpl(
      LoadingChatStateState _value, $Res Function(LoadingChatStateState) _then)
      : super(_value, (v) => _then(v as LoadingChatStateState));

  @override
  LoadingChatStateState get _value => super._value as LoadingChatStateState;
}

/// @nodoc

class _$LoadingChatStateState implements LoadingChatStateState {
  const _$LoadingChatStateState();

  @override
  String toString() {
    return 'ChatState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingChatStateState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ChatMessagesDataModel> allMyMessage,
            String message,
            String? orgLogo,
            String? orgName,
            String? agencyColor)
        init,
    required TResult Function(ChatMessagesAgencyDataModel model)
        addMyFileSuccess,
    required TResult Function(ChatMessagesAgencyDataModel model)
        addMyFileFailure,
    required TResult Function(String agencyId) updateStateIndicator,
    required TResult Function() loadingFile,
    required TResult Function(String message) error,
    required TResult Function(String nameFile, Uint8List file, String type)
        getFile,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ChatMessagesDataModel> allMyMessage, String message,
            String? orgLogo, String? orgName, String? agencyColor)?
        init,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileSuccess,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileFailure,
    TResult Function(String agencyId)? updateStateIndicator,
    TResult Function()? loadingFile,
    TResult Function(String message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ChatMessagesDataModel> allMyMessage, String message,
            String? orgLogo, String? orgName, String? agencyColor)?
        init,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileSuccess,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileFailure,
    TResult Function(String agencyId)? updateStateIndicator,
    TResult Function()? loadingFile,
    TResult Function(String message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChatStateState value) loading,
    required TResult Function(InitChatState value) init,
    required TResult Function(AddMyFileChatSuccessState value) addMyFileSuccess,
    required TResult Function(AddMyFileChatFailureState value) addMyFileFailure,
    required TResult Function(ChatUpdateStateIndicatorState value)
        updateStateIndicator,
    required TResult Function(LoadingFileChatState value) loadingFile,
    required TResult Function(ChatErrorState value) error,
    required TResult Function(GetFileChatState value) getFile,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingChatStateState value)? loading,
    TResult Function(InitChatState value)? init,
    TResult Function(AddMyFileChatSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileChatFailureState value)? addMyFileFailure,
    TResult Function(ChatUpdateStateIndicatorState value)? updateStateIndicator,
    TResult Function(LoadingFileChatState value)? loadingFile,
    TResult Function(ChatErrorState value)? error,
    TResult Function(GetFileChatState value)? getFile,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChatStateState value)? loading,
    TResult Function(InitChatState value)? init,
    TResult Function(AddMyFileChatSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileChatFailureState value)? addMyFileFailure,
    TResult Function(ChatUpdateStateIndicatorState value)? updateStateIndicator,
    TResult Function(LoadingFileChatState value)? loadingFile,
    TResult Function(ChatErrorState value)? error,
    TResult Function(GetFileChatState value)? getFile,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingChatStateState implements ChatState {
  const factory LoadingChatStateState() = _$LoadingChatStateState;
}

/// @nodoc
abstract class $InitChatStateCopyWith<$Res> {
  factory $InitChatStateCopyWith(
          InitChatState value, $Res Function(InitChatState) then) =
      _$InitChatStateCopyWithImpl<$Res>;
  $Res call(
      {List<ChatMessagesDataModel> allMyMessage,
      String message,
      String? orgLogo,
      String? orgName,
      String? agencyColor});
}

/// @nodoc
class _$InitChatStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements $InitChatStateCopyWith<$Res> {
  _$InitChatStateCopyWithImpl(
      InitChatState _value, $Res Function(InitChatState) _then)
      : super(_value, (v) => _then(v as InitChatState));

  @override
  InitChatState get _value => super._value as InitChatState;

  @override
  $Res call({
    Object? allMyMessage = freezed,
    Object? message = freezed,
    Object? orgLogo = freezed,
    Object? orgName = freezed,
    Object? agencyColor = freezed,
  }) {
    return _then(InitChatState(
      allMyMessage: allMyMessage == freezed
          ? _value.allMyMessage
          : allMyMessage // ignore: cast_nullable_to_non_nullable
              as List<ChatMessagesDataModel>,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      orgLogo: orgLogo == freezed
          ? _value.orgLogo
          : orgLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      orgName: orgName == freezed
          ? _value.orgName
          : orgName // ignore: cast_nullable_to_non_nullable
              as String?,
      agencyColor: agencyColor == freezed
          ? _value.agencyColor
          : agencyColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitChatState implements InitChatState {
  const _$InitChatState(
      {required this.allMyMessage,
      required this.message,
      this.orgLogo,
      this.orgName,
      this.agencyColor});

  @override
  final List<ChatMessagesDataModel> allMyMessage;
  @override
  final String message;
  @override
  final String? orgLogo;
  @override
  final String? orgName;
  @override
  final String? agencyColor;

  @override
  String toString() {
    return 'ChatState.init(allMyMessage: $allMyMessage, message: $message, orgLogo: $orgLogo, orgName: $orgName, agencyColor: $agencyColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitChatState &&
            const DeepCollectionEquality()
                .equals(other.allMyMessage, allMyMessage) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.orgLogo, orgLogo) &&
            const DeepCollectionEquality().equals(other.orgName, orgName) &&
            const DeepCollectionEquality()
                .equals(other.agencyColor, agencyColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(allMyMessage),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(orgLogo),
      const DeepCollectionEquality().hash(orgName),
      const DeepCollectionEquality().hash(agencyColor));

  @JsonKey(ignore: true)
  @override
  $InitChatStateCopyWith<InitChatState> get copyWith =>
      _$InitChatStateCopyWithImpl<InitChatState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ChatMessagesDataModel> allMyMessage,
            String message,
            String? orgLogo,
            String? orgName,
            String? agencyColor)
        init,
    required TResult Function(ChatMessagesAgencyDataModel model)
        addMyFileSuccess,
    required TResult Function(ChatMessagesAgencyDataModel model)
        addMyFileFailure,
    required TResult Function(String agencyId) updateStateIndicator,
    required TResult Function() loadingFile,
    required TResult Function(String message) error,
    required TResult Function(String nameFile, Uint8List file, String type)
        getFile,
  }) {
    return init(allMyMessage, message, orgLogo, orgName, agencyColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ChatMessagesDataModel> allMyMessage, String message,
            String? orgLogo, String? orgName, String? agencyColor)?
        init,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileSuccess,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileFailure,
    TResult Function(String agencyId)? updateStateIndicator,
    TResult Function()? loadingFile,
    TResult Function(String message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
  }) {
    return init?.call(allMyMessage, message, orgLogo, orgName, agencyColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ChatMessagesDataModel> allMyMessage, String message,
            String? orgLogo, String? orgName, String? agencyColor)?
        init,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileSuccess,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileFailure,
    TResult Function(String agencyId)? updateStateIndicator,
    TResult Function()? loadingFile,
    TResult Function(String message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(allMyMessage, message, orgLogo, orgName, agencyColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChatStateState value) loading,
    required TResult Function(InitChatState value) init,
    required TResult Function(AddMyFileChatSuccessState value) addMyFileSuccess,
    required TResult Function(AddMyFileChatFailureState value) addMyFileFailure,
    required TResult Function(ChatUpdateStateIndicatorState value)
        updateStateIndicator,
    required TResult Function(LoadingFileChatState value) loadingFile,
    required TResult Function(ChatErrorState value) error,
    required TResult Function(GetFileChatState value) getFile,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingChatStateState value)? loading,
    TResult Function(InitChatState value)? init,
    TResult Function(AddMyFileChatSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileChatFailureState value)? addMyFileFailure,
    TResult Function(ChatUpdateStateIndicatorState value)? updateStateIndicator,
    TResult Function(LoadingFileChatState value)? loadingFile,
    TResult Function(ChatErrorState value)? error,
    TResult Function(GetFileChatState value)? getFile,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChatStateState value)? loading,
    TResult Function(InitChatState value)? init,
    TResult Function(AddMyFileChatSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileChatFailureState value)? addMyFileFailure,
    TResult Function(ChatUpdateStateIndicatorState value)? updateStateIndicator,
    TResult Function(LoadingFileChatState value)? loadingFile,
    TResult Function(ChatErrorState value)? error,
    TResult Function(GetFileChatState value)? getFile,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitChatState implements ChatState {
  const factory InitChatState(
      {required List<ChatMessagesDataModel> allMyMessage,
      required String message,
      String? orgLogo,
      String? orgName,
      String? agencyColor}) = _$InitChatState;

  List<ChatMessagesDataModel> get allMyMessage;
  String get message;
  String? get orgLogo;
  String? get orgName;
  String? get agencyColor;
  @JsonKey(ignore: true)
  $InitChatStateCopyWith<InitChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMyFileChatSuccessStateCopyWith<$Res> {
  factory $AddMyFileChatSuccessStateCopyWith(AddMyFileChatSuccessState value,
          $Res Function(AddMyFileChatSuccessState) then) =
      _$AddMyFileChatSuccessStateCopyWithImpl<$Res>;
  $Res call({ChatMessagesAgencyDataModel model});

  $ChatMessagesAgencyDataModelCopyWith<$Res> get model;
}

/// @nodoc
class _$AddMyFileChatSuccessStateCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res>
    implements $AddMyFileChatSuccessStateCopyWith<$Res> {
  _$AddMyFileChatSuccessStateCopyWithImpl(AddMyFileChatSuccessState _value,
      $Res Function(AddMyFileChatSuccessState) _then)
      : super(_value, (v) => _then(v as AddMyFileChatSuccessState));

  @override
  AddMyFileChatSuccessState get _value =>
      super._value as AddMyFileChatSuccessState;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(AddMyFileChatSuccessState(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ChatMessagesAgencyDataModel,
    ));
  }

  @override
  $ChatMessagesAgencyDataModelCopyWith<$Res> get model {
    return $ChatMessagesAgencyDataModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$AddMyFileChatSuccessState implements AddMyFileChatSuccessState {
  const _$AddMyFileChatSuccessState({required this.model});

  @override
  final ChatMessagesAgencyDataModel model;

  @override
  String toString() {
    return 'ChatState.addMyFileSuccess(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddMyFileChatSuccessState &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  $AddMyFileChatSuccessStateCopyWith<AddMyFileChatSuccessState> get copyWith =>
      _$AddMyFileChatSuccessStateCopyWithImpl<AddMyFileChatSuccessState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ChatMessagesDataModel> allMyMessage,
            String message,
            String? orgLogo,
            String? orgName,
            String? agencyColor)
        init,
    required TResult Function(ChatMessagesAgencyDataModel model)
        addMyFileSuccess,
    required TResult Function(ChatMessagesAgencyDataModel model)
        addMyFileFailure,
    required TResult Function(String agencyId) updateStateIndicator,
    required TResult Function() loadingFile,
    required TResult Function(String message) error,
    required TResult Function(String nameFile, Uint8List file, String type)
        getFile,
  }) {
    return addMyFileSuccess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ChatMessagesDataModel> allMyMessage, String message,
            String? orgLogo, String? orgName, String? agencyColor)?
        init,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileSuccess,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileFailure,
    TResult Function(String agencyId)? updateStateIndicator,
    TResult Function()? loadingFile,
    TResult Function(String message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
  }) {
    return addMyFileSuccess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ChatMessagesDataModel> allMyMessage, String message,
            String? orgLogo, String? orgName, String? agencyColor)?
        init,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileSuccess,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileFailure,
    TResult Function(String agencyId)? updateStateIndicator,
    TResult Function()? loadingFile,
    TResult Function(String message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
    required TResult orElse(),
  }) {
    if (addMyFileSuccess != null) {
      return addMyFileSuccess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChatStateState value) loading,
    required TResult Function(InitChatState value) init,
    required TResult Function(AddMyFileChatSuccessState value) addMyFileSuccess,
    required TResult Function(AddMyFileChatFailureState value) addMyFileFailure,
    required TResult Function(ChatUpdateStateIndicatorState value)
        updateStateIndicator,
    required TResult Function(LoadingFileChatState value) loadingFile,
    required TResult Function(ChatErrorState value) error,
    required TResult Function(GetFileChatState value) getFile,
  }) {
    return addMyFileSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingChatStateState value)? loading,
    TResult Function(InitChatState value)? init,
    TResult Function(AddMyFileChatSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileChatFailureState value)? addMyFileFailure,
    TResult Function(ChatUpdateStateIndicatorState value)? updateStateIndicator,
    TResult Function(LoadingFileChatState value)? loadingFile,
    TResult Function(ChatErrorState value)? error,
    TResult Function(GetFileChatState value)? getFile,
  }) {
    return addMyFileSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChatStateState value)? loading,
    TResult Function(InitChatState value)? init,
    TResult Function(AddMyFileChatSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileChatFailureState value)? addMyFileFailure,
    TResult Function(ChatUpdateStateIndicatorState value)? updateStateIndicator,
    TResult Function(LoadingFileChatState value)? loadingFile,
    TResult Function(ChatErrorState value)? error,
    TResult Function(GetFileChatState value)? getFile,
    required TResult orElse(),
  }) {
    if (addMyFileSuccess != null) {
      return addMyFileSuccess(this);
    }
    return orElse();
  }
}

abstract class AddMyFileChatSuccessState implements ChatState {
  const factory AddMyFileChatSuccessState(
          {required ChatMessagesAgencyDataModel model}) =
      _$AddMyFileChatSuccessState;

  ChatMessagesAgencyDataModel get model;
  @JsonKey(ignore: true)
  $AddMyFileChatSuccessStateCopyWith<AddMyFileChatSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMyFileChatFailureStateCopyWith<$Res> {
  factory $AddMyFileChatFailureStateCopyWith(AddMyFileChatFailureState value,
          $Res Function(AddMyFileChatFailureState) then) =
      _$AddMyFileChatFailureStateCopyWithImpl<$Res>;
  $Res call({ChatMessagesAgencyDataModel model});

  $ChatMessagesAgencyDataModelCopyWith<$Res> get model;
}

/// @nodoc
class _$AddMyFileChatFailureStateCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res>
    implements $AddMyFileChatFailureStateCopyWith<$Res> {
  _$AddMyFileChatFailureStateCopyWithImpl(AddMyFileChatFailureState _value,
      $Res Function(AddMyFileChatFailureState) _then)
      : super(_value, (v) => _then(v as AddMyFileChatFailureState));

  @override
  AddMyFileChatFailureState get _value =>
      super._value as AddMyFileChatFailureState;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(AddMyFileChatFailureState(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ChatMessagesAgencyDataModel,
    ));
  }

  @override
  $ChatMessagesAgencyDataModelCopyWith<$Res> get model {
    return $ChatMessagesAgencyDataModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$AddMyFileChatFailureState implements AddMyFileChatFailureState {
  const _$AddMyFileChatFailureState({required this.model});

  @override
  final ChatMessagesAgencyDataModel model;

  @override
  String toString() {
    return 'ChatState.addMyFileFailure(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddMyFileChatFailureState &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  $AddMyFileChatFailureStateCopyWith<AddMyFileChatFailureState> get copyWith =>
      _$AddMyFileChatFailureStateCopyWithImpl<AddMyFileChatFailureState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ChatMessagesDataModel> allMyMessage,
            String message,
            String? orgLogo,
            String? orgName,
            String? agencyColor)
        init,
    required TResult Function(ChatMessagesAgencyDataModel model)
        addMyFileSuccess,
    required TResult Function(ChatMessagesAgencyDataModel model)
        addMyFileFailure,
    required TResult Function(String agencyId) updateStateIndicator,
    required TResult Function() loadingFile,
    required TResult Function(String message) error,
    required TResult Function(String nameFile, Uint8List file, String type)
        getFile,
  }) {
    return addMyFileFailure(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ChatMessagesDataModel> allMyMessage, String message,
            String? orgLogo, String? orgName, String? agencyColor)?
        init,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileSuccess,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileFailure,
    TResult Function(String agencyId)? updateStateIndicator,
    TResult Function()? loadingFile,
    TResult Function(String message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
  }) {
    return addMyFileFailure?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ChatMessagesDataModel> allMyMessage, String message,
            String? orgLogo, String? orgName, String? agencyColor)?
        init,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileSuccess,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileFailure,
    TResult Function(String agencyId)? updateStateIndicator,
    TResult Function()? loadingFile,
    TResult Function(String message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
    required TResult orElse(),
  }) {
    if (addMyFileFailure != null) {
      return addMyFileFailure(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChatStateState value) loading,
    required TResult Function(InitChatState value) init,
    required TResult Function(AddMyFileChatSuccessState value) addMyFileSuccess,
    required TResult Function(AddMyFileChatFailureState value) addMyFileFailure,
    required TResult Function(ChatUpdateStateIndicatorState value)
        updateStateIndicator,
    required TResult Function(LoadingFileChatState value) loadingFile,
    required TResult Function(ChatErrorState value) error,
    required TResult Function(GetFileChatState value) getFile,
  }) {
    return addMyFileFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingChatStateState value)? loading,
    TResult Function(InitChatState value)? init,
    TResult Function(AddMyFileChatSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileChatFailureState value)? addMyFileFailure,
    TResult Function(ChatUpdateStateIndicatorState value)? updateStateIndicator,
    TResult Function(LoadingFileChatState value)? loadingFile,
    TResult Function(ChatErrorState value)? error,
    TResult Function(GetFileChatState value)? getFile,
  }) {
    return addMyFileFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChatStateState value)? loading,
    TResult Function(InitChatState value)? init,
    TResult Function(AddMyFileChatSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileChatFailureState value)? addMyFileFailure,
    TResult Function(ChatUpdateStateIndicatorState value)? updateStateIndicator,
    TResult Function(LoadingFileChatState value)? loadingFile,
    TResult Function(ChatErrorState value)? error,
    TResult Function(GetFileChatState value)? getFile,
    required TResult orElse(),
  }) {
    if (addMyFileFailure != null) {
      return addMyFileFailure(this);
    }
    return orElse();
  }
}

abstract class AddMyFileChatFailureState implements ChatState {
  const factory AddMyFileChatFailureState(
          {required ChatMessagesAgencyDataModel model}) =
      _$AddMyFileChatFailureState;

  ChatMessagesAgencyDataModel get model;
  @JsonKey(ignore: true)
  $AddMyFileChatFailureStateCopyWith<AddMyFileChatFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUpdateStateIndicatorStateCopyWith<$Res> {
  factory $ChatUpdateStateIndicatorStateCopyWith(
          ChatUpdateStateIndicatorState value,
          $Res Function(ChatUpdateStateIndicatorState) then) =
      _$ChatUpdateStateIndicatorStateCopyWithImpl<$Res>;
  $Res call({String agencyId});
}

/// @nodoc
class _$ChatUpdateStateIndicatorStateCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res>
    implements $ChatUpdateStateIndicatorStateCopyWith<$Res> {
  _$ChatUpdateStateIndicatorStateCopyWithImpl(
      ChatUpdateStateIndicatorState _value,
      $Res Function(ChatUpdateStateIndicatorState) _then)
      : super(_value, (v) => _then(v as ChatUpdateStateIndicatorState));

  @override
  ChatUpdateStateIndicatorState get _value =>
      super._value as ChatUpdateStateIndicatorState;

  @override
  $Res call({
    Object? agencyId = freezed,
  }) {
    return _then(ChatUpdateStateIndicatorState(
      agencyId: agencyId == freezed
          ? _value.agencyId
          : agencyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatUpdateStateIndicatorState implements ChatUpdateStateIndicatorState {
  const _$ChatUpdateStateIndicatorState({required this.agencyId});

  @override
  final String agencyId;

  @override
  String toString() {
    return 'ChatState.updateStateIndicator(agencyId: $agencyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatUpdateStateIndicatorState &&
            const DeepCollectionEquality().equals(other.agencyId, agencyId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(agencyId));

  @JsonKey(ignore: true)
  @override
  $ChatUpdateStateIndicatorStateCopyWith<ChatUpdateStateIndicatorState>
      get copyWith => _$ChatUpdateStateIndicatorStateCopyWithImpl<
          ChatUpdateStateIndicatorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ChatMessagesDataModel> allMyMessage,
            String message,
            String? orgLogo,
            String? orgName,
            String? agencyColor)
        init,
    required TResult Function(ChatMessagesAgencyDataModel model)
        addMyFileSuccess,
    required TResult Function(ChatMessagesAgencyDataModel model)
        addMyFileFailure,
    required TResult Function(String agencyId) updateStateIndicator,
    required TResult Function() loadingFile,
    required TResult Function(String message) error,
    required TResult Function(String nameFile, Uint8List file, String type)
        getFile,
  }) {
    return updateStateIndicator(agencyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ChatMessagesDataModel> allMyMessage, String message,
            String? orgLogo, String? orgName, String? agencyColor)?
        init,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileSuccess,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileFailure,
    TResult Function(String agencyId)? updateStateIndicator,
    TResult Function()? loadingFile,
    TResult Function(String message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
  }) {
    return updateStateIndicator?.call(agencyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ChatMessagesDataModel> allMyMessage, String message,
            String? orgLogo, String? orgName, String? agencyColor)?
        init,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileSuccess,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileFailure,
    TResult Function(String agencyId)? updateStateIndicator,
    TResult Function()? loadingFile,
    TResult Function(String message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
    required TResult orElse(),
  }) {
    if (updateStateIndicator != null) {
      return updateStateIndicator(agencyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChatStateState value) loading,
    required TResult Function(InitChatState value) init,
    required TResult Function(AddMyFileChatSuccessState value) addMyFileSuccess,
    required TResult Function(AddMyFileChatFailureState value) addMyFileFailure,
    required TResult Function(ChatUpdateStateIndicatorState value)
        updateStateIndicator,
    required TResult Function(LoadingFileChatState value) loadingFile,
    required TResult Function(ChatErrorState value) error,
    required TResult Function(GetFileChatState value) getFile,
  }) {
    return updateStateIndicator(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingChatStateState value)? loading,
    TResult Function(InitChatState value)? init,
    TResult Function(AddMyFileChatSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileChatFailureState value)? addMyFileFailure,
    TResult Function(ChatUpdateStateIndicatorState value)? updateStateIndicator,
    TResult Function(LoadingFileChatState value)? loadingFile,
    TResult Function(ChatErrorState value)? error,
    TResult Function(GetFileChatState value)? getFile,
  }) {
    return updateStateIndicator?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChatStateState value)? loading,
    TResult Function(InitChatState value)? init,
    TResult Function(AddMyFileChatSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileChatFailureState value)? addMyFileFailure,
    TResult Function(ChatUpdateStateIndicatorState value)? updateStateIndicator,
    TResult Function(LoadingFileChatState value)? loadingFile,
    TResult Function(ChatErrorState value)? error,
    TResult Function(GetFileChatState value)? getFile,
    required TResult orElse(),
  }) {
    if (updateStateIndicator != null) {
      return updateStateIndicator(this);
    }
    return orElse();
  }
}

abstract class ChatUpdateStateIndicatorState implements ChatState {
  const factory ChatUpdateStateIndicatorState({required String agencyId}) =
      _$ChatUpdateStateIndicatorState;

  String get agencyId;
  @JsonKey(ignore: true)
  $ChatUpdateStateIndicatorStateCopyWith<ChatUpdateStateIndicatorState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingFileChatStateCopyWith<$Res> {
  factory $LoadingFileChatStateCopyWith(LoadingFileChatState value,
          $Res Function(LoadingFileChatState) then) =
      _$LoadingFileChatStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingFileChatStateCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res>
    implements $LoadingFileChatStateCopyWith<$Res> {
  _$LoadingFileChatStateCopyWithImpl(
      LoadingFileChatState _value, $Res Function(LoadingFileChatState) _then)
      : super(_value, (v) => _then(v as LoadingFileChatState));

  @override
  LoadingFileChatState get _value => super._value as LoadingFileChatState;
}

/// @nodoc

class _$LoadingFileChatState implements LoadingFileChatState {
  const _$LoadingFileChatState();

  @override
  String toString() {
    return 'ChatState.loadingFile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingFileChatState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ChatMessagesDataModel> allMyMessage,
            String message,
            String? orgLogo,
            String? orgName,
            String? agencyColor)
        init,
    required TResult Function(ChatMessagesAgencyDataModel model)
        addMyFileSuccess,
    required TResult Function(ChatMessagesAgencyDataModel model)
        addMyFileFailure,
    required TResult Function(String agencyId) updateStateIndicator,
    required TResult Function() loadingFile,
    required TResult Function(String message) error,
    required TResult Function(String nameFile, Uint8List file, String type)
        getFile,
  }) {
    return loadingFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ChatMessagesDataModel> allMyMessage, String message,
            String? orgLogo, String? orgName, String? agencyColor)?
        init,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileSuccess,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileFailure,
    TResult Function(String agencyId)? updateStateIndicator,
    TResult Function()? loadingFile,
    TResult Function(String message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
  }) {
    return loadingFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ChatMessagesDataModel> allMyMessage, String message,
            String? orgLogo, String? orgName, String? agencyColor)?
        init,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileSuccess,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileFailure,
    TResult Function(String agencyId)? updateStateIndicator,
    TResult Function()? loadingFile,
    TResult Function(String message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
    required TResult orElse(),
  }) {
    if (loadingFile != null) {
      return loadingFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChatStateState value) loading,
    required TResult Function(InitChatState value) init,
    required TResult Function(AddMyFileChatSuccessState value) addMyFileSuccess,
    required TResult Function(AddMyFileChatFailureState value) addMyFileFailure,
    required TResult Function(ChatUpdateStateIndicatorState value)
        updateStateIndicator,
    required TResult Function(LoadingFileChatState value) loadingFile,
    required TResult Function(ChatErrorState value) error,
    required TResult Function(GetFileChatState value) getFile,
  }) {
    return loadingFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingChatStateState value)? loading,
    TResult Function(InitChatState value)? init,
    TResult Function(AddMyFileChatSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileChatFailureState value)? addMyFileFailure,
    TResult Function(ChatUpdateStateIndicatorState value)? updateStateIndicator,
    TResult Function(LoadingFileChatState value)? loadingFile,
    TResult Function(ChatErrorState value)? error,
    TResult Function(GetFileChatState value)? getFile,
  }) {
    return loadingFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChatStateState value)? loading,
    TResult Function(InitChatState value)? init,
    TResult Function(AddMyFileChatSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileChatFailureState value)? addMyFileFailure,
    TResult Function(ChatUpdateStateIndicatorState value)? updateStateIndicator,
    TResult Function(LoadingFileChatState value)? loadingFile,
    TResult Function(ChatErrorState value)? error,
    TResult Function(GetFileChatState value)? getFile,
    required TResult orElse(),
  }) {
    if (loadingFile != null) {
      return loadingFile(this);
    }
    return orElse();
  }
}

abstract class LoadingFileChatState implements ChatState {
  const factory LoadingFileChatState() = _$LoadingFileChatState;
}

/// @nodoc
abstract class $ChatErrorStateCopyWith<$Res> {
  factory $ChatErrorStateCopyWith(
          ChatErrorState value, $Res Function(ChatErrorState) then) =
      _$ChatErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ChatErrorStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements $ChatErrorStateCopyWith<$Res> {
  _$ChatErrorStateCopyWithImpl(
      ChatErrorState _value, $Res Function(ChatErrorState) _then)
      : super(_value, (v) => _then(v as ChatErrorState));

  @override
  ChatErrorState get _value => super._value as ChatErrorState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ChatErrorState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatErrorState implements ChatErrorState {
  const _$ChatErrorState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ChatState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatErrorState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ChatErrorStateCopyWith<ChatErrorState> get copyWith =>
      _$ChatErrorStateCopyWithImpl<ChatErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ChatMessagesDataModel> allMyMessage,
            String message,
            String? orgLogo,
            String? orgName,
            String? agencyColor)
        init,
    required TResult Function(ChatMessagesAgencyDataModel model)
        addMyFileSuccess,
    required TResult Function(ChatMessagesAgencyDataModel model)
        addMyFileFailure,
    required TResult Function(String agencyId) updateStateIndicator,
    required TResult Function() loadingFile,
    required TResult Function(String message) error,
    required TResult Function(String nameFile, Uint8List file, String type)
        getFile,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ChatMessagesDataModel> allMyMessage, String message,
            String? orgLogo, String? orgName, String? agencyColor)?
        init,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileSuccess,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileFailure,
    TResult Function(String agencyId)? updateStateIndicator,
    TResult Function()? loadingFile,
    TResult Function(String message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ChatMessagesDataModel> allMyMessage, String message,
            String? orgLogo, String? orgName, String? agencyColor)?
        init,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileSuccess,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileFailure,
    TResult Function(String agencyId)? updateStateIndicator,
    TResult Function()? loadingFile,
    TResult Function(String message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChatStateState value) loading,
    required TResult Function(InitChatState value) init,
    required TResult Function(AddMyFileChatSuccessState value) addMyFileSuccess,
    required TResult Function(AddMyFileChatFailureState value) addMyFileFailure,
    required TResult Function(ChatUpdateStateIndicatorState value)
        updateStateIndicator,
    required TResult Function(LoadingFileChatState value) loadingFile,
    required TResult Function(ChatErrorState value) error,
    required TResult Function(GetFileChatState value) getFile,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingChatStateState value)? loading,
    TResult Function(InitChatState value)? init,
    TResult Function(AddMyFileChatSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileChatFailureState value)? addMyFileFailure,
    TResult Function(ChatUpdateStateIndicatorState value)? updateStateIndicator,
    TResult Function(LoadingFileChatState value)? loadingFile,
    TResult Function(ChatErrorState value)? error,
    TResult Function(GetFileChatState value)? getFile,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChatStateState value)? loading,
    TResult Function(InitChatState value)? init,
    TResult Function(AddMyFileChatSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileChatFailureState value)? addMyFileFailure,
    TResult Function(ChatUpdateStateIndicatorState value)? updateStateIndicator,
    TResult Function(LoadingFileChatState value)? loadingFile,
    TResult Function(ChatErrorState value)? error,
    TResult Function(GetFileChatState value)? getFile,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChatErrorState implements ChatState {
  const factory ChatErrorState({required String message}) = _$ChatErrorState;

  String get message;
  @JsonKey(ignore: true)
  $ChatErrorStateCopyWith<ChatErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFileChatStateCopyWith<$Res> {
  factory $GetFileChatStateCopyWith(
          GetFileChatState value, $Res Function(GetFileChatState) then) =
      _$GetFileChatStateCopyWithImpl<$Res>;
  $Res call({String nameFile, Uint8List file, String type});
}

/// @nodoc
class _$GetFileChatStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements $GetFileChatStateCopyWith<$Res> {
  _$GetFileChatStateCopyWithImpl(
      GetFileChatState _value, $Res Function(GetFileChatState) _then)
      : super(_value, (v) => _then(v as GetFileChatState));

  @override
  GetFileChatState get _value => super._value as GetFileChatState;

  @override
  $Res call({
    Object? nameFile = freezed,
    Object? file = freezed,
    Object? type = freezed,
  }) {
    return _then(GetFileChatState(
      nameFile: nameFile == freezed
          ? _value.nameFile
          : nameFile // ignore: cast_nullable_to_non_nullable
              as String,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetFileChatState implements GetFileChatState {
  const _$GetFileChatState(
      {required this.nameFile, required this.file, required this.type});

  @override
  final String nameFile;
  @override
  final Uint8List file;
  @override
  final String type;

  @override
  String toString() {
    return 'ChatState.getFile(nameFile: $nameFile, file: $file, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetFileChatState &&
            const DeepCollectionEquality().equals(other.nameFile, nameFile) &&
            const DeepCollectionEquality().equals(other.file, file) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nameFile),
      const DeepCollectionEquality().hash(file),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  $GetFileChatStateCopyWith<GetFileChatState> get copyWith =>
      _$GetFileChatStateCopyWithImpl<GetFileChatState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ChatMessagesDataModel> allMyMessage,
            String message,
            String? orgLogo,
            String? orgName,
            String? agencyColor)
        init,
    required TResult Function(ChatMessagesAgencyDataModel model)
        addMyFileSuccess,
    required TResult Function(ChatMessagesAgencyDataModel model)
        addMyFileFailure,
    required TResult Function(String agencyId) updateStateIndicator,
    required TResult Function() loadingFile,
    required TResult Function(String message) error,
    required TResult Function(String nameFile, Uint8List file, String type)
        getFile,
  }) {
    return getFile(nameFile, file, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ChatMessagesDataModel> allMyMessage, String message,
            String? orgLogo, String? orgName, String? agencyColor)?
        init,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileSuccess,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileFailure,
    TResult Function(String agencyId)? updateStateIndicator,
    TResult Function()? loadingFile,
    TResult Function(String message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
  }) {
    return getFile?.call(nameFile, file, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ChatMessagesDataModel> allMyMessage, String message,
            String? orgLogo, String? orgName, String? agencyColor)?
        init,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileSuccess,
    TResult Function(ChatMessagesAgencyDataModel model)? addMyFileFailure,
    TResult Function(String agencyId)? updateStateIndicator,
    TResult Function()? loadingFile,
    TResult Function(String message)? error,
    TResult Function(String nameFile, Uint8List file, String type)? getFile,
    required TResult orElse(),
  }) {
    if (getFile != null) {
      return getFile(nameFile, file, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingChatStateState value) loading,
    required TResult Function(InitChatState value) init,
    required TResult Function(AddMyFileChatSuccessState value) addMyFileSuccess,
    required TResult Function(AddMyFileChatFailureState value) addMyFileFailure,
    required TResult Function(ChatUpdateStateIndicatorState value)
        updateStateIndicator,
    required TResult Function(LoadingFileChatState value) loadingFile,
    required TResult Function(ChatErrorState value) error,
    required TResult Function(GetFileChatState value) getFile,
  }) {
    return getFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingChatStateState value)? loading,
    TResult Function(InitChatState value)? init,
    TResult Function(AddMyFileChatSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileChatFailureState value)? addMyFileFailure,
    TResult Function(ChatUpdateStateIndicatorState value)? updateStateIndicator,
    TResult Function(LoadingFileChatState value)? loadingFile,
    TResult Function(ChatErrorState value)? error,
    TResult Function(GetFileChatState value)? getFile,
  }) {
    return getFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingChatStateState value)? loading,
    TResult Function(InitChatState value)? init,
    TResult Function(AddMyFileChatSuccessState value)? addMyFileSuccess,
    TResult Function(AddMyFileChatFailureState value)? addMyFileFailure,
    TResult Function(ChatUpdateStateIndicatorState value)? updateStateIndicator,
    TResult Function(LoadingFileChatState value)? loadingFile,
    TResult Function(ChatErrorState value)? error,
    TResult Function(GetFileChatState value)? getFile,
    required TResult orElse(),
  }) {
    if (getFile != null) {
      return getFile(this);
    }
    return orElse();
  }
}

abstract class GetFileChatState implements ChatState {
  const factory GetFileChatState(
      {required String nameFile,
      required Uint8List file,
      required String type}) = _$GetFileChatState;

  String get nameFile;
  Uint8List get file;
  String get type;
  @JsonKey(ignore: true)
  $GetFileChatStateCopyWith<GetFileChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
