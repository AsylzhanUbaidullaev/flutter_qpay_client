// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'json_api_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlaceHolderClientTearOff {
  const _$PlaceHolderClientTearOff();

  _Login login(String phoneNumber) {
    return _Login(
      phoneNumber,
    );
  }

  _PostSmsCode postSmsCode(String phoneNumber, String verificationCode) {
    return _PostSmsCode(
      phoneNumber,
      verificationCode,
    );
  }

  _PreFilling preFilling(String clientName) {
    return _PreFilling(
      clientName,
    );
  }

  _GetHomeInfo getHomeInfo() {
    return const _GetHomeInfo();
  }

  _GetHomePartnerList getHomePartnerList(int cityId) {
    return _GetHomePartnerList(
      cityId,
    );
  }

  _GetCities getCities() {
    return const _GetCities();
  }

  _ChageCity changeCity(int cityID) {
    return _ChageCity(
      cityID,
    );
  }

  _GetSendFriendPartnerList getSendFriendPartnerList(int cityId) {
    return _GetSendFriendPartnerList(
      cityId,
    );
  }

  _SendBonusToFriend sendBonusToFriend(
      int partnerId, String phoneNumber, int bonus) {
    return _SendBonusToFriend(
      partnerId,
      phoneNumber,
      bonus,
    );
  }

  _GetProfileInfo getProfileInfo() {
    return const _GetProfileInfo();
  }

  _LogOut logOut() {
    return const _LogOut();
  }

  _ChangeUserData changeUserData(Map<String, dynamic> data) {
    return _ChangeUserData(
      data,
    );
  }

  _GetAllTransactions getAllTransactions(
      String type, String fromDate, String toDate, int page) {
    return _GetAllTransactions(
      type,
      fromDate,
      toDate,
      page,
    );
  }

  _GetTransactionsTypesCount getTransactionsTypesCount(
      String type, String fromDate, String toDate) {
    return _GetTransactionsTypesCount(
      type,
      fromDate,
      toDate,
    );
  }

  _GetTransactionDetail getTransactionDetails(int id) {
    return _GetTransactionDetail(
      id,
    );
  }

  _GetCategories getCategories() {
    return const _GetCategories();
  }

  _GetSubCategories getSubCategories(int id) {
    return _GetSubCategories(
      id,
    );
  }

  _GetPartnersInSubCategories getPartnersInSubCategories(int id, int cityId) {
    return _GetPartnersInSubCategories(
      id,
      cityId,
    );
  }

  _GetPartnersWithBonuses getPartnersWithBonuses(int cityId) {
    return _GetPartnersWithBonuses(
      cityId,
    );
  }

  _GetDetailedPartnerInfo getDetailedPartnerInfo(int id, int cityId) {
    return _GetDetailedPartnerInfo(
      id,
      cityId,
    );
  }

  _SearchPartner searchPartner(String name, int cityId) {
    return _SearchPartner(
      name,
      cityId,
    );
  }
}

/// @nodoc
const $PlaceHolderClient = _$PlaceHolderClientTearOff();

/// @nodoc
mixin _$PlaceHolderClient {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String verificationCode)
        postSmsCode,
    required TResult Function(String clientName) preFilling,
    required TResult Function() getHomeInfo,
    required TResult Function(int cityId) getHomePartnerList,
    required TResult Function() getCities,
    required TResult Function(int cityID) changeCity,
    required TResult Function(int cityId) getSendFriendPartnerList,
    required TResult Function(int partnerId, String phoneNumber, int bonus)
        sendBonusToFriend,
    required TResult Function() getProfileInfo,
    required TResult Function() logOut,
    required TResult Function(Map<String, dynamic> data) changeUserData,
    required TResult Function(
            String type, String fromDate, String toDate, int page)
        getAllTransactions,
    required TResult Function(String type, String fromDate, String toDate)
        getTransactionsTypesCount,
    required TResult Function(int id) getTransactionDetails,
    required TResult Function() getCategories,
    required TResult Function(int id) getSubCategories,
    required TResult Function(int id, int cityId) getPartnersInSubCategories,
    required TResult Function(int cityId) getPartnersWithBonuses,
    required TResult Function(int id, int cityId) getDetailedPartnerInfo,
    required TResult Function(String name, int cityId) searchPartner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_PostSmsCode value) postSmsCode,
    required TResult Function(_PreFilling value) preFilling,
    required TResult Function(_GetHomeInfo value) getHomeInfo,
    required TResult Function(_GetHomePartnerList value) getHomePartnerList,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_ChageCity value) changeCity,
    required TResult Function(_GetSendFriendPartnerList value)
        getSendFriendPartnerList,
    required TResult Function(_SendBonusToFriend value) sendBonusToFriend,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeUserData value) changeUserData,
    required TResult Function(_GetAllTransactions value) getAllTransactions,
    required TResult Function(_GetTransactionsTypesCount value)
        getTransactionsTypesCount,
    required TResult Function(_GetTransactionDetail value)
        getTransactionDetails,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetPartnersInSubCategories value)
        getPartnersInSubCategories,
    required TResult Function(_GetPartnersWithBonuses value)
        getPartnersWithBonuses,
    required TResult Function(_GetDetailedPartnerInfo value)
        getDetailedPartnerInfo,
    required TResult Function(_SearchPartner value) searchPartner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceHolderClientCopyWith<$Res> {
  factory $PlaceHolderClientCopyWith(
          PlaceHolderClient value, $Res Function(PlaceHolderClient) then) =
      _$PlaceHolderClientCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlaceHolderClientCopyWithImpl<$Res>
    implements $PlaceHolderClientCopyWith<$Res> {
  _$PlaceHolderClientCopyWithImpl(this._value, this._then);

  final PlaceHolderClient _value;
  // ignore: unused_field
  final $Res Function(PlaceHolderClient) _then;
}

/// @nodoc
abstract class _$LoginCopyWith<$Res> {
  factory _$LoginCopyWith(_Login value, $Res Function(_Login) then) =
      __$LoginCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class __$LoginCopyWithImpl<$Res> extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$LoginCopyWith<$Res> {
  __$LoginCopyWithImpl(_Login _value, $Res Function(_Login) _then)
      : super(_value, (v) => _then(v as _Login));

  @override
  _Login get _value => super._value as _Login;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_Login(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Login extends _Login with DiagnosticableTreeMixin {
  const _$_Login(this.phoneNumber) : super._();

  @override
  final String phoneNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceHolderClient.login(phoneNumber: $phoneNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceHolderClient.login'))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Login &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneNumber);

  @JsonKey(ignore: true)
  @override
  _$LoginCopyWith<_Login> get copyWith =>
      __$LoginCopyWithImpl<_Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String verificationCode)
        postSmsCode,
    required TResult Function(String clientName) preFilling,
    required TResult Function() getHomeInfo,
    required TResult Function(int cityId) getHomePartnerList,
    required TResult Function() getCities,
    required TResult Function(int cityID) changeCity,
    required TResult Function(int cityId) getSendFriendPartnerList,
    required TResult Function(int partnerId, String phoneNumber, int bonus)
        sendBonusToFriend,
    required TResult Function() getProfileInfo,
    required TResult Function() logOut,
    required TResult Function(Map<String, dynamic> data) changeUserData,
    required TResult Function(
            String type, String fromDate, String toDate, int page)
        getAllTransactions,
    required TResult Function(String type, String fromDate, String toDate)
        getTransactionsTypesCount,
    required TResult Function(int id) getTransactionDetails,
    required TResult Function() getCategories,
    required TResult Function(int id) getSubCategories,
    required TResult Function(int id, int cityId) getPartnersInSubCategories,
    required TResult Function(int cityId) getPartnersWithBonuses,
    required TResult Function(int id, int cityId) getDetailedPartnerInfo,
    required TResult Function(String name, int cityId) searchPartner,
  }) {
    return login(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
  }) {
    return login?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_PostSmsCode value) postSmsCode,
    required TResult Function(_PreFilling value) preFilling,
    required TResult Function(_GetHomeInfo value) getHomeInfo,
    required TResult Function(_GetHomePartnerList value) getHomePartnerList,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_ChageCity value) changeCity,
    required TResult Function(_GetSendFriendPartnerList value)
        getSendFriendPartnerList,
    required TResult Function(_SendBonusToFriend value) sendBonusToFriend,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeUserData value) changeUserData,
    required TResult Function(_GetAllTransactions value) getAllTransactions,
    required TResult Function(_GetTransactionsTypesCount value)
        getTransactionsTypesCount,
    required TResult Function(_GetTransactionDetail value)
        getTransactionDetails,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetPartnersInSubCategories value)
        getPartnersInSubCategories,
    required TResult Function(_GetPartnersWithBonuses value)
        getPartnersWithBonuses,
    required TResult Function(_GetDetailedPartnerInfo value)
        getDetailedPartnerInfo,
    required TResult Function(_SearchPartner value) searchPartner,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login extends PlaceHolderClient {
  const factory _Login(String phoneNumber) = _$_Login;
  const _Login._() : super._();

  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoginCopyWith<_Login> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PostSmsCodeCopyWith<$Res> {
  factory _$PostSmsCodeCopyWith(
          _PostSmsCode value, $Res Function(_PostSmsCode) then) =
      __$PostSmsCodeCopyWithImpl<$Res>;
  $Res call({String phoneNumber, String verificationCode});
}

/// @nodoc
class __$PostSmsCodeCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$PostSmsCodeCopyWith<$Res> {
  __$PostSmsCodeCopyWithImpl(
      _PostSmsCode _value, $Res Function(_PostSmsCode) _then)
      : super(_value, (v) => _then(v as _PostSmsCode));

  @override
  _PostSmsCode get _value => super._value as _PostSmsCode;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? verificationCode = freezed,
  }) {
    return _then(_PostSmsCode(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      verificationCode == freezed
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PostSmsCode extends _PostSmsCode with DiagnosticableTreeMixin {
  const _$_PostSmsCode(this.phoneNumber, this.verificationCode) : super._();

  @override
  final String phoneNumber;
  @override
  final String verificationCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceHolderClient.postSmsCode(phoneNumber: $phoneNumber, verificationCode: $verificationCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceHolderClient.postSmsCode'))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('verificationCode', verificationCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostSmsCode &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.verificationCode, verificationCode) ||
                const DeepCollectionEquality()
                    .equals(other.verificationCode, verificationCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(verificationCode);

  @JsonKey(ignore: true)
  @override
  _$PostSmsCodeCopyWith<_PostSmsCode> get copyWith =>
      __$PostSmsCodeCopyWithImpl<_PostSmsCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String verificationCode)
        postSmsCode,
    required TResult Function(String clientName) preFilling,
    required TResult Function() getHomeInfo,
    required TResult Function(int cityId) getHomePartnerList,
    required TResult Function() getCities,
    required TResult Function(int cityID) changeCity,
    required TResult Function(int cityId) getSendFriendPartnerList,
    required TResult Function(int partnerId, String phoneNumber, int bonus)
        sendBonusToFriend,
    required TResult Function() getProfileInfo,
    required TResult Function() logOut,
    required TResult Function(Map<String, dynamic> data) changeUserData,
    required TResult Function(
            String type, String fromDate, String toDate, int page)
        getAllTransactions,
    required TResult Function(String type, String fromDate, String toDate)
        getTransactionsTypesCount,
    required TResult Function(int id) getTransactionDetails,
    required TResult Function() getCategories,
    required TResult Function(int id) getSubCategories,
    required TResult Function(int id, int cityId) getPartnersInSubCategories,
    required TResult Function(int cityId) getPartnersWithBonuses,
    required TResult Function(int id, int cityId) getDetailedPartnerInfo,
    required TResult Function(String name, int cityId) searchPartner,
  }) {
    return postSmsCode(phoneNumber, verificationCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
  }) {
    return postSmsCode?.call(phoneNumber, verificationCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
    required TResult orElse(),
  }) {
    if (postSmsCode != null) {
      return postSmsCode(phoneNumber, verificationCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_PostSmsCode value) postSmsCode,
    required TResult Function(_PreFilling value) preFilling,
    required TResult Function(_GetHomeInfo value) getHomeInfo,
    required TResult Function(_GetHomePartnerList value) getHomePartnerList,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_ChageCity value) changeCity,
    required TResult Function(_GetSendFriendPartnerList value)
        getSendFriendPartnerList,
    required TResult Function(_SendBonusToFriend value) sendBonusToFriend,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeUserData value) changeUserData,
    required TResult Function(_GetAllTransactions value) getAllTransactions,
    required TResult Function(_GetTransactionsTypesCount value)
        getTransactionsTypesCount,
    required TResult Function(_GetTransactionDetail value)
        getTransactionDetails,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetPartnersInSubCategories value)
        getPartnersInSubCategories,
    required TResult Function(_GetPartnersWithBonuses value)
        getPartnersWithBonuses,
    required TResult Function(_GetDetailedPartnerInfo value)
        getDetailedPartnerInfo,
    required TResult Function(_SearchPartner value) searchPartner,
  }) {
    return postSmsCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
  }) {
    return postSmsCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
    required TResult orElse(),
  }) {
    if (postSmsCode != null) {
      return postSmsCode(this);
    }
    return orElse();
  }
}

