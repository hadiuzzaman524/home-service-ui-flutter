// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductCategoryModel {
  String get title => throw _privateConstructorUsedError;
  IconData get iconUrl => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCategoryModelCopyWith<ProductCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryModelCopyWith<$Res> {
  factory $ProductCategoryModelCopyWith(ProductCategoryModel value,
          $Res Function(ProductCategoryModel) then) =
      _$ProductCategoryModelCopyWithImpl<$Res, ProductCategoryModel>;
  @useResult
  $Res call({String title, IconData iconUrl, Color color});
}

/// @nodoc
class _$ProductCategoryModelCopyWithImpl<$Res,
        $Val extends ProductCategoryModel>
    implements $ProductCategoryModelCopyWith<$Res> {
  _$ProductCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? iconUrl = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as IconData,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductCategoryModelCopyWith<$Res>
    implements $ProductCategoryModelCopyWith<$Res> {
  factory _$$_ProductCategoryModelCopyWith(_$_ProductCategoryModel value,
          $Res Function(_$_ProductCategoryModel) then) =
      __$$_ProductCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, IconData iconUrl, Color color});
}

/// @nodoc
class __$$_ProductCategoryModelCopyWithImpl<$Res>
    extends _$ProductCategoryModelCopyWithImpl<$Res, _$_ProductCategoryModel>
    implements _$$_ProductCategoryModelCopyWith<$Res> {
  __$$_ProductCategoryModelCopyWithImpl(_$_ProductCategoryModel _value,
      $Res Function(_$_ProductCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? iconUrl = null,
    Object? color = null,
  }) {
    return _then(_$_ProductCategoryModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as IconData,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_ProductCategoryModel implements _ProductCategoryModel {
  _$_ProductCategoryModel(
      {required this.title, required this.iconUrl, required this.color});

  @override
  final String title;
  @override
  final IconData iconUrl;
  @override
  final Color color;

  @override
  String toString() {
    return 'ProductCategoryModel(title: $title, iconUrl: $iconUrl, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductCategoryModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, iconUrl, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCategoryModelCopyWith<_$_ProductCategoryModel> get copyWith =>
      __$$_ProductCategoryModelCopyWithImpl<_$_ProductCategoryModel>(
          this, _$identity);
}

abstract class _ProductCategoryModel implements ProductCategoryModel {
  factory _ProductCategoryModel(
      {required final String title,
      required final IconData iconUrl,
      required final Color color}) = _$_ProductCategoryModel;

  @override
  String get title;
  @override
  IconData get iconUrl;
  @override
  Color get color;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCategoryModelCopyWith<_$_ProductCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
