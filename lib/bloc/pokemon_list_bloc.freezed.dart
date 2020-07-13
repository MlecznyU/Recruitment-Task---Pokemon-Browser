// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'pokemon_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PokemonListEventTearOff {
  const _$PokemonListEventTearOff();

  DataRequested dataRequested() {
    return const DataRequested();
  }

  TileTapped tileTapped({@required Pokemon pokemon}) {
    return TileTapped(
      pokemon: pokemon,
    );
  }
}

// ignore: unused_element
const $PokemonListEvent = _$PokemonListEventTearOff();

mixin _$PokemonListEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result dataRequested(),
    @required Result tileTapped(Pokemon pokemon),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result dataRequested(),
    Result tileTapped(Pokemon pokemon),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result dataRequested(DataRequested value),
    @required Result tileTapped(TileTapped value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result dataRequested(DataRequested value),
    Result tileTapped(TileTapped value),
    @required Result orElse(),
  });
}

abstract class $PokemonListEventCopyWith<$Res> {
  factory $PokemonListEventCopyWith(
          PokemonListEvent value, $Res Function(PokemonListEvent) then) =
      _$PokemonListEventCopyWithImpl<$Res>;
}

class _$PokemonListEventCopyWithImpl<$Res>
    implements $PokemonListEventCopyWith<$Res> {
  _$PokemonListEventCopyWithImpl(this._value, this._then);

  final PokemonListEvent _value;
  // ignore: unused_field
  final $Res Function(PokemonListEvent) _then;
}

abstract class $DataRequestedCopyWith<$Res> {
  factory $DataRequestedCopyWith(
          DataRequested value, $Res Function(DataRequested) then) =
      _$DataRequestedCopyWithImpl<$Res>;
}

class _$DataRequestedCopyWithImpl<$Res>
    extends _$PokemonListEventCopyWithImpl<$Res>
    implements $DataRequestedCopyWith<$Res> {
  _$DataRequestedCopyWithImpl(
      DataRequested _value, $Res Function(DataRequested) _then)
      : super(_value, (v) => _then(v as DataRequested));

  @override
  DataRequested get _value => super._value as DataRequested;
}

class _$DataRequested with DiagnosticableTreeMixin implements DataRequested {
  const _$DataRequested();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PokemonListEvent.dataRequested()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PokemonListEvent.dataRequested'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DataRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result dataRequested(),
    @required Result tileTapped(Pokemon pokemon),
  }) {
    assert(dataRequested != null);
    assert(tileTapped != null);
    return dataRequested();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result dataRequested(),
    Result tileTapped(Pokemon pokemon),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dataRequested != null) {
      return dataRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result dataRequested(DataRequested value),
    @required Result tileTapped(TileTapped value),
  }) {
    assert(dataRequested != null);
    assert(tileTapped != null);
    return dataRequested(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result dataRequested(DataRequested value),
    Result tileTapped(TileTapped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dataRequested != null) {
      return dataRequested(this);
    }
    return orElse();
  }
}

abstract class DataRequested implements PokemonListEvent {
  const factory DataRequested() = _$DataRequested;
}

abstract class $TileTappedCopyWith<$Res> {
  factory $TileTappedCopyWith(
          TileTapped value, $Res Function(TileTapped) then) =
      _$TileTappedCopyWithImpl<$Res>;
  $Res call({Pokemon pokemon});
}

class _$TileTappedCopyWithImpl<$Res>
    extends _$PokemonListEventCopyWithImpl<$Res>
    implements $TileTappedCopyWith<$Res> {
  _$TileTappedCopyWithImpl(TileTapped _value, $Res Function(TileTapped) _then)
      : super(_value, (v) => _then(v as TileTapped));

  @override
  TileTapped get _value => super._value as TileTapped;

  @override
  $Res call({
    Object pokemon = freezed,
  }) {
    return _then(TileTapped(
      pokemon: pokemon == freezed ? _value.pokemon : pokemon as Pokemon,
    ));
  }
}