abstract class _PostSmsCode extends PlaceHolderClient {
  const factory _PostSmsCode(String phoneNumber, String verificationCode) =
      _$_PostSmsCode;
  const _PostSmsCode._() : super._();

  String get phoneNumber => throw _privateConstructorUsedError;
  String get verificationCode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PostSmsCodeCopyWith<_PostSmsCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PreFillingCopyWith<$Res> {
  factory _$PreFillingCopyWith(
          _PreFilling value, $Res Function(_PreFilling) then) =
      __$PreFillingCopyWithImpl<$Res>;
  $Res call({String clientName});
}

/// @nodoc
class __$PreFillingCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$PreFillingCopyWith<$Res> {
  __$PreFillingCopyWithImpl(
      _PreFilling _value, $Res Function(_PreFilling) _then)
      : super(_value, (v) => _then(v as _PreFilling));

  @override
  _PreFilling get _value => super._value as _PreFilling;

  @override
  $Res call({
    Object? clientName = freezed,
  }) {
    return _then(_PreFilling(
      clientName == freezed
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PreFilling extends _PreFilling with DiagnosticableTreeMixin {
  const _$_PreFilling(this.clientName) : super._();

  @override
  final String clientName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceHolderClient.preFilling(clientName: $clientName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceHolderClient.preFilling'))
      ..add(DiagnosticsProperty('clientName', clientName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PreFilling &&
            (identical(other.clientName, clientName) ||
                const DeepCollectionEquality()
                    .equals(other.clientName, clientName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(clientName);

  @JsonKey(ignore: true)
  @override
  _$PreFillingCopyWith<_PreFilling> get copyWith =>
      __$PreFillingCopyWithImpl<_PreFilling>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String verificationCode)
        postSmsCode,
    required TResult Function(String clientName) preFilling,
    required TResult Function() getHomeInfo,
    required TResult Function(int cityId) getHomePartnerList,
    required TResult Function() getCities,
    required TResult Function(int cityID) changeCity,
    required TResult Function(int cityId) getSendFriendPartnerList,
    required TResult Function(int partnerId, String phoneNumber, int bonus)
        sendBonusToFriend,
    required TResult Function() getProfileInfo,
    required TResult Function() logOut,
    required TResult Function(Map<String, dynamic> data) changeUserData,
    required TResult Function(
            String type, String fromDate, String toDate, int page)
        getAllTransactions,
    required TResult Function(String type, String fromDate, String toDate)
        getTransactionsTypesCount,
    required TResult Function(int id) getTransactionDetails,
    required TResult Function() getCategories,
    required TResult Function(int id) getSubCategories,
    required TResult Function(int id, int cityId) getPartnersInSubCategories,
    required TResult Function(int cityId) getPartnersWithBonuses,
    required TResult Function(int id, int cityId) getDetailedPartnerInfo,
    required TResult Function(String name, int cityId) searchPartner,
  }) {
    return preFilling(clientName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
  }) {
    return preFilling?.call(clientName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
    required TResult orElse(),
  }) {
    if (preFilling != null) {
      return preFilling(clientName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_PostSmsCode value) postSmsCode,
    required TResult Function(_PreFilling value) preFilling,
    required TResult Function(_GetHomeInfo value) getHomeInfo,
    required TResult Function(_GetHomePartnerList value) getHomePartnerList,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_ChageCity value) changeCity,
    required TResult Function(_GetSendFriendPartnerList value)
        getSendFriendPartnerList,
    required TResult Function(_SendBonusToFriend value) sendBonusToFriend,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeUserData value) changeUserData,
    required TResult Function(_GetAllTransactions value) getAllTransactions,
    required TResult Function(_GetTransactionsTypesCount value)
        getTransactionsTypesCount,
    required TResult Function(_GetTransactionDetail value)
        getTransactionDetails,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetPartnersInSubCategories value)
        getPartnersInSubCategories,
    required TResult Function(_GetPartnersWithBonuses value)
        getPartnersWithBonuses,
    required TResult Function(_GetDetailedPartnerInfo value)
        getDetailedPartnerInfo,
    required TResult Function(_SearchPartner value) searchPartner,
  }) {
    return preFilling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
  }) {
    return preFilling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
    required TResult orElse(),
  }) {
    if (preFilling != null) {
      return preFilling(this);
    }
    return orElse();
  }
}

abstract class _PreFilling extends PlaceHolderClient {
  const factory _PreFilling(String clientName) = _$_PreFilling;
  const _PreFilling._() : super._();

  String get clientName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PreFillingCopyWith<_PreFilling> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetHomeInfoCopyWith<$Res> {
  factory _$GetHomeInfoCopyWith(
          _GetHomeInfo value, $Res Function(_GetHomeInfo) then) =
      __$GetHomeInfoCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetHomeInfoCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$GetHomeInfoCopyWith<$Res> {
  __$GetHomeInfoCopyWithImpl(
      _GetHomeInfo _value, $Res Function(_GetHomeInfo) _then)
      : super(_value, (v) => _then(v as _GetHomeInfo));

  @override
  _GetHomeInfo get _value => super._value as _GetHomeInfo;
}

/// @nodoc

class _$_GetHomeInfo extends _GetHomeInfo with DiagnosticableTreeMixin {
  const _$_GetHomeInfo() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceHolderClient.getHomeInfo()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceHolderClient.getHomeInfo'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetHomeInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String verificationCode)
        postSmsCode,
    required TResult Function(String clientName) preFilling,
    required TResult Function() getHomeInfo,
    required TResult Function(int cityId) getHomePartnerList,
    required TResult Function() getCities,
    required TResult Function(int cityID) changeCity,
    required TResult Function(int cityId) getSendFriendPartnerList,
    required TResult Function(int partnerId, String phoneNumber, int bonus)
        sendBonusToFriend,
    required TResult Function() getProfileInfo,
    required TResult Function() logOut,
    required TResult Function(Map<String, dynamic> data) changeUserData,
    required TResult Function(
            String type, String fromDate, String toDate, int page)
        getAllTransactions,
    required TResult Function(String type, String fromDate, String toDate)
        getTransactionsTypesCount,
    required TResult Function(int id) getTransactionDetails,
    required TResult Function() getCategories,
    required TResult Function(int id) getSubCategories,
    required TResult Function(int id, int cityId) getPartnersInSubCategories,
    required TResult Function(int cityId) getPartnersWithBonuses,
    required TResult Function(int id, int cityId) getDetailedPartnerInfo,
    required TResult Function(String name, int cityId) searchPartner,
  }) {
    return getHomeInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
  }) {
    return getHomeInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
    required TResult orElse(),
  }) {
    if (getHomeInfo != null) {
      return getHomeInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_PostSmsCode value) postSmsCode,
    required TResult Function(_PreFilling value) preFilling,
    required TResult Function(_GetHomeInfo value) getHomeInfo,
    required TResult Function(_GetHomePartnerList value) getHomePartnerList,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_ChageCity value) changeCity,
    required TResult Function(_GetSendFriendPartnerList value)
        getSendFriendPartnerList,
    required TResult Function(_SendBonusToFriend value) sendBonusToFriend,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeUserData value) changeUserData,
    required TResult Function(_GetAllTransactions value) getAllTransactions,
    required TResult Function(_GetTransactionsTypesCount value)
        getTransactionsTypesCount,
    required TResult Function(_GetTransactionDetail value)
        getTransactionDetails,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetPartnersInSubCategories value)
        getPartnersInSubCategories,
    required TResult Function(_GetPartnersWithBonuses value)
        getPartnersWithBonuses,
    required TResult Function(_GetDetailedPartnerInfo value)
        getDetailedPartnerInfo,
    required TResult Function(_SearchPartner value) searchPartner,
  }) {
    return getHomeInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
  }) {
    return getHomeInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
    required TResult orElse(),
  }) {
    if (getHomeInfo != null) {
      return getHomeInfo(this);
    }
    return orElse();
  }
}

abstract class _GetHomeInfo extends PlaceHolderClient {
  const factory _GetHomeInfo() = _$_GetHomeInfo;
  const _GetHomeInfo._() : super._();
}

/// @nodoc
abstract class _$GetHomePartnerListCopyWith<$Res> {
  factory _$GetHomePartnerListCopyWith(
          _GetHomePartnerList value, $Res Function(_GetHomePartnerList) then) =
      __$GetHomePartnerListCopyWithImpl<$Res>;
  $Res call({int cityId});
}

/// @nodoc
class __$GetHomePartnerListCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$GetHomePartnerListCopyWith<$Res> {
  __$GetHomePartnerListCopyWithImpl(
      _GetHomePartnerList _value, $Res Function(_GetHomePartnerList) _then)
      : super(_value, (v) => _then(v as _GetHomePartnerList));

  @override
  _GetHomePartnerList get _value => super._value as _GetHomePartnerList;

  @override
  $Res call({
    Object? cityId = freezed,
  }) {
    return _then(_GetHomePartnerList(
      cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetHomePartnerList extends _GetHomePartnerList
    with DiagnosticableTreeMixin {
  const _$_GetHomePartnerList(this.cityId) : super._();

  @override
  final int cityId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceHolderClient.getHomePartnerList(cityId: $cityId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceHolderClient.getHomePartnerList'))
      ..add(DiagnosticsProperty('cityId', cityId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetHomePartnerList &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cityId);

  @JsonKey(ignore: true)
  @override
  _$GetHomePartnerListCopyWith<_GetHomePartnerList> get copyWith =>
      __$GetHomePartnerListCopyWithImpl<_GetHomePartnerList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String verificationCode)
        postSmsCode,
    required TResult Function(String clientName) preFilling,
    required TResult Function() getHomeInfo,
    required TResult Function(int cityId) getHomePartnerList,
    required TResult Function() getCities,
    required TResult Function(int cityID) changeCity,
    required TResult Function(int cityId) getSendFriendPartnerList,
    required TResult Function(int partnerId, String phoneNumber, int bonus)
        sendBonusToFriend,
    required TResult Function() getProfileInfo,
    required TResult Function() logOut,
    required TResult Function(Map<String, dynamic> data) changeUserData,
    required TResult Function(
            String type, String fromDate, String toDate, int page)
        getAllTransactions,
    required TResult Function(String type, String fromDate, String toDate)
        getTransactionsTypesCount,
    required TResult Function(int id) getTransactionDetails,
    required TResult Function() getCategories,
    required TResult Function(int id) getSubCategories,
    required TResult Function(int id, int cityId) getPartnersInSubCategories,
    required TResult Function(int cityId) getPartnersWithBonuses,
    required TResult Function(int id, int cityId) getDetailedPartnerInfo,
    required TResult Function(String name, int cityId) searchPartner,
  }) {
    return getHomePartnerList(cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
  }) {
    return getHomePartnerList?.call(cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
    required TResult orElse(),
  }) {
    if (getHomePartnerList != null) {
      return getHomePartnerList(cityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_PostSmsCode value) postSmsCode,
    required TResult Function(_PreFilling value) preFilling,
    required TResult Function(_GetHomeInfo value) getHomeInfo,
    required TResult Function(_GetHomePartnerList value) getHomePartnerList,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_ChageCity value) changeCity,
    required TResult Function(_GetSendFriendPartnerList value)
        getSendFriendPartnerList,
    required TResult Function(_SendBonusToFriend value) sendBonusToFriend,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeUserData value) changeUserData,
    required TResult Function(_GetAllTransactions value) getAllTransactions,
    required TResult Function(_GetTransactionsTypesCount value)
        getTransactionsTypesCount,
    required TResult Function(_GetTransactionDetail value)
        getTransactionDetails,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetPartnersInSubCategories value)
        getPartnersInSubCategories,
    required TResult Function(_GetPartnersWithBonuses value)
        getPartnersWithBonuses,
    required TResult Function(_GetDetailedPartnerInfo value)
        getDetailedPartnerInfo,
    required TResult Function(_SearchPartner value) searchPartner,
  }) {
    return getHomePartnerList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
  }) {
    return getHomePartnerList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
    required TResult orElse(),
  }) {
    if (getHomePartnerList != null) {
      return getHomePartnerList(this);
    }
    return orElse();
  }
}

abstract class _GetHomePartnerList extends PlaceHolderClient {
  const factory _GetHomePartnerList(int cityId) = _$_GetHomePartnerList;
  const _GetHomePartnerList._() : super._();

  int get cityId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetHomePartnerListCopyWith<_GetHomePartnerList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetCitiesCopyWith<$Res> {
  factory _$GetCitiesCopyWith(
          _GetCities value, $Res Function(_GetCities) then) =
      __$GetCitiesCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetCitiesCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$GetCitiesCopyWith<$Res> {
  __$GetCitiesCopyWithImpl(_GetCities _value, $Res Function(_GetCities) _then)
      : super(_value, (v) => _then(v as _GetCities));

  @override
  _GetCities get _value => super._value as _GetCities;
}

/// @nodoc

class _$_GetCities extends _GetCities with DiagnosticableTreeMixin {
  const _$_GetCities() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceHolderClient.getCities()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PlaceHolderClient.getCities'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetCities);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String verificationCode)
        postSmsCode,
    required TResult Function(String clientName) preFilling,
    required TResult Function() getHomeInfo,
    required TResult Function(int cityId) getHomePartnerList,
    required TResult Function() getCities,
    required TResult Function(int cityID) changeCity,
    required TResult Function(int cityId) getSendFriendPartnerList,
    required TResult Function(int partnerId, String phoneNumber, int bonus)
        sendBonusToFriend,
    required TResult Function() getProfileInfo,
    required TResult Function() logOut,
    required TResult Function(Map<String, dynamic> data) changeUserData,
    required TResult Function(
            String type, String fromDate, String toDate, int page)
        getAllTransactions,
    required TResult Function(String type, String fromDate, String toDate)
        getTransactionsTypesCount,
    required TResult Function(int id) getTransactionDetails,
    required TResult Function() getCategories,
    required TResult Function(int id) getSubCategories,
    required TResult Function(int id, int cityId) getPartnersInSubCategories,
    required TResult Function(int cityId) getPartnersWithBonuses,
    required TResult Function(int id, int cityId) getDetailedPartnerInfo,
    required TResult Function(String name, int cityId) searchPartner,
  }) {
    return getCities();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
  }) {
    return getCities?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
    required TResult orElse(),
  }) {
    if (getCities != null) {
      return getCities();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_PostSmsCode value) postSmsCode,
    required TResult Function(_PreFilling value) preFilling,
    required TResult Function(_GetHomeInfo value) getHomeInfo,
    required TResult Function(_GetHomePartnerList value) getHomePartnerList,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_ChageCity value) changeCity,
    required TResult Function(_GetSendFriendPartnerList value)
        getSendFriendPartnerList,
    required TResult Function(_SendBonusToFriend value) sendBonusToFriend,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeUserData value) changeUserData,
    required TResult Function(_GetAllTransactions value) getAllTransactions,
    required TResult Function(_GetTransactionsTypesCount value)
        getTransactionsTypesCount,
    required TResult Function(_GetTransactionDetail value)
        getTransactionDetails,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetPartnersInSubCategories value)
        getPartnersInSubCategories,
    required TResult Function(_GetPartnersWithBonuses value)
        getPartnersWithBonuses,
    required TResult Function(_GetDetailedPartnerInfo value)
        getDetailedPartnerInfo,
    required TResult Function(_SearchPartner value) searchPartner,
  }) {
    return getCities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
  }) {
    return getCities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
    required TResult orElse(),
  }) {
    if (getCities != null) {
      return getCities(this);
    }
    return orElse();
  }
}

abstract class _GetCities extends PlaceHolderClient {
  const factory _GetCities() = _$_GetCities;
  const _GetCities._() : super._();
}

/// @nodoc
abstract class _$ChageCityCopyWith<$Res> {
  factory _$ChageCityCopyWith(
          _ChageCity value, $Res Function(_ChageCity) then) =
      __$ChageCityCopyWithImpl<$Res>;
  $Res call({int cityID});
}

/// @nodoc
class __$ChageCityCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$ChageCityCopyWith<$Res> {
  __$ChageCityCopyWithImpl(_ChageCity _value, $Res Function(_ChageCity) _then)
      : super(_value, (v) => _then(v as _ChageCity));

  @override
  _ChageCity get _value => super._value as _ChageCity;

  @override
  $Res call({
    Object? cityID = freezed,
  }) {
    return _then(_ChageCity(
      cityID == freezed
          ? _value.cityID
          : cityID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChageCity extends _ChageCity with DiagnosticableTreeMixin {
  const _$_ChageCity(this.cityID) : super._();

  @override
  final int cityID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceHolderClient.changeCity(cityID: $cityID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceHolderClient.changeCity'))
      ..add(DiagnosticsProperty('cityID', cityID));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChageCity &&
            (identical(other.cityID, cityID) ||
                const DeepCollectionEquality().equals(other.cityID, cityID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cityID);

  @JsonKey(ignore: true)
  @override
  _$ChageCityCopyWith<_ChageCity> get copyWith =>
      __$ChageCityCopyWithImpl<_ChageCity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String verificationCode)
        postSmsCode,
    required TResult Function(String clientName) preFilling,
    required TResult Function() getHomeInfo,
    required TResult Function(int cityId) getHomePartnerList,
    required TResult Function() getCities,
    required TResult Function(int cityID) changeCity,
    required TResult Function(int cityId) getSendFriendPartnerList,
    required TResult Function(int partnerId, String phoneNumber, int bonus)
        sendBonusToFriend,
    required TResult Function() getProfileInfo,
    required TResult Function() logOut,
    required TResult Function(Map<String, dynamic> data) changeUserData,
    required TResult Function(
            String type, String fromDate, String toDate, int page)
        getAllTransactions,
    required TResult Function(String type, String fromDate, String toDate)
        getTransactionsTypesCount,
    required TResult Function(int id) getTransactionDetails,
    required TResult Function() getCategories,
    required TResult Function(int id) getSubCategories,
    required TResult Function(int id, int cityId) getPartnersInSubCategories,
    required TResult Function(int cityId) getPartnersWithBonuses,
    required TResult Function(int id, int cityId) getDetailedPartnerInfo,
    required TResult Function(String name, int cityId) searchPartner,
  }) {
    return changeCity(cityID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
  }) {
    return changeCity?.call(cityID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
    required TResult orElse(),
  }) {
    if (changeCity != null) {
      return changeCity(cityID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_PostSmsCode value) postSmsCode,
    required TResult Function(_PreFilling value) preFilling,
    required TResult Function(_GetHomeInfo value) getHomeInfo,
    required TResult Function(_GetHomePartnerList value) getHomePartnerList,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_ChageCity value) changeCity,
    required TResult Function(_GetSendFriendPartnerList value)
        getSendFriendPartnerList,
    required TResult Function(_SendBonusToFriend value) sendBonusToFriend,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeUserData value) changeUserData,
    required TResult Function(_GetAllTransactions value) getAllTransactions,
    required TResult Function(_GetTransactionsTypesCount value)
        getTransactionsTypesCount,
    required TResult Function(_GetTransactionDetail value)
        getTransactionDetails,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetPartnersInSubCategories value)
        getPartnersInSubCategories,
    required TResult Function(_GetPartnersWithBonuses value)
        getPartnersWithBonuses,
    required TResult Function(_GetDetailedPartnerInfo value)
        getDetailedPartnerInfo,
    required TResult Function(_SearchPartner value) searchPartner,
  }) {
    return changeCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
  }) {
    return changeCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
    required TResult orElse(),
  }) {
    if (changeCity != null) {
      return changeCity(this);
    }
    return orElse();
  }
}

abstract class _ChageCity extends PlaceHolderClient {
  const factory _ChageCity(int cityID) = _$_ChageCity;
  const _ChageCity._() : super._();

  int get cityID => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChageCityCopyWith<_ChageCity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetSendFriendPartnerListCopyWith<$Res> {
  factory _$GetSendFriendPartnerListCopyWith(_GetSendFriendPartnerList value,
          $Res Function(_GetSendFriendPartnerList) then) =
      __$GetSendFriendPartnerListCopyWithImpl<$Res>;
  $Res call({int cityId});
}

/// @nodoc
class __$GetSendFriendPartnerListCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$GetSendFriendPartnerListCopyWith<$Res> {
  __$GetSendFriendPartnerListCopyWithImpl(_GetSendFriendPartnerList _value,
      $Res Function(_GetSendFriendPartnerList) _then)
      : super(_value, (v) => _then(v as _GetSendFriendPartnerList));

  @override
  _GetSendFriendPartnerList get _value =>
      super._value as _GetSendFriendPartnerList;

  @override
  $Res call({
    Object? cityId = freezed,
  }) {
    return _then(_GetSendFriendPartnerList(
      cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetSendFriendPartnerList extends _GetSendFriendPartnerList
    with DiagnosticableTreeMixin {
  const _$_GetSendFriendPartnerList(this.cityId) : super._();

  @override
  final int cityId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceHolderClient.getSendFriendPartnerList(cityId: $cityId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PlaceHolderClient.getSendFriendPartnerList'))
      ..add(DiagnosticsProperty('cityId', cityId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetSendFriendPartnerList &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cityId);

  @JsonKey(ignore: true)
  @override
  _$GetSendFriendPartnerListCopyWith<_GetSendFriendPartnerList> get copyWith =>
      __$GetSendFriendPartnerListCopyWithImpl<_GetSendFriendPartnerList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String verificationCode)
        postSmsCode,
    required TResult Function(String clientName) preFilling,
    required TResult Function() getHomeInfo,
    required TResult Function(int cityId) getHomePartnerList,
    required TResult Function() getCities,
    required TResult Function(int cityID) changeCity,
    required TResult Function(int cityId) getSendFriendPartnerList,
    required TResult Function(int partnerId, String phoneNumber, int bonus)
        sendBonusToFriend,
    required TResult Function() getProfileInfo,
    required TResult Function() logOut,
    required TResult Function(Map<String, dynamic> data) changeUserData,
    required TResult Function(
            String type, String fromDate, String toDate, int page)
        getAllTransactions,
    required TResult Function(String type, String fromDate, String toDate)
        getTransactionsTypesCount,
    required TResult Function(int id) getTransactionDetails,
    required TResult Function() getCategories,
    required TResult Function(int id) getSubCategories,
    required TResult Function(int id, int cityId) getPartnersInSubCategories,
    required TResult Function(int cityId) getPartnersWithBonuses,
    required TResult Function(int id, int cityId) getDetailedPartnerInfo,
    required TResult Function(String name, int cityId) searchPartner,
  }) {
    return getSendFriendPartnerList(cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
  }) {
    return getSendFriendPartnerList?.call(cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
    required TResult orElse(),
  }) {
    if (getSendFriendPartnerList != null) {
      return getSendFriendPartnerList(cityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_PostSmsCode value) postSmsCode,
    required TResult Function(_PreFilling value) preFilling,
    required TResult Function(_GetHomeInfo value) getHomeInfo,
    required TResult Function(_GetHomePartnerList value) getHomePartnerList,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_ChageCity value) changeCity,
    required TResult Function(_GetSendFriendPartnerList value)
        getSendFriendPartnerList,
    required TResult Function(_SendBonusToFriend value) sendBonusToFriend,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeUserData value) changeUserData,
    required TResult Function(_GetAllTransactions value) getAllTransactions,
    required TResult Function(_GetTransactionsTypesCount value)
        getTransactionsTypesCount,
    required TResult Function(_GetTransactionDetail value)
        getTransactionDetails,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetPartnersInSubCategories value)
        getPartnersInSubCategories,
    required TResult Function(_GetPartnersWithBonuses value)
        getPartnersWithBonuses,
    required TResult Function(_GetDetailedPartnerInfo value)
        getDetailedPartnerInfo,
    required TResult Function(_SearchPartner value) searchPartner,
  }) {
    return getSendFriendPartnerList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
  }) {
    return getSendFriendPartnerList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
    required TResult orElse(),
  }) {
    if (getSendFriendPartnerList != null) {
      return getSendFriendPartnerList(this);
    }
    return orElse();
  }
}