class _$TileTapped with DiagnosticableTreeMixin implements TileTapped {
  const _$TileTapped({@required this.pokemon}) : assert(pokemon != null);

  @override
  final Pokemon pokemon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PokemonListEvent.tileTapped(pokemon: $pokemon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PokemonListEvent.tileTapped'))
      ..add(DiagnosticsProperty('pokemon', pokemon));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TileTapped &&
            (identical(other.pokemon, pokemon) ||
                const DeepCollectionEquality().equals(other.pokemon, pokemon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pokemon);

  @override
  $TileTappedCopyWith<TileTapped> get copyWith =>
      _$TileTappedCopyWithImpl<TileTapped>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result dataRequested(),
    @required Result tileTapped(Pokemon pokemon),
  }) {
    assert(dataRequested != null);
    assert(tileTapped != null);
    return tileTapped(pokemon);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result dataRequested(),
    Result tileTapped(Pokemon pokemon),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tileTapped != null) {
      return tileTapped(pokemon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result dataRequested(DataRequested value),
    @required Result tileTapped(TileTapped value),
  }) {
    assert(dataRequested != null);
    assert(tileTapped != null);
    return tileTapped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result dataRequested(DataRequested value),
    Result tileTapped(TileTapped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tileTapped != null) {
      return tileTapped(this);
    }
    return orElse();
  }
}

abstract class TileTapped implements PokemonListEvent {
  const factory TileTapped({@required Pokemon pokemon}) = _$TileTapped;

  Pokemon get pokemon;
  $TileTappedCopyWith<TileTapped> get copyWith;
}

class _$PokemonListStateTearOff {
  const _$PokemonListStateTearOff();

  ListInitial listInitial() {
    return const ListInitial();
  }

  PokemonListAvailable pokemonListAvailable(
      {@required List<Pokemon> pokemonList}) {
    return PokemonListAvailable(
      pokemonList: pokemonList,
    );
  }

  PokemonListNotAvailable pokemonListNotAvailable(
      {@required String errorMassage}) {
    return PokemonListNotAvailable(
      errorMassage: errorMassage,
    );
  }
}

// ignore: unused_element
const $PokemonListState = _$PokemonListStateTearOff();

mixin _$PokemonListState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result listInitial(),
    @required Result pokemonListAvailable(List<Pokemon> pokemonList),
    @required Result pokemonListNotAvailable(String errorMassage),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result listInitial(),
    Result pokemonListAvailable(List<Pokemon> pokemonList),
    Result pokemonListNotAvailable(String errorMassage),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result listInitial(ListInitial value),
    @required Result pokemonListAvailable(PokemonListAvailable value),
    @required Result pokemonListNotAvailable(PokemonListNotAvailable value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result listInitial(ListInitial value),
    Result pokemonListAvailable(PokemonListAvailable value),
    Result pokemonListNotAvailable(PokemonListNotAvailable value),
    @required Result orElse(),
  });
}

abstract class $PokemonListStateCopyWith<$Res> {
  factory $PokemonListStateCopyWith(
          PokemonListState value, $Res Function(PokemonListState) then) =
      _$PokemonListStateCopyWithImpl<$Res>;
}

class _$PokemonListStateCopyWithImpl<$Res>
    implements $PokemonListStateCopyWith<$Res> {
  _$PokemonListStateCopyWithImpl(this._value, this._then);

  final PokemonListState _value;
  // ignore: unused_field
  final $Res Function(PokemonListState) _then;
}

abstract class $ListInitialCopyWith<$Res> {
  factory $ListInitialCopyWith(
          ListInitial value, $Res Function(ListInitial) then) =
      _$ListInitialCopyWithImpl<$Res>;
}

class _$ListInitialCopyWithImpl<$Res>
    extends _$PokemonListStateCopyWithImpl<$Res>
    implements $ListInitialCopyWith<$Res> {
  _$ListInitialCopyWithImpl(
      ListInitial _value, $Res Function(ListInitial) _then)
      : super(_value, (v) => _then(v as ListInitial));

  @override
  ListInitial get _value => super._value as ListInitial;
}