abstract class _GetSendFriendPartnerList extends PlaceHolderClient {
  const factory _GetSendFriendPartnerList(int cityId) =
      _$_GetSendFriendPartnerList;
  const _GetSendFriendPartnerList._() : super._();

  int get cityId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetSendFriendPartnerListCopyWith<_GetSendFriendPartnerList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendBonusToFriendCopyWith<$Res> {
  factory _$SendBonusToFriendCopyWith(
          _SendBonusToFriend value, $Res Function(_SendBonusToFriend) then) =
      __$SendBonusToFriendCopyWithImpl<$Res>;
  $Res call({int partnerId, String phoneNumber, int bonus});
}

/// @nodoc
class __$SendBonusToFriendCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$SendBonusToFriendCopyWith<$Res> {
  __$SendBonusToFriendCopyWithImpl(
      _SendBonusToFriend _value, $Res Function(_SendBonusToFriend) _then)
      : super(_value, (v) => _then(v as _SendBonusToFriend));

  @override
  _SendBonusToFriend get _value => super._value as _SendBonusToFriend;

  @override
  $Res call({
    Object? partnerId = freezed,
    Object? phoneNumber = freezed,
    Object? bonus = freezed,
  }) {
    return _then(_SendBonusToFriend(
      partnerId == freezed
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      bonus == freezed
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SendBonusToFriend extends _SendBonusToFriend
    with DiagnosticableTreeMixin {
  const _$_SendBonusToFriend(this.partnerId, this.phoneNumber, this.bonus)
      : super._();

  @override
  final int partnerId;
  @override
  final String phoneNumber;
  @override
  final int bonus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceHolderClient.sendBonusToFriend(partnerId: $partnerId, phoneNumber: $phoneNumber, bonus: $bonus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceHolderClient.sendBonusToFriend'))
      ..add(DiagnosticsProperty('partnerId', partnerId))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('bonus', bonus));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendBonusToFriend &&
            (identical(other.partnerId, partnerId) ||
                const DeepCollectionEquality()
                    .equals(other.partnerId, partnerId)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.bonus, bonus) ||
                const DeepCollectionEquality().equals(other.bonus, bonus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(partnerId) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(bonus);

  @JsonKey(ignore: true)
  @override
  _$SendBonusToFriendCopyWith<_SendBonusToFriend> get copyWith =>
      __$SendBonusToFriendCopyWithImpl<_SendBonusToFriend>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String verificationCode)
        postSmsCode,
    required TResult Function(String clientName) preFilling,
    required TResult Function() getHomeInfo,
    required TResult Function(int cityId) getHomePartnerList,
    required TResult Function() getCities,
    required TResult Function(int cityID) changeCity,
    required TResult Function(int cityId) getSendFriendPartnerList,
    required TResult Function(int partnerId, String phoneNumber, int bonus)
        sendBonusToFriend,
    required TResult Function() getProfileInfo,
    required TResult Function() logOut,
    required TResult Function(Map<String, dynamic> data) changeUserData,
    required TResult Function(
            String type, String fromDate, String toDate, int page)
        getAllTransactions,
    required TResult Function(String type, String fromDate, String toDate)
        getTransactionsTypesCount,
    required TResult Function(int id) getTransactionDetails,
    required TResult Function() getCategories,
    required TResult Function(int id) getSubCategories,
    required TResult Function(int id, int cityId) getPartnersInSubCategories,
    required TResult Function(int cityId) getPartnersWithBonuses,
    required TResult Function(int id, int cityId) getDetailedPartnerInfo,
    required TResult Function(String name, int cityId) searchPartner,
  }) {
    return sendBonusToFriend(partnerId, phoneNumber, bonus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
  }) {
    return sendBonusToFriend?.call(partnerId, phoneNumber, bonus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
    required TResult orElse(),
  }) {
    if (sendBonusToFriend != null) {
      return sendBonusToFriend(partnerId, phoneNumber, bonus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_PostSmsCode value) postSmsCode,
    required TResult Function(_PreFilling value) preFilling,
    required TResult Function(_GetHomeInfo value) getHomeInfo,
    required TResult Function(_GetHomePartnerList value) getHomePartnerList,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_ChageCity value) changeCity,
    required TResult Function(_GetSendFriendPartnerList value)
        getSendFriendPartnerList,
    required TResult Function(_SendBonusToFriend value) sendBonusToFriend,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeUserData value) changeUserData,
    required TResult Function(_GetAllTransactions value) getAllTransactions,
    required TResult Function(_GetTransactionsTypesCount value)
        getTransactionsTypesCount,
    required TResult Function(_GetTransactionDetail value)
        getTransactionDetails,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetPartnersInSubCategories value)
        getPartnersInSubCategories,
    required TResult Function(_GetPartnersWithBonuses value)
        getPartnersWithBonuses,
    required TResult Function(_GetDetailedPartnerInfo value)
        getDetailedPartnerInfo,
    required TResult Function(_SearchPartner value) searchPartner,
  }) {
    return sendBonusToFriend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
  }) {
    return sendBonusToFriend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
    required TResult orElse(),
  }) {
    if (sendBonusToFriend != null) {
      return sendBonusToFriend(this);
    }
    return orElse();
  }
}

abstract class _SendBonusToFriend extends PlaceHolderClient {
  const factory _SendBonusToFriend(
      int partnerId, String phoneNumber, int bonus) = _$_SendBonusToFriend;
  const _SendBonusToFriend._() : super._();

  int get partnerId => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  int get bonus => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SendBonusToFriendCopyWith<_SendBonusToFriend> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetProfileInfoCopyWith<$Res> {
  factory _$GetProfileInfoCopyWith(
          _GetProfileInfo value, $Res Function(_GetProfileInfo) then) =
      __$GetProfileInfoCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetProfileInfoCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$GetProfileInfoCopyWith<$Res> {
  __$GetProfileInfoCopyWithImpl(
      _GetProfileInfo _value, $Res Function(_GetProfileInfo) _then)
      : super(_value, (v) => _then(v as _GetProfileInfo));

  @override
  _GetProfileInfo get _value => super._value as _GetProfileInfo;
}

/// @nodoc

class _$_GetProfileInfo extends _GetProfileInfo with DiagnosticableTreeMixin {
  const _$_GetProfileInfo() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceHolderClient.getProfileInfo()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceHolderClient.getProfileInfo'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetProfileInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String verificationCode)
        postSmsCode,
    required TResult Function(String clientName) preFilling,
    required TResult Function() getHomeInfo,
    required TResult Function(int cityId) getHomePartnerList,
    required TResult Function() getCities,
    required TResult Function(int cityID) changeCity,
    required TResult Function(int cityId) getSendFriendPartnerList,
    required TResult Function(int partnerId, String phoneNumber, int bonus)
        sendBonusToFriend,
    required TResult Function() getProfileInfo,
    required TResult Function() logOut,
    required TResult Function(Map<String, dynamic> data) changeUserData,
    required TResult Function(
            String type, String fromDate, String toDate, int page)
        getAllTransactions,
    required TResult Function(String type, String fromDate, String toDate)
        getTransactionsTypesCount,
    required TResult Function(int id) getTransactionDetails,
    required TResult Function() getCategories,
    required TResult Function(int id) getSubCategories,
    required TResult Function(int id, int cityId) getPartnersInSubCategories,
    required TResult Function(int cityId) getPartnersWithBonuses,
    required TResult Function(int id, int cityId) getDetailedPartnerInfo,
    required TResult Function(String name, int cityId) searchPartner,
  }) {
    return getProfileInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
  }) {
    return getProfileInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
    required TResult orElse(),
  }) {
    if (getProfileInfo != null) {
      return getProfileInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_PostSmsCode value) postSmsCode,
    required TResult Function(_PreFilling value) preFilling,
    required TResult Function(_GetHomeInfo value) getHomeInfo,
    required TResult Function(_GetHomePartnerList value) getHomePartnerList,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_ChageCity value) changeCity,
    required TResult Function(_GetSendFriendPartnerList value)
        getSendFriendPartnerList,
    required TResult Function(_SendBonusToFriend value) sendBonusToFriend,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeUserData value) changeUserData,
    required TResult Function(_GetAllTransactions value) getAllTransactions,
    required TResult Function(_GetTransactionsTypesCount value)
        getTransactionsTypesCount,
    required TResult Function(_GetTransactionDetail value)
        getTransactionDetails,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetPartnersInSubCategories value)
        getPartnersInSubCategories,
    required TResult Function(_GetPartnersWithBonuses value)
        getPartnersWithBonuses,
    required TResult Function(_GetDetailedPartnerInfo value)
        getDetailedPartnerInfo,
    required TResult Function(_SearchPartner value) searchPartner,
  }) {
    return getProfileInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
  }) {
    return getProfileInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
    required TResult orElse(),
  }) {
    if (getProfileInfo != null) {
      return getProfileInfo(this);
    }
    return orElse();
  }
}

abstract class _GetProfileInfo extends PlaceHolderClient {
  const factory _GetProfileInfo() = _$_GetProfileInfo;
  const _GetProfileInfo._() : super._();
}

/// @nodoc
abstract class _$LogOutCopyWith<$Res> {
  factory _$LogOutCopyWith(_LogOut value, $Res Function(_LogOut) then) =
      __$LogOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogOutCopyWithImpl<$Res> extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$LogOutCopyWith<$Res> {
  __$LogOutCopyWithImpl(_LogOut _value, $Res Function(_LogOut) _then)
      : super(_value, (v) => _then(v as _LogOut));

  @override
  _LogOut get _value => super._value as _LogOut;
}

/// @nodoc

class _$_LogOut extends _LogOut with DiagnosticableTreeMixin {
  const _$_LogOut() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceHolderClient.logOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PlaceHolderClient.logOut'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LogOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String verificationCode)
        postSmsCode,
    required TResult Function(String clientName) preFilling,
    required TResult Function() getHomeInfo,
    required TResult Function(int cityId) getHomePartnerList,
    required TResult Function() getCities,
    required TResult Function(int cityID) changeCity,
    required TResult Function(int cityId) getSendFriendPartnerList,
    required TResult Function(int partnerId, String phoneNumber, int bonus)
        sendBonusToFriend,
    required TResult Function() getProfileInfo,
    required TResult Function() logOut,
    required TResult Function(Map<String, dynamic> data) changeUserData,
    required TResult Function(
            String type, String fromDate, String toDate, int page)
        getAllTransactions,
    required TResult Function(String type, String fromDate, String toDate)
        getTransactionsTypesCount,
    required TResult Function(int id) getTransactionDetails,
    required TResult Function() getCategories,
    required TResult Function(int id) getSubCategories,
    required TResult Function(int id, int cityId) getPartnersInSubCategories,
    required TResult Function(int cityId) getPartnersWithBonuses,
    required TResult Function(int id, int cityId) getDetailedPartnerInfo,
    required TResult Function(String name, int cityId) searchPartner,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_PostSmsCode value) postSmsCode,
    required TResult Function(_PreFilling value) preFilling,
    required TResult Function(_GetHomeInfo value) getHomeInfo,
    required TResult Function(_GetHomePartnerList value) getHomePartnerList,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_ChageCity value) changeCity,
    required TResult Function(_GetSendFriendPartnerList value)
        getSendFriendPartnerList,
    required TResult Function(_SendBonusToFriend value) sendBonusToFriend,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeUserData value) changeUserData,
    required TResult Function(_GetAllTransactions value) getAllTransactions,
    required TResult Function(_GetTransactionsTypesCount value)
        getTransactionsTypesCount,
    required TResult Function(_GetTransactionDetail value)
        getTransactionDetails,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetPartnersInSubCategories value)
        getPartnersInSubCategories,
    required TResult Function(_GetPartnersWithBonuses value)
        getPartnersWithBonuses,
    required TResult Function(_GetDetailedPartnerInfo value)
        getDetailedPartnerInfo,
    required TResult Function(_SearchPartner value) searchPartner,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut extends PlaceHolderClient {
  const factory _LogOut() = _$_LogOut;
  const _LogOut._() : super._();
}

/// @nodoc
abstract class _$ChangeUserDataCopyWith<$Res> {
  factory _$ChangeUserDataCopyWith(
          _ChangeUserData value, $Res Function(_ChangeUserData) then) =
      __$ChangeUserDataCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class __$ChangeUserDataCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$ChangeUserDataCopyWith<$Res> {
  __$ChangeUserDataCopyWithImpl(
      _ChangeUserData _value, $Res Function(_ChangeUserData) _then)
      : super(_value, (v) => _then(v as _ChangeUserData));

  @override
  _ChangeUserData get _value => super._value as _ChangeUserData;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_ChangeUserData(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_ChangeUserData extends _ChangeUserData with DiagnosticableTreeMixin {
  const _$_ChangeUserData(this.data) : super._();

  @override
  final Map<String, dynamic> data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceHolderClient.changeUserData(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceHolderClient.changeUserData'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeUserData &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$ChangeUserDataCopyWith<_ChangeUserData> get copyWith =>
      __$ChangeUserDataCopyWithImpl<_ChangeUserData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String verificationCode)
        postSmsCode,
    required TResult Function(String clientName) preFilling,
    required TResult Function() getHomeInfo,
    required TResult Function(int cityId) getHomePartnerList,
    required TResult Function() getCities,
    required TResult Function(int cityID) changeCity,
    required TResult Function(int cityId) getSendFriendPartnerList,
    required TResult Function(int partnerId, String phoneNumber, int bonus)
        sendBonusToFriend,
    required TResult Function() getProfileInfo,
    required TResult Function() logOut,
    required TResult Function(Map<String, dynamic> data) changeUserData,
    required TResult Function(
            String type, String fromDate, String toDate, int page)
        getAllTransactions,
    required TResult Function(String type, String fromDate, String toDate)
        getTransactionsTypesCount,
    required TResult Function(int id) getTransactionDetails,
    required TResult Function() getCategories,
    required TResult Function(int id) getSubCategories,
    required TResult Function(int id, int cityId) getPartnersInSubCategories,
    required TResult Function(int cityId) getPartnersWithBonuses,
    required TResult Function(int id, int cityId) getDetailedPartnerInfo,
    required TResult Function(String name, int cityId) searchPartner,
  }) {
    return changeUserData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
  }) {
    return changeUserData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
    required TResult orElse(),
  }) {
    if (changeUserData != null) {
      return changeUserData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_PostSmsCode value) postSmsCode,
    required TResult Function(_PreFilling value) preFilling,
    required TResult Function(_GetHomeInfo value) getHomeInfo,
    required TResult Function(_GetHomePartnerList value) getHomePartnerList,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_ChageCity value) changeCity,
    required TResult Function(_GetSendFriendPartnerList value)
        getSendFriendPartnerList,
    required TResult Function(_SendBonusToFriend value) sendBonusToFriend,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeUserData value) changeUserData,
    required TResult Function(_GetAllTransactions value) getAllTransactions,
    required TResult Function(_GetTransactionsTypesCount value)
        getTransactionsTypesCount,
    required TResult Function(_GetTransactionDetail value)
        getTransactionDetails,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetPartnersInSubCategories value)
        getPartnersInSubCategories,
    required TResult Function(_GetPartnersWithBonuses value)
        getPartnersWithBonuses,
    required TResult Function(_GetDetailedPartnerInfo value)
        getDetailedPartnerInfo,
    required TResult Function(_SearchPartner value) searchPartner,
  }) {
    return changeUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
  }) {
    return changeUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
    required TResult orElse(),
  }) {
    if (changeUserData != null) {
      return changeUserData(this);
    }
    return orElse();
  }
}

abstract class _ChangeUserData extends PlaceHolderClient {
  const factory _ChangeUserData(Map<String, dynamic> data) = _$_ChangeUserData;
  const _ChangeUserData._() : super._();

  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeUserDataCopyWith<_ChangeUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetAllTransactionsCopyWith<$Res> {
  factory _$GetAllTransactionsCopyWith(
          _GetAllTransactions value, $Res Function(_GetAllTransactions) then) =
      __$GetAllTransactionsCopyWithImpl<$Res>;
  $Res call({String type, String fromDate, String toDate, int page});
}

/// @nodoc
class __$GetAllTransactionsCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$GetAllTransactionsCopyWith<$Res> {
  __$GetAllTransactionsCopyWithImpl(
      _GetAllTransactions _value, $Res Function(_GetAllTransactions) _then)
      : super(_value, (v) => _then(v as _GetAllTransactions));

  @override
  _GetAllTransactions get _value => super._value as _GetAllTransactions;

  @override
  $Res call({
    Object? type = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? page = freezed,
  }) {
    return _then(_GetAllTransactions(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      fromDate == freezed
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate == freezed
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetAllTransactions extends _GetAllTransactions
    with DiagnosticableTreeMixin {
  const _$_GetAllTransactions(this.type, this.fromDate, this.toDate, this.page)
      : super._();

  @override
  final String type;
  @override
  final String fromDate;
  @override
  final String toDate;
  @override
  final int page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceHolderClient.getAllTransactions(type: $type, fromDate: $fromDate, toDate: $toDate, page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceHolderClient.getAllTransactions'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('fromDate', fromDate))
      ..add(DiagnosticsProperty('toDate', toDate))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAllTransactions &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.fromDate, fromDate) ||
                const DeepCollectionEquality()
                    .equals(other.fromDate, fromDate)) &&
            (identical(other.toDate, toDate) ||
                const DeepCollectionEquality().equals(other.toDate, toDate)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(fromDate) ^
      const DeepCollectionEquality().hash(toDate) ^
      const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  _$GetAllTransactionsCopyWith<_GetAllTransactions> get copyWith =>
      __$GetAllTransactionsCopyWithImpl<_GetAllTransactions>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String verificationCode)
        postSmsCode,
    required TResult Function(String clientName) preFilling,
    required TResult Function() getHomeInfo,
    required TResult Function(int cityId) getHomePartnerList,
    required TResult Function() getCities,
    required TResult Function(int cityID) changeCity,
    required TResult Function(int cityId) getSendFriendPartnerList,
    required TResult Function(int partnerId, String phoneNumber, int bonus)
        sendBonusToFriend,
    required TResult Function() getProfileInfo,
    required TResult Function() logOut,
    required TResult Function(Map<String, dynamic> data) changeUserData,
    required TResult Function(
            String type, String fromDate, String toDate, int page)
        getAllTransactions,
    required TResult Function(String type, String fromDate, String toDate)
        getTransactionsTypesCount,
    required TResult Function(int id) getTransactionDetails,
    required TResult Function() getCategories,
    required TResult Function(int id) getSubCategories,
    required TResult Function(int id, int cityId) getPartnersInSubCategories,
    required TResult Function(int cityId) getPartnersWithBonuses,
    required TResult Function(int id, int cityId) getDetailedPartnerInfo,
    required TResult Function(String name, int cityId) searchPartner,
  }) {
    return getAllTransactions(type, fromDate, toDate, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
  }) {
    return getAllTransactions?.call(type, fromDate, toDate, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
    required TResult orElse(),
  }) {
    if (getAllTransactions != null) {
      return getAllTransactions(type, fromDate, toDate, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_PostSmsCode value) postSmsCode,
    required TResult Function(_PreFilling value) preFilling,
    required TResult Function(_GetHomeInfo value) getHomeInfo,
    required TResult Function(_GetHomePartnerList value) getHomePartnerList,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_ChageCity value) changeCity,
    required TResult Function(_GetSendFriendPartnerList value)
        getSendFriendPartnerList,
    required TResult Function(_SendBonusToFriend value) sendBonusToFriend,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeUserData value) changeUserData,
    required TResult Function(_GetAllTransactions value) getAllTransactions,
    required TResult Function(_GetTransactionsTypesCount value)
        getTransactionsTypesCount,
    required TResult Function(_GetTransactionDetail value)
        getTransactionDetails,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetPartnersInSubCategories value)
        getPartnersInSubCategories,
    required TResult Function(_GetPartnersWithBonuses value)
        getPartnersWithBonuses,
    required TResult Function(_GetDetailedPartnerInfo value)
        getDetailedPartnerInfo,
    required TResult Function(_SearchPartner value) searchPartner,
  }) {
    return getAllTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
  }) {
    return getAllTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
    required TResult orElse(),
  }) {
    if (getAllTransactions != null) {
      return getAllTransactions(this);
    }
    return orElse();
  }
}

abstract class _GetAllTransactions extends PlaceHolderClient {
  const factory _GetAllTransactions(
          String type, String fromDate, String toDate, int page) =
      _$_GetAllTransactions;
  const _GetAllTransactions._() : super._();

  String get type => throw _privateConstructorUsedError;
  String get fromDate => throw _privateConstructorUsedError;
  String get toDate => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetAllTransactionsCopyWith<_GetAllTransactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetTransactionsTypesCountCopyWith<$Res> {
  factory _$GetTransactionsTypesCountCopyWith(_GetTransactionsTypesCount value,
          $Res Function(_GetTransactionsTypesCount) then) =
      __$GetTransactionsTypesCountCopyWithImpl<$Res>;
  $Res call({String type, String fromDate, String toDate});
}

/// @nodoc
class __$GetTransactionsTypesCountCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$GetTransactionsTypesCountCopyWith<$Res> {
  __$GetTransactionsTypesCountCopyWithImpl(_GetTransactionsTypesCount _value,
      $Res Function(_GetTransactionsTypesCount) _then)
      : super(_value, (v) => _then(v as _GetTransactionsTypesCount));

  @override
  _GetTransactionsTypesCount get _value =>
      super._value as _GetTransactionsTypesCount;