class _$ListInitial with DiagnosticableTreeMixin implements ListInitial {
  const _$ListInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PokemonListState.listInitial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PokemonListState.listInitial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ListInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result listInitial(),
    @required Result pokemonListAvailable(List<Pokemon> pokemonList),
    @required Result pokemonListNotAvailable(String errorMassage),
  }) {
    assert(listInitial != null);
    assert(pokemonListAvailable != null);
    assert(pokemonListNotAvailable != null);
    return listInitial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result listInitial(),
    Result pokemonListAvailable(List<Pokemon> pokemonList),
    Result pokemonListNotAvailable(String errorMassage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listInitial != null) {
      return listInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result listInitial(ListInitial value),
    @required Result pokemonListAvailable(PokemonListAvailable value),
    @required Result pokemonListNotAvailable(PokemonListNotAvailable value),
  }) {
    assert(listInitial != null);
    assert(pokemonListAvailable != null);
    assert(pokemonListNotAvailable != null);
    return listInitial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result listInitial(ListInitial value),
    Result pokemonListAvailable(PokemonListAvailable value),
    Result pokemonListNotAvailable(PokemonListNotAvailable value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listInitial != null) {
      return listInitial(this);
    }
    return orElse();
  }
}

abstract class ListInitial implements PokemonListState {
  const factory ListInitial() = _$ListInitial;
}

abstract class $PokemonListAvailableCopyWith<$Res> {
  factory $PokemonListAvailableCopyWith(PokemonListAvailable value,
          $Res Function(PokemonListAvailable) then) =
      _$PokemonListAvailableCopyWithImpl<$Res>;
  $Res call({List<Pokemon> pokemonList});
}

class _$PokemonListAvailableCopyWithImpl<$Res>
    extends _$PokemonListStateCopyWithImpl<$Res>
    implements $PokemonListAvailableCopyWith<$Res> {
  _$PokemonListAvailableCopyWithImpl(
      PokemonListAvailable _value, $Res Function(PokemonListAvailable) _then)
      : super(_value, (v) => _then(v as PokemonListAvailable));

  @override
  PokemonListAvailable get _value => super._value as PokemonListAvailable;

  @override
  $Res call({
    Object pokemonList = freezed,
  }) {
    return _then(PokemonListAvailable(
      pokemonList: pokemonList == freezed
          ? _value.pokemonList
          : pokemonList as List<Pokemon>,
    ));
  }
}