  @override
  $Res call({
    Object? type = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
  }) {
    return _then(_GetTransactionsTypesCount(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      fromDate == freezed
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate == freezed
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetTransactionsTypesCount extends _GetTransactionsTypesCount
    with DiagnosticableTreeMixin {
  const _$_GetTransactionsTypesCount(this.type, this.fromDate, this.toDate)
      : super._();

  @override
  final String type;
  @override
  final String fromDate;
  @override
  final String toDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceHolderClient.getTransactionsTypesCount(type: $type, fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PlaceHolderClient.getTransactionsTypesCount'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('fromDate', fromDate))
      ..add(DiagnosticsProperty('toDate', toDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetTransactionsTypesCount &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.fromDate, fromDate) ||
                const DeepCollectionEquality()
                    .equals(other.fromDate, fromDate)) &&
            (identical(other.toDate, toDate) ||
                const DeepCollectionEquality().equals(other.toDate, toDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(fromDate) ^
      const DeepCollectionEquality().hash(toDate);

  @JsonKey(ignore: true)
  @override
  _$GetTransactionsTypesCountCopyWith<_GetTransactionsTypesCount>
      get copyWith =>
          __$GetTransactionsTypesCountCopyWithImpl<_GetTransactionsTypesCount>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String verificationCode)
        postSmsCode,
    required TResult Function(String clientName) preFilling,
    required TResult Function() getHomeInfo,
    required TResult Function(int cityId) getHomePartnerList,
    required TResult Function() getCities,
    required TResult Function(int cityID) changeCity,
    required TResult Function(int cityId) getSendFriendPartnerList,
    required TResult Function(int partnerId, String phoneNumber, int bonus)
        sendBonusToFriend,
    required TResult Function() getProfileInfo,
    required TResult Function() logOut,
    required TResult Function(Map<String, dynamic> data) changeUserData,
    required TResult Function(
            String type, String fromDate, String toDate, int page)
        getAllTransactions,
    required TResult Function(String type, String fromDate, String toDate)
        getTransactionsTypesCount,
    required TResult Function(int id) getTransactionDetails,
    required TResult Function() getCategories,
    required TResult Function(int id) getSubCategories,
    required TResult Function(int id, int cityId) getPartnersInSubCategories,
    required TResult Function(int cityId) getPartnersWithBonuses,
    required TResult Function(int id, int cityId) getDetailedPartnerInfo,
    required TResult Function(String name, int cityId) searchPartner,
  }) {
    return getTransactionsTypesCount(type, fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
  }) {
    return getTransactionsTypesCount?.call(type, fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
    required TResult orElse(),
  }) {
    if (getTransactionsTypesCount != null) {
      return getTransactionsTypesCount(type, fromDate, toDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_PostSmsCode value) postSmsCode,
    required TResult Function(_PreFilling value) preFilling,
    required TResult Function(_GetHomeInfo value) getHomeInfo,
    required TResult Function(_GetHomePartnerList value) getHomePartnerList,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_ChageCity value) changeCity,
    required TResult Function(_GetSendFriendPartnerList value)
        getSendFriendPartnerList,
    required TResult Function(_SendBonusToFriend value) sendBonusToFriend,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeUserData value) changeUserData,
    required TResult Function(_GetAllTransactions value) getAllTransactions,
    required TResult Function(_GetTransactionsTypesCount value)
        getTransactionsTypesCount,
    required TResult Function(_GetTransactionDetail value)
        getTransactionDetails,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetPartnersInSubCategories value)
        getPartnersInSubCategories,
    required TResult Function(_GetPartnersWithBonuses value)
        getPartnersWithBonuses,
    required TResult Function(_GetDetailedPartnerInfo value)
        getDetailedPartnerInfo,
    required TResult Function(_SearchPartner value) searchPartner,
  }) {
    return getTransactionsTypesCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
  }) {
    return getTransactionsTypesCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
    required TResult orElse(),
  }) {
    if (getTransactionsTypesCount != null) {
      return getTransactionsTypesCount(this);
    }
    return orElse();
  }
}

abstract class _GetTransactionsTypesCount extends PlaceHolderClient {
  const factory _GetTransactionsTypesCount(
          String type, String fromDate, String toDate) =
      _$_GetTransactionsTypesCount;
  const _GetTransactionsTypesCount._() : super._();

  String get type => throw _privateConstructorUsedError;
  String get fromDate => throw _privateConstructorUsedError;
  String get toDate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetTransactionsTypesCountCopyWith<_GetTransactionsTypesCount>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetTransactionDetailCopyWith<$Res> {
  factory _$GetTransactionDetailCopyWith(_GetTransactionDetail value,
          $Res Function(_GetTransactionDetail) then) =
      __$GetTransactionDetailCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$GetTransactionDetailCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$GetTransactionDetailCopyWith<$Res> {
  __$GetTransactionDetailCopyWithImpl(
      _GetTransactionDetail _value, $Res Function(_GetTransactionDetail) _then)
      : super(_value, (v) => _then(v as _GetTransactionDetail));

  @override
  _GetTransactionDetail get _value => super._value as _GetTransactionDetail;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_GetTransactionDetail(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetTransactionDetail extends _GetTransactionDetail
    with DiagnosticableTreeMixin {
  const _$_GetTransactionDetail(this.id) : super._();

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceHolderClient.getTransactionDetails(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PlaceHolderClient.getTransactionDetails'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetTransactionDetail &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$GetTransactionDetailCopyWith<_GetTransactionDetail> get copyWith =>
      __$GetTransactionDetailCopyWithImpl<_GetTransactionDetail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String verificationCode)
        postSmsCode,
    required TResult Function(String clientName) preFilling,
    required TResult Function() getHomeInfo,
    required TResult Function(int cityId) getHomePartnerList,
    required TResult Function() getCities,
    required TResult Function(int cityID) changeCity,
    required TResult Function(int cityId) getSendFriendPartnerList,
    required TResult Function(int partnerId, String phoneNumber, int bonus)
        sendBonusToFriend,
    required TResult Function() getProfileInfo,
    required TResult Function() logOut,
    required TResult Function(Map<String, dynamic> data) changeUserData,
    required TResult Function(
            String type, String fromDate, String toDate, int page)
        getAllTransactions,
    required TResult Function(String type, String fromDate, String toDate)
        getTransactionsTypesCount,
    required TResult Function(int id) getTransactionDetails,
    required TResult Function() getCategories,
    required TResult Function(int id) getSubCategories,
    required TResult Function(int id, int cityId) getPartnersInSubCategories,
    required TResult Function(int cityId) getPartnersWithBonuses,
    required TResult Function(int id, int cityId) getDetailedPartnerInfo,
    required TResult Function(String name, int cityId) searchPartner,
  }) {
    return getTransactionDetails(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
  }) {
    return getTransactionDetails?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
    required TResult orElse(),
  }) {
    if (getTransactionDetails != null) {
      return getTransactionDetails(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_PostSmsCode value) postSmsCode,
    required TResult Function(_PreFilling value) preFilling,
    required TResult Function(_GetHomeInfo value) getHomeInfo,
    required TResult Function(_GetHomePartnerList value) getHomePartnerList,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_ChageCity value) changeCity,
    required TResult Function(_GetSendFriendPartnerList value)
        getSendFriendPartnerList,
    required TResult Function(_SendBonusToFriend value) sendBonusToFriend,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeUserData value) changeUserData,
    required TResult Function(_GetAllTransactions value) getAllTransactions,
    required TResult Function(_GetTransactionsTypesCount value)
        getTransactionsTypesCount,
    required TResult Function(_GetTransactionDetail value)
        getTransactionDetails,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetPartnersInSubCategories value)
        getPartnersInSubCategories,
    required TResult Function(_GetPartnersWithBonuses value)
        getPartnersWithBonuses,
    required TResult Function(_GetDetailedPartnerInfo value)
        getDetailedPartnerInfo,
    required TResult Function(_SearchPartner value) searchPartner,
  }) {
    return getTransactionDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
  }) {
    return getTransactionDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
    required TResult orElse(),
  }) {
    if (getTransactionDetails != null) {
      return getTransactionDetails(this);
    }
    return orElse();
  }
}

abstract class _GetTransactionDetail extends PlaceHolderClient {
  const factory _GetTransactionDetail(int id) = _$_GetTransactionDetail;
  const _GetTransactionDetail._() : super._();

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetTransactionDetailCopyWith<_GetTransactionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetCategoriesCopyWith<$Res> {
  factory _$GetCategoriesCopyWith(
          _GetCategories value, $Res Function(_GetCategories) then) =
      __$GetCategoriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetCategoriesCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$GetCategoriesCopyWith<$Res> {
  __$GetCategoriesCopyWithImpl(
      _GetCategories _value, $Res Function(_GetCategories) _then)
      : super(_value, (v) => _then(v as _GetCategories));

  @override
  _GetCategories get _value => super._value as _GetCategories;
}

/// @nodoc

class _$_GetCategories extends _GetCategories with DiagnosticableTreeMixin {
  const _$_GetCategories() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceHolderClient.getCategories()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceHolderClient.getCategories'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetCategories);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String verificationCode)
        postSmsCode,
    required TResult Function(String clientName) preFilling,
    required TResult Function() getHomeInfo,
    required TResult Function(int cityId) getHomePartnerList,
    required TResult Function() getCities,
    required TResult Function(int cityID) changeCity,
    required TResult Function(int cityId) getSendFriendPartnerList,
    required TResult Function(int partnerId, String phoneNumber, int bonus)
        sendBonusToFriend,
    required TResult Function() getProfileInfo,
    required TResult Function() logOut,
    required TResult Function(Map<String, dynamic> data) changeUserData,
    required TResult Function(
            String type, String fromDate, String toDate, int page)
        getAllTransactions,
    required TResult Function(String type, String fromDate, String toDate)
        getTransactionsTypesCount,
    required TResult Function(int id) getTransactionDetails,
    required TResult Function() getCategories,
    required TResult Function(int id) getSubCategories,
    required TResult Function(int id, int cityId) getPartnersInSubCategories,
    required TResult Function(int cityId) getPartnersWithBonuses,
    required TResult Function(int id, int cityId) getDetailedPartnerInfo,
    required TResult Function(String name, int cityId) searchPartner,
  }) {
    return getCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
  }) {
    return getCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_PostSmsCode value) postSmsCode,
    required TResult Function(_PreFilling value) preFilling,
    required TResult Function(_GetHomeInfo value) getHomeInfo,
    required TResult Function(_GetHomePartnerList value) getHomePartnerList,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_ChageCity value) changeCity,
    required TResult Function(_GetSendFriendPartnerList value)
        getSendFriendPartnerList,
    required TResult Function(_SendBonusToFriend value) sendBonusToFriend,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeUserData value) changeUserData,
    required TResult Function(_GetAllTransactions value) getAllTransactions,
    required TResult Function(_GetTransactionsTypesCount value)
        getTransactionsTypesCount,
    required TResult Function(_GetTransactionDetail value)
        getTransactionDetails,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetPartnersInSubCategories value)
        getPartnersInSubCategories,
    required TResult Function(_GetPartnersWithBonuses value)
        getPartnersWithBonuses,
    required TResult Function(_GetDetailedPartnerInfo value)
        getDetailedPartnerInfo,
    required TResult Function(_SearchPartner value) searchPartner,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
  }) {
    return getCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class _GetCategories extends PlaceHolderClient {
  const factory _GetCategories() = _$_GetCategories;
  const _GetCategories._() : super._();
}

/// @nodoc
abstract class _$GetSubCategoriesCopyWith<$Res> {
  factory _$GetSubCategoriesCopyWith(
          _GetSubCategories value, $Res Function(_GetSubCategories) then) =
      __$GetSubCategoriesCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$GetSubCategoriesCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$GetSubCategoriesCopyWith<$Res> {
  __$GetSubCategoriesCopyWithImpl(
      _GetSubCategories _value, $Res Function(_GetSubCategories) _then)
      : super(_value, (v) => _then(v as _GetSubCategories));

  @override
  _GetSubCategories get _value => super._value as _GetSubCategories;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_GetSubCategories(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetSubCategories extends _GetSubCategories
    with DiagnosticableTreeMixin {
  const _$_GetSubCategories(this.id) : super._();

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceHolderClient.getSubCategories(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceHolderClient.getSubCategories'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetSubCategories &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$GetSubCategoriesCopyWith<_GetSubCategories> get copyWith =>
      __$GetSubCategoriesCopyWithImpl<_GetSubCategories>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String verificationCode)
        postSmsCode,
    required TResult Function(String clientName) preFilling,
    required TResult Function() getHomeInfo,
    required TResult Function(int cityId) getHomePartnerList,
    required TResult Function() getCities,
    required TResult Function(int cityID) changeCity,
    required TResult Function(int cityId) getSendFriendPartnerList,
    required TResult Function(int partnerId, String phoneNumber, int bonus)
        sendBonusToFriend,
    required TResult Function() getProfileInfo,
    required TResult Function() logOut,
    required TResult Function(Map<String, dynamic> data) changeUserData,
    required TResult Function(
            String type, String fromDate, String toDate, int page)
        getAllTransactions,
    required TResult Function(String type, String fromDate, String toDate)
        getTransactionsTypesCount,
    required TResult Function(int id) getTransactionDetails,
    required TResult Function() getCategories,
    required TResult Function(int id) getSubCategories,
    required TResult Function(int id, int cityId) getPartnersInSubCategories,
    required TResult Function(int cityId) getPartnersWithBonuses,
    required TResult Function(int id, int cityId) getDetailedPartnerInfo,
    required TResult Function(String name, int cityId) searchPartner,
  }) {
    return getSubCategories(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
  }) {
    return getSubCategories?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
    required TResult orElse(),
  }) {
    if (getSubCategories != null) {
      return getSubCategories(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_PostSmsCode value) postSmsCode,
    required TResult Function(_PreFilling value) preFilling,
    required TResult Function(_GetHomeInfo value) getHomeInfo,
    required TResult Function(_GetHomePartnerList value) getHomePartnerList,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_ChageCity value) changeCity,
    required TResult Function(_GetSendFriendPartnerList value)
        getSendFriendPartnerList,
    required TResult Function(_SendBonusToFriend value) sendBonusToFriend,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeUserData value) changeUserData,
    required TResult Function(_GetAllTransactions value) getAllTransactions,
    required TResult Function(_GetTransactionsTypesCount value)
        getTransactionsTypesCount,
    required TResult Function(_GetTransactionDetail value)
        getTransactionDetails,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetPartnersInSubCategories value)
        getPartnersInSubCategories,
    required TResult Function(_GetPartnersWithBonuses value)
        getPartnersWithBonuses,
    required TResult Function(_GetDetailedPartnerInfo value)
        getDetailedPartnerInfo,
    required TResult Function(_SearchPartner value) searchPartner,
  }) {
    return getSubCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
  }) {
    return getSubCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
    required TResult orElse(),
  }) {
    if (getSubCategories != null) {
      return getSubCategories(this);
    }
    return orElse();
  }
}

abstract class _GetSubCategories extends PlaceHolderClient {
  const factory _GetSubCategories(int id) = _$_GetSubCategories;
  const _GetSubCategories._() : super._();

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetSubCategoriesCopyWith<_GetSubCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetPartnersInSubCategoriesCopyWith<$Res> {
  factory _$GetPartnersInSubCategoriesCopyWith(
          _GetPartnersInSubCategories value,
          $Res Function(_GetPartnersInSubCategories) then) =
      __$GetPartnersInSubCategoriesCopyWithImpl<$Res>;
  $Res call({int id, int cityId});
}

/// @nodoc
class __$GetPartnersInSubCategoriesCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$GetPartnersInSubCategoriesCopyWith<$Res> {
  __$GetPartnersInSubCategoriesCopyWithImpl(_GetPartnersInSubCategories _value,
      $Res Function(_GetPartnersInSubCategories) _then)
      : super(_value, (v) => _then(v as _GetPartnersInSubCategories));

  @override
  _GetPartnersInSubCategories get _value =>
      super._value as _GetPartnersInSubCategories;

  @override
  $Res call({
    Object? id = freezed,
    Object? cityId = freezed,
  }) {
    return _then(_GetPartnersInSubCategories(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetPartnersInSubCategories extends _GetPartnersInSubCategories
    with DiagnosticableTreeMixin {
  const _$_GetPartnersInSubCategories(this.id, this.cityId) : super._();

  @override
  final int id;
  @override
  final int cityId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceHolderClient.getPartnersInSubCategories(id: $id, cityId: $cityId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PlaceHolderClient.getPartnersInSubCategories'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('cityId', cityId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPartnersInSubCategories &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(cityId);

  @JsonKey(ignore: true)
  @override
  _$GetPartnersInSubCategoriesCopyWith<_GetPartnersInSubCategories>
      get copyWith => __$GetPartnersInSubCategoriesCopyWithImpl<
          _GetPartnersInSubCategories>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String verificationCode)
        postSmsCode,
    required TResult Function(String clientName) preFilling,
    required TResult Function() getHomeInfo,
    required TResult Function(int cityId) getHomePartnerList,
    required TResult Function() getCities,
    required TResult Function(int cityID) changeCity,
    required TResult Function(int cityId) getSendFriendPartnerList,
    required TResult Function(int partnerId, String phoneNumber, int bonus)
        sendBonusToFriend,
    required TResult Function() getProfileInfo,
    required TResult Function() logOut,
    required TResult Function(Map<String, dynamic> data) changeUserData,
    required TResult Function(
            String type, String fromDate, String toDate, int page)
        getAllTransactions,
    required TResult Function(String type, String fromDate, String toDate)
        getTransactionsTypesCount,
    required TResult Function(int id) getTransactionDetails,
    required TResult Function() getCategories,
    required TResult Function(int id) getSubCategories,
    required TResult Function(int id, int cityId) getPartnersInSubCategories,
    required TResult Function(int cityId) getPartnersWithBonuses,
    required TResult Function(int id, int cityId) getDetailedPartnerInfo,
    required TResult Function(String name, int cityId) searchPartner,
  }) {
    return getPartnersInSubCategories(id, cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
  }) {
    return getPartnersInSubCategories?.call(id, cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
    required TResult orElse(),
  }) {
    if (getPartnersInSubCategories != null) {
      return getPartnersInSubCategories(id, cityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_PostSmsCode value) postSmsCode,
    required TResult Function(_PreFilling value) preFilling,
    required TResult Function(_GetHomeInfo value) getHomeInfo,
    required TResult Function(_GetHomePartnerList value) getHomePartnerList,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_ChageCity value) changeCity,
    required TResult Function(_GetSendFriendPartnerList value)
        getSendFriendPartnerList,
    required TResult Function(_SendBonusToFriend value) sendBonusToFriend,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeUserData value) changeUserData,
    required TResult Function(_GetAllTransactions value) getAllTransactions,
    required TResult Function(_GetTransactionsTypesCount value)
        getTransactionsTypesCount,
    required TResult Function(_GetTransactionDetail value)
        getTransactionDetails,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetPartnersInSubCategories value)
        getPartnersInSubCategories,
    required TResult Function(_GetPartnersWithBonuses value)
        getPartnersWithBonuses,
    required TResult Function(_GetDetailedPartnerInfo value)
        getDetailedPartnerInfo,
    required TResult Function(_SearchPartner value) searchPartner,
  }) {
    return getPartnersInSubCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
  }) {
    return getPartnersInSubCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
    required TResult orElse(),
  }) {
    if (getPartnersInSubCategories != null) {
      return getPartnersInSubCategories(this);
    }
    return orElse();
  }
}

abstract class _GetPartnersInSubCategories extends PlaceHolderClient {
  const factory _GetPartnersInSubCategories(int id, int cityId) =
      _$_GetPartnersInSubCategories;
  const _GetPartnersInSubCategories._() : super._();

  int get id => throw _privateConstructorUsedError;
  int get cityId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetPartnersInSubCategoriesCopyWith<_GetPartnersInSubCategories>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetPartnersWithBonusesCopyWith<$Res> {
  factory _$GetPartnersWithBonusesCopyWith(_GetPartnersWithBonuses value,
          $Res Function(_GetPartnersWithBonuses) then) =
      __$GetPartnersWithBonusesCopyWithImpl<$Res>;
  $Res call({int cityId});
}

/// @nodoc
class __$GetPartnersWithBonusesCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$GetPartnersWithBonusesCopyWith<$Res> {
  __$GetPartnersWithBonusesCopyWithImpl(_GetPartnersWithBonuses _value,
      $Res Function(_GetPartnersWithBonuses) _then)
      : super(_value, (v) => _then(v as _GetPartnersWithBonuses));

  @override
  _GetPartnersWithBonuses get _value => super._value as _GetPartnersWithBonuses;

  @override
  $Res call({
    Object? cityId = freezed,
  }) {
    return _then(_GetPartnersWithBonuses(
      cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetPartnersWithBonuses extends _GetPartnersWithBonuses
    with DiagnosticableTreeMixin {
  const _$_GetPartnersWithBonuses(this.cityId) : super._();

  @override
  final int cityId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceHolderClient.getPartnersWithBonuses(cityId: $cityId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PlaceHolderClient.getPartnersWithBonuses'))
      ..add(DiagnosticsProperty('cityId', cityId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPartnersWithBonuses &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cityId);

  @JsonKey(ignore: true)
  @override
  _$GetPartnersWithBonusesCopyWith<_GetPartnersWithBonuses> get copyWith =>
      __$GetPartnersWithBonusesCopyWithImpl<_GetPartnersWithBonuses>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String verificationCode)
        postSmsCode,
    required TResult Function(String clientName) preFilling,
    required TResult Function() getHomeInfo,
    required TResult Function(int cityId) getHomePartnerList,
    required TResult Function() getCities,
    required TResult Function(int cityID) changeCity,
    required TResult Function(int cityId) getSendFriendPartnerList,
    required TResult Function(int partnerId, String phoneNumber, int bonus)
        sendBonusToFriend,
    required TResult Function() getProfileInfo,
    required TResult Function() logOut,
    required TResult Function(Map<String, dynamic> data) changeUserData,
    required TResult Function(
            String type, String fromDate, String toDate, int page)
        getAllTransactions,
    required TResult Function(String type, String fromDate, String toDate)
        getTransactionsTypesCount,
    required TResult Function(int id) getTransactionDetails,
    required TResult Function() getCategories,
    required TResult Function(int id) getSubCategories,
    required TResult Function(int id, int cityId) getPartnersInSubCategories,
    required TResult Function(int cityId) getPartnersWithBonuses,
    required TResult Function(int id, int cityId) getDetailedPartnerInfo,
    required TResult Function(String name, int cityId) searchPartner,
  }) {
    return getPartnersWithBonuses(cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
  }) {
    return getPartnersWithBonuses?.call(cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
    required TResult orElse(),
  }) {
    if (getPartnersWithBonuses != null) {
      return getPartnersWithBonuses(cityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_PostSmsCode value) postSmsCode,
    required TResult Function(_PreFilling value) preFilling,
    required TResult Function(_GetHomeInfo value) getHomeInfo,
    required TResult Function(_GetHomePartnerList value) getHomePartnerList,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_ChageCity value) changeCity,
    required TResult Function(_GetSendFriendPartnerList value)
        getSendFriendPartnerList,
    required TResult Function(_SendBonusToFriend value) sendBonusToFriend,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeUserData value) changeUserData,
    required TResult Function(_GetAllTransactions value) getAllTransactions,
    required TResult Function(_GetTransactionsTypesCount value)
        getTransactionsTypesCount,
    required TResult Function(_GetTransactionDetail value)
        getTransactionDetails,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetPartnersInSubCategories value)
        getPartnersInSubCategories,
    required TResult Function(_GetPartnersWithBonuses value)
        getPartnersWithBonuses,
    required TResult Function(_GetDetailedPartnerInfo value)
        getDetailedPartnerInfo,
    required TResult Function(_SearchPartner value) searchPartner,
  }) {
    return getPartnersWithBonuses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
  }) {
    return getPartnersWithBonuses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
    required TResult orElse(),
  }) {
    if (getPartnersWithBonuses != null) {
      return getPartnersWithBonuses(this);
    }
    return orElse();
  }
}