class _$PokemonListAvailable
    with DiagnosticableTreeMixin
    implements PokemonListAvailable {
  const _$PokemonListAvailable({@required this.pokemonList})
      : assert(pokemonList != null);

  @override
  final List<Pokemon> pokemonList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PokemonListState.pokemonListAvailable(pokemonList: $pokemonList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'PokemonListState.pokemonListAvailable'))
      ..add(DiagnosticsProperty('pokemonList', pokemonList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PokemonListAvailable &&
            (identical(other.pokemonList, pokemonList) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonList, pokemonList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pokemonList);

  @override
  $PokemonListAvailableCopyWith<PokemonListAvailable> get copyWith =>
      _$PokemonListAvailableCopyWithImpl<PokemonListAvailable>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result listInitial(),
    @required Result pokemonListAvailable(List<Pokemon> pokemonList),
    @required Result pokemonListNotAvailable(String errorMassage),
  }) {
    assert(listInitial != null);
    assert(pokemonListAvailable != null);
    assert(pokemonListNotAvailable != null);
    return pokemonListAvailable(pokemonList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result listInitial(),
    Result pokemonListAvailable(List<Pokemon> pokemonList),
    Result pokemonListNotAvailable(String errorMassage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pokemonListAvailable != null) {
      return pokemonListAvailable(pokemonList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result listInitial(ListInitial value),
    @required Result pokemonListAvailable(PokemonListAvailable value),
    @required Result pokemonListNotAvailable(PokemonListNotAvailable value),
  }) {
    assert(listInitial != null);
    assert(pokemonListAvailable != null);
    assert(pokemonListNotAvailable != null);
    return pokemonListAvailable(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result listInitial(ListInitial value),
    Result pokemonListAvailable(PokemonListAvailable value),
    Result pokemonListNotAvailable(PokemonListNotAvailable value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pokemonListAvailable != null) {
      return pokemonListAvailable(this);
    }
    return orElse();
  }
}

abstract class PokemonListAvailable implements PokemonListState {
  const factory PokemonListAvailable({@required List<Pokemon> pokemonList}) =
      _$PokemonListAvailable;

  List<Pokemon> get pokemonList;
  $PokemonListAvailableCopyWith<PokemonListAvailable> get copyWith;
}

abstract class $PokemonListNotAvailableCopyWith<$Res> {
  factory $PokemonListNotAvailableCopyWith(PokemonListNotAvailable value,
          $Res Function(PokemonListNotAvailable) then) =
      _$PokemonListNotAvailableCopyWithImpl<$Res>;
  $Res call({String errorMassage});
}

class _$PokemonListNotAvailableCopyWithImpl<$Res>
    extends _$PokemonListStateCopyWithImpl<$Res>
    implements $PokemonListNotAvailableCopyWith<$Res> {
  _$PokemonListNotAvailableCopyWithImpl(PokemonListNotAvailable _value,
      $Res Function(PokemonListNotAvailable) _then)
      : super(_value, (v) => _then(v as PokemonListNotAvailable));

  @override
  PokemonListNotAvailable get _value => super._value as PokemonListNotAvailable;

  @override
  $Res call({
    Object errorMassage = freezed,
  }) {
    return _then(PokemonListNotAvailable(
      errorMassage: errorMassage == freezed
          ? _value.errorMassage
          : errorMassage as String,
    ));
  }
}

class _$PokemonListNotAvailable
    with DiagnosticableTreeMixin
    implements PokemonListNotAvailable {
  const _$PokemonListNotAvailable({@required this.errorMassage})
      : assert(errorMassage != null);

  @override
  final String errorMassage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PokemonListState.pokemonListNotAvailable(errorMassage: $errorMassage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PokemonListState.pokemonListNotAvailable'))
      ..add(DiagnosticsProperty('errorMassage', errorMassage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PokemonListNotAvailable &&
            (identical(other.errorMassage, errorMassage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMassage, errorMassage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMassage);

  @override
  $PokemonListNotAvailableCopyWith<PokemonListNotAvailable> get copyWith =>
      _$PokemonListNotAvailableCopyWithImpl<PokemonListNotAvailable>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result listInitial(),
    @required Result pokemonListAvailable(List<Pokemon> pokemonList),
    @required Result pokemonListNotAvailable(String errorMassage),
  }) {
    assert(listInitial != null);
    assert(pokemonListAvailable != null);
    assert(pokemonListNotAvailable != null);
    return pokemonListNotAvailable(errorMassage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result listInitial(),
    Result pokemonListAvailable(List<Pokemon> pokemonList),
    Result pokemonListNotAvailable(String errorMassage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pokemonListNotAvailable != null) {
      return pokemonListNotAvailable(errorMassage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result listInitial(ListInitial value),
    @required Result pokemonListAvailable(PokemonListAvailable value),
    @required Result pokemonListNotAvailable(PokemonListNotAvailable value),
  }) {
    assert(listInitial != null);
    assert(pokemonListAvailable != null);
    assert(pokemonListNotAvailable != null);
    return pokemonListNotAvailable(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result listInitial(ListInitial value),
    Result pokemonListAvailable(PokemonListAvailable value),
    Result pokemonListNotAvailable(PokemonListNotAvailable value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (pokemonListNotAvailable != null) {
      return pokemonListNotAvailable(this);
    }
    return orElse();
  }
}

abstract class PokemonListNotAvailable implements PokemonListState {
  const factory PokemonListNotAvailable({@required String errorMassage}) =
      _$PokemonListNotAvailable;

  String get errorMassage;
  $PokemonListNotAvailableCopyWith<PokemonListNotAvailable> get copyWith;
}