abstract class _GetPartnersWithBonuses extends PlaceHolderClient {
  const factory _GetPartnersWithBonuses(int cityId) = _$_GetPartnersWithBonuses;
  const _GetPartnersWithBonuses._() : super._();

  int get cityId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetPartnersWithBonusesCopyWith<_GetPartnersWithBonuses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetDetailedPartnerInfoCopyWith<$Res> {
  factory _$GetDetailedPartnerInfoCopyWith(_GetDetailedPartnerInfo value,
          $Res Function(_GetDetailedPartnerInfo) then) =
      __$GetDetailedPartnerInfoCopyWithImpl<$Res>;
  $Res call({int id, int cityId});
}

/// @nodoc
class __$GetDetailedPartnerInfoCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$GetDetailedPartnerInfoCopyWith<$Res> {
  __$GetDetailedPartnerInfoCopyWithImpl(_GetDetailedPartnerInfo _value,
      $Res Function(_GetDetailedPartnerInfo) _then)
      : super(_value, (v) => _then(v as _GetDetailedPartnerInfo));

  @override
  _GetDetailedPartnerInfo get _value => super._value as _GetDetailedPartnerInfo;

  @override
  $Res call({
    Object? id = freezed,
    Object? cityId = freezed,
  }) {
    return _then(_GetDetailedPartnerInfo(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetDetailedPartnerInfo extends _GetDetailedPartnerInfo
    with DiagnosticableTreeMixin {
  const _$_GetDetailedPartnerInfo(this.id, this.cityId) : super._();

  @override
  final int id;
  @override
  final int cityId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceHolderClient.getDetailedPartnerInfo(id: $id, cityId: $cityId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PlaceHolderClient.getDetailedPartnerInfo'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('cityId', cityId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetDetailedPartnerInfo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(cityId);

  @JsonKey(ignore: true)
  @override
  _$GetDetailedPartnerInfoCopyWith<_GetDetailedPartnerInfo> get copyWith =>
      __$GetDetailedPartnerInfoCopyWithImpl<_GetDetailedPartnerInfo>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String verificationCode)
        postSmsCode,
    required TResult Function(String clientName) preFilling,
    required TResult Function() getHomeInfo,
    required TResult Function(int cityId) getHomePartnerList,
    required TResult Function() getCities,
    required TResult Function(int cityID) changeCity,
    required TResult Function(int cityId) getSendFriendPartnerList,
    required TResult Function(int partnerId, String phoneNumber, int bonus)
        sendBonusToFriend,
    required TResult Function() getProfileInfo,
    required TResult Function() logOut,
    required TResult Function(Map<String, dynamic> data) changeUserData,
    required TResult Function(
            String type, String fromDate, String toDate, int page)
        getAllTransactions,
    required TResult Function(String type, String fromDate, String toDate)
        getTransactionsTypesCount,
    required TResult Function(int id) getTransactionDetails,
    required TResult Function() getCategories,
    required TResult Function(int id) getSubCategories,
    required TResult Function(int id, int cityId) getPartnersInSubCategories,
    required TResult Function(int cityId) getPartnersWithBonuses,
    required TResult Function(int id, int cityId) getDetailedPartnerInfo,
    required TResult Function(String name, int cityId) searchPartner,
  }) {
    return getDetailedPartnerInfo(id, cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
  }) {
    return getDetailedPartnerInfo?.call(id, cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
    required TResult orElse(),
  }) {
    if (getDetailedPartnerInfo != null) {
      return getDetailedPartnerInfo(id, cityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_PostSmsCode value) postSmsCode,
    required TResult Function(_PreFilling value) preFilling,
    required TResult Function(_GetHomeInfo value) getHomeInfo,
    required TResult Function(_GetHomePartnerList value) getHomePartnerList,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_ChageCity value) changeCity,
    required TResult Function(_GetSendFriendPartnerList value)
        getSendFriendPartnerList,
    required TResult Function(_SendBonusToFriend value) sendBonusToFriend,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeUserData value) changeUserData,
    required TResult Function(_GetAllTransactions value) getAllTransactions,
    required TResult Function(_GetTransactionsTypesCount value)
        getTransactionsTypesCount,
    required TResult Function(_GetTransactionDetail value)
        getTransactionDetails,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetPartnersInSubCategories value)
        getPartnersInSubCategories,
    required TResult Function(_GetPartnersWithBonuses value)
        getPartnersWithBonuses,
    required TResult Function(_GetDetailedPartnerInfo value)
        getDetailedPartnerInfo,
    required TResult Function(_SearchPartner value) searchPartner,
  }) {
    return getDetailedPartnerInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
  }) {
    return getDetailedPartnerInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
    required TResult orElse(),
  }) {
    if (getDetailedPartnerInfo != null) {
      return getDetailedPartnerInfo(this);
    }
    return orElse();
  }
}

abstract class _GetDetailedPartnerInfo extends PlaceHolderClient {
  const factory _GetDetailedPartnerInfo(int id, int cityId) =
      _$_GetDetailedPartnerInfo;
  const _GetDetailedPartnerInfo._() : super._();

  int get id => throw _privateConstructorUsedError;
  int get cityId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetDetailedPartnerInfoCopyWith<_GetDetailedPartnerInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchPartnerCopyWith<$Res> {
  factory _$SearchPartnerCopyWith(
          _SearchPartner value, $Res Function(_SearchPartner) then) =
      __$SearchPartnerCopyWithImpl<$Res>;
  $Res call({String name, int cityId});
}

/// @nodoc
class __$SearchPartnerCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$SearchPartnerCopyWith<$Res> {
  __$SearchPartnerCopyWithImpl(
      _SearchPartner _value, $Res Function(_SearchPartner) _then)
      : super(_value, (v) => _then(v as _SearchPartner));

  @override
  _SearchPartner get _value => super._value as _SearchPartner;

  @override
  $Res call({
    Object? name = freezed,
    Object? cityId = freezed,
  }) {
    return _then(_SearchPartner(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SearchPartner extends _SearchPartner with DiagnosticableTreeMixin {
  const _$_SearchPartner(this.name, this.cityId) : super._();

  @override
  final String name;
  @override
  final int cityId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceHolderClient.searchPartner(name: $name, cityId: $cityId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceHolderClient.searchPartner'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('cityId', cityId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchPartner &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(cityId);

  @JsonKey(ignore: true)
  @override
  _$SearchPartnerCopyWith<_SearchPartner> get copyWith =>
      __$SearchPartnerCopyWithImpl<_SearchPartner>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String verificationCode)
        postSmsCode,
    required TResult Function(String clientName) preFilling,
    required TResult Function() getHomeInfo,
    required TResult Function(int cityId) getHomePartnerList,
    required TResult Function() getCities,
    required TResult Function(int cityID) changeCity,
    required TResult Function(int cityId) getSendFriendPartnerList,
    required TResult Function(int partnerId, String phoneNumber, int bonus)
        sendBonusToFriend,
    required TResult Function() getProfileInfo,
    required TResult Function() logOut,
    required TResult Function(Map<String, dynamic> data) changeUserData,
    required TResult Function(
            String type, String fromDate, String toDate, int page)
        getAllTransactions,
    required TResult Function(String type, String fromDate, String toDate)
        getTransactionsTypesCount,
    required TResult Function(int id) getTransactionDetails,
    required TResult Function() getCategories,
    required TResult Function(int id) getSubCategories,
    required TResult Function(int id, int cityId) getPartnersInSubCategories,
    required TResult Function(int cityId) getPartnersWithBonuses,
    required TResult Function(int id, int cityId) getDetailedPartnerInfo,
    required TResult Function(String name, int cityId) searchPartner,
  }) {
    return searchPartner(name, cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
  }) {
    return searchPartner?.call(name, cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String verificationCode)? postSmsCode,
    TResult Function(String clientName)? preFilling,
    TResult Function()? getHomeInfo,
    TResult Function(int cityId)? getHomePartnerList,
    TResult Function()? getCities,
    TResult Function(int cityID)? changeCity,
    TResult Function(int cityId)? getSendFriendPartnerList,
    TResult Function(int partnerId, String phoneNumber, int bonus)?
        sendBonusToFriend,
    TResult Function()? getProfileInfo,
    TResult Function()? logOut,
    TResult Function(Map<String, dynamic> data)? changeUserData,
    TResult Function(String type, String fromDate, String toDate, int page)?
        getAllTransactions,
    TResult Function(String type, String fromDate, String toDate)?
        getTransactionsTypesCount,
    TResult Function(int id)? getTransactionDetails,
    TResult Function()? getCategories,
    TResult Function(int id)? getSubCategories,
    TResult Function(int id, int cityId)? getPartnersInSubCategories,
    TResult Function(int cityId)? getPartnersWithBonuses,
    TResult Function(int id, int cityId)? getDetailedPartnerInfo,
    TResult Function(String name, int cityId)? searchPartner,
    required TResult orElse(),
  }) {
    if (searchPartner != null) {
      return searchPartner(name, cityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_PostSmsCode value) postSmsCode,
    required TResult Function(_PreFilling value) preFilling,
    required TResult Function(_GetHomeInfo value) getHomeInfo,
    required TResult Function(_GetHomePartnerList value) getHomePartnerList,
    required TResult Function(_GetCities value) getCities,
    required TResult Function(_ChageCity value) changeCity,
    required TResult Function(_GetSendFriendPartnerList value)
        getSendFriendPartnerList,
    required TResult Function(_SendBonusToFriend value) sendBonusToFriend,
    required TResult Function(_GetProfileInfo value) getProfileInfo,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ChangeUserData value) changeUserData,
    required TResult Function(_GetAllTransactions value) getAllTransactions,
    required TResult Function(_GetTransactionsTypesCount value)
        getTransactionsTypesCount,
    required TResult Function(_GetTransactionDetail value)
        getTransactionDetails,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetPartnersInSubCategories value)
        getPartnersInSubCategories,
    required TResult Function(_GetPartnersWithBonuses value)
        getPartnersWithBonuses,
    required TResult Function(_GetDetailedPartnerInfo value)
        getDetailedPartnerInfo,
    required TResult Function(_SearchPartner value) searchPartner,
  }) {
    return searchPartner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
  }) {
    return searchPartner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_PostSmsCode value)? postSmsCode,
    TResult Function(_PreFilling value)? preFilling,
    TResult Function(_GetHomeInfo value)? getHomeInfo,
    TResult Function(_GetHomePartnerList value)? getHomePartnerList,
    TResult Function(_GetCities value)? getCities,
    TResult Function(_ChageCity value)? changeCity,
    TResult Function(_GetSendFriendPartnerList value)? getSendFriendPartnerList,
    TResult Function(_SendBonusToFriend value)? sendBonusToFriend,
    TResult Function(_GetProfileInfo value)? getProfileInfo,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ChangeUserData value)? changeUserData,
    TResult Function(_GetAllTransactions value)? getAllTransactions,
    TResult Function(_GetTransactionsTypesCount value)?
        getTransactionsTypesCount,
    TResult Function(_GetTransactionDetail value)? getTransactionDetails,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetPartnersInSubCategories value)?
        getPartnersInSubCategories,
    TResult Function(_GetPartnersWithBonuses value)? getPartnersWithBonuses,
    TResult Function(_GetDetailedPartnerInfo value)? getDetailedPartnerInfo,
    TResult Function(_SearchPartner value)? searchPartner,
    required TResult orElse(),
  }) {
    if (searchPartner != null) {
      return searchPartner(this);
    }
    return orElse();
  }
}

abstract class _SearchPartner extends PlaceHolderClient {
  const factory _SearchPartner(String name, int cityId) = _$_SearchPartner;
  const _SearchPartner._() : super._();

  String get name => throw _privateConstructorUsedError;
  int get cityId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchPartnerCopyWith<_SearchPartner> get copyWith =>
      throw _privateConstructorUsedError;
}
