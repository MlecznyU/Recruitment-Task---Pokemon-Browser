// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class MoorTypeData extends DataClass implements Insertable<MoorTypeData> {
  final int id;
  final String typeName;
  MoorTypeData({@required this.id, @required this.typeName});
  factory MoorTypeData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return MoorTypeData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      typeName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}type_name']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || typeName != null) {
      map['type_name'] = Variable<String>(typeName);
    }
    return map;
  }

  MoorTypeCompanion toCompanion(bool nullToAbsent) {
    return MoorTypeCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      typeName: typeName == null && nullToAbsent
          ? const Value.absent()
          : Value(typeName),
    );
  }

  factory MoorTypeData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorTypeData(
      id: serializer.fromJson<int>(json['id']),
      typeName: serializer.fromJson<String>(json['typeName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'typeName': serializer.toJson<String>(typeName),
    };
  }

  MoorTypeData copyWith({int id, String typeName}) => MoorTypeData(
        id: id ?? this.id,
        typeName: typeName ?? this.typeName,
      );
  @override
  String toString() {
    return (StringBuffer('MoorTypeData(')
          ..write('id: $id, ')
          ..write('typeName: $typeName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, typeName.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MoorTypeData &&
          other.id == this.id &&
          other.typeName == this.typeName);
}

class MoorTypeCompanion extends UpdateCompanion<MoorTypeData> {
  final Value<int> id;
  final Value<String> typeName;
  const MoorTypeCompanion({
    this.id = const Value.absent(),
    this.typeName = const Value.absent(),
  });
  MoorTypeCompanion.insert({
    this.id = const Value.absent(),
    @required String typeName,
  }) : typeName = Value(typeName);
  static Insertable<MoorTypeData> custom({
    Expression<int> id,
    Expression<String> typeName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (typeName != null) 'type_name': typeName,
    });
  }

  MoorTypeCompanion copyWith({Value<int> id, Value<String> typeName}) {
    return MoorTypeCompanion(
      id: id ?? this.id,
      typeName: typeName ?? this.typeName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (typeName.present) {
      map['type_name'] = Variable<String>(typeName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorTypeCompanion(')
          ..write('id: $id, ')
          ..write('typeName: $typeName')
          ..write(')'))
        .toString();
  }
}

class $MoorTypeTable extends MoorType
    with TableInfo<$MoorTypeTable, MoorTypeData> {
  final GeneratedDatabase _db;
  final String _alias;
  $MoorTypeTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _typeNameMeta = const VerificationMeta('typeName');
  GeneratedTextColumn _typeName;
  @override
  GeneratedTextColumn get typeName => _typeName ??= _constructTypeName();
  GeneratedTextColumn _constructTypeName() {
    return GeneratedTextColumn(
      'type_name',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, typeName];
  @override
  $MoorTypeTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'moor_type';
  @override
  final String actualTableName = 'moor_type';
  @override
  VerificationContext validateIntegrity(Insertable<MoorTypeData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('type_name')) {
      context.handle(_typeNameMeta,
          typeName.isAcceptableOrUnknown(data['type_name'], _typeNameMeta));
    } else if (isInserting) {
      context.missing(_typeNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoorTypeData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MoorTypeData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MoorTypeTable createAlias(String alias) {
    return $MoorTypeTable(_db, alias);
  }
}

class MoorPokemonBaseInfoData extends DataClass
    implements Insertable<MoorPokemonBaseInfoData> {
  final int id;
  final String name;
  final int exp;
  final int weight;
  final int height;
  final String sprite;
  MoorPokemonBaseInfoData(
      {@required this.id,
      @required this.name,
      @required this.exp,
      @required this.weight,
      @required this.height,
      @required this.sprite});
  factory MoorPokemonBaseInfoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return MoorPokemonBaseInfoData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      exp: intType.mapFromDatabaseResponse(data['${effectivePrefix}exp']),
      weight: intType.mapFromDatabaseResponse(data['${effectivePrefix}weight']),
      height: intType.mapFromDatabaseResponse(data['${effectivePrefix}height']),
      sprite:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}sprite']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || exp != null) {
      map['exp'] = Variable<int>(exp);
    }
    if (!nullToAbsent || weight != null) {
      map['weight'] = Variable<int>(weight);
    }
    if (!nullToAbsent || height != null) {
      map['height'] = Variable<int>(height);
    }
    if (!nullToAbsent || sprite != null) {
      map['sprite'] = Variable<String>(sprite);
    }
    return map;
  }

  MoorPokemonBaseInfoCompanion toCompanion(bool nullToAbsent) {
    return MoorPokemonBaseInfoCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      exp: exp == null && nullToAbsent ? const Value.absent() : Value(exp),
      weight:
          weight == null && nullToAbsent ? const Value.absent() : Value(weight),
      height:
          height == null && nullToAbsent ? const Value.absent() : Value(height),
      sprite:
          sprite == null && nullToAbsent ? const Value.absent() : Value(sprite),
    );
  }

  factory MoorPokemonBaseInfoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorPokemonBaseInfoData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      exp: serializer.fromJson<int>(json['exp']),
      weight: serializer.fromJson<int>(json['weight']),
      height: serializer.fromJson<int>(json['height']),
      sprite: serializer.fromJson<String>(json['sprite']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'exp': serializer.toJson<int>(exp),
      'weight': serializer.toJson<int>(weight),
      'height': serializer.toJson<int>(height),
      'sprite': serializer.toJson<String>(sprite),
    };
  }

  MoorPokemonBaseInfoData copyWith(
          {int id,
          String name,
          int exp,
          int weight,
          int height,
          String sprite}) =>
      MoorPokemonBaseInfoData(
        id: id ?? this.id,
        name: name ?? this.name,
        exp: exp ?? this.exp,
        weight: weight ?? this.weight,
        height: height ?? this.height,
        sprite: sprite ?? this.sprite,
      );
  @override
  String toString() {
    return (StringBuffer('MoorPokemonBaseInfoData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('exp: $exp, ')
          ..write('weight: $weight, ')
          ..write('height: $height, ')
          ..write('sprite: $sprite')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              exp.hashCode,
              $mrjc(
                  weight.hashCode, $mrjc(height.hashCode, sprite.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MoorPokemonBaseInfoData &&
          other.id == this.id &&
          other.name == this.name &&
          other.exp == this.exp &&
          other.weight == this.weight &&
          other.height == this.height &&
          other.sprite == this.sprite);
}

class MoorPokemonBaseInfoCompanion
    extends UpdateCompanion<MoorPokemonBaseInfoData> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> exp;
  final Value<int> weight;
  final Value<int> height;
  final Value<String> sprite;
  const MoorPokemonBaseInfoCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.exp = const Value.absent(),
    this.weight = const Value.absent(),
    this.height = const Value.absent(),
    this.sprite = const Value.absent(),
  });
  MoorPokemonBaseInfoCompanion.insert({
    @required int id,
    @required String name,
    @required int exp,
    @required int weight,
    @required int height,
    @required String sprite,
  })  : id = Value(id),
        name = Value(name),
        exp = Value(exp),
        weight = Value(weight),
        height = Value(height),
        sprite = Value(sprite);
  static Insertable<MoorPokemonBaseInfoData> custom({
    Expression<int> id,
    Expression<String> name,
    Expression<int> exp,
    Expression<int> weight,
    Expression<int> height,
    Expression<String> sprite,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (exp != null) 'exp': exp,
      if (weight != null) 'weight': weight,
      if (height != null) 'height': height,
      if (sprite != null) 'sprite': sprite,
    });
  }

  MoorPokemonBaseInfoCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<int> exp,
      Value<int> weight,
      Value<int> height,
      Value<String> sprite}) {
    return MoorPokemonBaseInfoCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      exp: exp ?? this.exp,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      sprite: sprite ?? this.sprite,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (exp.present) {
      map['exp'] = Variable<int>(exp.value);
    }
    if (weight.present) {
      map['weight'] = Variable<int>(weight.value);
    }
    if (height.present) {
      map['height'] = Variable<int>(height.value);
    }
    if (sprite.present) {
      map['sprite'] = Variable<String>(sprite.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorPokemonBaseInfoCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('exp: $exp, ')
          ..write('weight: $weight, ')
          ..write('height: $height, ')
          ..write('sprite: $sprite')
          ..write(')'))
        .toString();
  }
}

class $MoorPokemonBaseInfoTable extends MoorPokemonBaseInfo
    with TableInfo<$MoorPokemonBaseInfoTable, MoorPokemonBaseInfoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $MoorPokemonBaseInfoTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _expMeta = const VerificationMeta('exp');
  GeneratedIntColumn _exp;
  @override
  GeneratedIntColumn get exp => _exp ??= _constructExp();
  GeneratedIntColumn _constructExp() {
    return GeneratedIntColumn(
      'exp',
      $tableName,
      false,
    );
  }

  final VerificationMeta _weightMeta = const VerificationMeta('weight');
  GeneratedIntColumn _weight;
  @override
  GeneratedIntColumn get weight => _weight ??= _constructWeight();
  GeneratedIntColumn _constructWeight() {
    return GeneratedIntColumn(
      'weight',
      $tableName,
      false,
    );
  }

  final VerificationMeta _heightMeta = const VerificationMeta('height');
  GeneratedIntColumn _height;
  @override
  GeneratedIntColumn get height => _height ??= _constructHeight();
  GeneratedIntColumn _constructHeight() {
    return GeneratedIntColumn(
      'height',
      $tableName,
      false,
    );
  }

  final VerificationMeta _spriteMeta = const VerificationMeta('sprite');
  GeneratedTextColumn _sprite;
  @override
  GeneratedTextColumn get sprite => _sprite ??= _constructSprite();
  GeneratedTextColumn _constructSprite() {
    return GeneratedTextColumn(
      'sprite',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, name, exp, weight, height, sprite];
  @override
  $MoorPokemonBaseInfoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'moor_pokemon_base_info';
  @override
  final String actualTableName = 'moor_pokemon_base_info';
  @override
  VerificationContext validateIntegrity(
      Insertable<MoorPokemonBaseInfoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('exp')) {
      context.handle(
          _expMeta, exp.isAcceptableOrUnknown(data['exp'], _expMeta));
    } else if (isInserting) {
      context.missing(_expMeta);
    }
    if (data.containsKey('weight')) {
      context.handle(_weightMeta,
          weight.isAcceptableOrUnknown(data['weight'], _weightMeta));
    } else if (isInserting) {
      context.missing(_weightMeta);
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height'], _heightMeta));
    } else if (isInserting) {
      context.missing(_heightMeta);
    }
    if (data.containsKey('sprite')) {
      context.handle(_spriteMeta,
          sprite.isAcceptableOrUnknown(data['sprite'], _spriteMeta));
    } else if (isInserting) {
      context.missing(_spriteMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  MoorPokemonBaseInfoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MoorPokemonBaseInfoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MoorPokemonBaseInfoTable createAlias(String alias) {
    return $MoorPokemonBaseInfoTable(_db, alias);
  }
}

class MoorStatData extends DataClass implements Insertable<MoorStatData> {
  final int id;
  final String statName;
  final int value;
  MoorStatData(
      {@required this.id, @required this.statName, @required this.value});
  factory MoorStatData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return MoorStatData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      statName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}stat_name']),
      value: intType.mapFromDatabaseResponse(data['${effectivePrefix}value']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || statName != null) {
      map['stat_name'] = Variable<String>(statName);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<int>(value);
    }
    return map;
  }

  MoorStatCompanion toCompanion(bool nullToAbsent) {
    return MoorStatCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      statName: statName == null && nullToAbsent
          ? const Value.absent()
          : Value(statName),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory MoorStatData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorStatData(
      id: serializer.fromJson<int>(json['id']),
      statName: serializer.fromJson<String>(json['statName']),
      value: serializer.fromJson<int>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'statName': serializer.toJson<String>(statName),
      'value': serializer.toJson<int>(value),
    };
  }

  MoorStatData copyWith({int id, String statName, int value}) => MoorStatData(
        id: id ?? this.id,
        statName: statName ?? this.statName,
        value: value ?? this.value,
      );
  @override
  String toString() {
    return (StringBuffer('MoorStatData(')
          ..write('id: $id, ')
          ..write('statName: $statName, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(statName.hashCode, value.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MoorStatData &&
          other.id == this.id &&
          other.statName == this.statName &&
          other.value == this.value);
}

class MoorStatCompanion extends UpdateCompanion<MoorStatData> {
  final Value<int> id;
  final Value<String> statName;
  final Value<int> value;
  const MoorStatCompanion({
    this.id = const Value.absent(),
    this.statName = const Value.absent(),
    this.value = const Value.absent(),
  });
  MoorStatCompanion.insert({
    this.id = const Value.absent(),
    @required String statName,
    @required int value,
  })  : statName = Value(statName),
        value = Value(value);
  static Insertable<MoorStatData> custom({
    Expression<int> id,
    Expression<String> statName,
    Expression<int> value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (statName != null) 'stat_name': statName,
      if (value != null) 'value': value,
    });
  }

  MoorStatCompanion copyWith(
      {Value<int> id, Value<String> statName, Value<int> value}) {
    return MoorStatCompanion(
      id: id ?? this.id,
      statName: statName ?? this.statName,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (statName.present) {
      map['stat_name'] = Variable<String>(statName.value);
    }
    if (value.present) {
      map['value'] = Variable<int>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorStatCompanion(')
          ..write('id: $id, ')
          ..write('statName: $statName, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $MoorStatTable extends MoorStat
    with TableInfo<$MoorStatTable, MoorStatData> {
  final GeneratedDatabase _db;
  final String _alias;
  $MoorStatTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _statNameMeta = const VerificationMeta('statName');
  GeneratedTextColumn _statName;
  @override
  GeneratedTextColumn get statName => _statName ??= _constructStatName();
  GeneratedTextColumn _constructStatName() {
    return GeneratedTextColumn(
      'stat_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _valueMeta = const VerificationMeta('value');
  GeneratedIntColumn _value;
  @override
  GeneratedIntColumn get value => _value ??= _constructValue();
  GeneratedIntColumn _constructValue() {
    return GeneratedIntColumn(
      'value',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, statName, value];
  @override
  $MoorStatTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'moor_stat';
  @override
  final String actualTableName = 'moor_stat';
  @override
  VerificationContext validateIntegrity(Insertable<MoorStatData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('stat_name')) {
      context.handle(_statNameMeta,
          statName.isAcceptableOrUnknown(data['stat_name'], _statNameMeta));
    } else if (isInserting) {
      context.missing(_statNameMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value'], _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoorStatData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MoorStatData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MoorStatTable createAlias(String alias) {
    return $MoorStatTable(_db, alias);
  }
}

class MoorPokemonBaseInfoTypeLinkData extends DataClass
    implements Insertable<MoorPokemonBaseInfoTypeLinkData> {
  final int baseInfo;
  final int type;
  MoorPokemonBaseInfoTypeLinkData(
      {@required this.baseInfo, @required this.type});
  factory MoorPokemonBaseInfoTypeLinkData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return MoorPokemonBaseInfoTypeLinkData(
      baseInfo:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}base_info']),
      type: intType.mapFromDatabaseResponse(data['${effectivePrefix}type']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || baseInfo != null) {
      map['base_info'] = Variable<int>(baseInfo);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<int>(type);
    }
    return map;
  }

  MoorPokemonBaseInfoTypeLinkCompanion toCompanion(bool nullToAbsent) {
    return MoorPokemonBaseInfoTypeLinkCompanion(
      baseInfo: baseInfo == null && nullToAbsent
          ? const Value.absent()
          : Value(baseInfo),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
    );
  }

  factory MoorPokemonBaseInfoTypeLinkData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorPokemonBaseInfoTypeLinkData(
      baseInfo: serializer.fromJson<int>(json['baseInfo']),
      type: serializer.fromJson<int>(json['type']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'baseInfo': serializer.toJson<int>(baseInfo),
      'type': serializer.toJson<int>(type),
    };
  }

  MoorPokemonBaseInfoTypeLinkData copyWith({int baseInfo, int type}) =>
      MoorPokemonBaseInfoTypeLinkData(
        baseInfo: baseInfo ?? this.baseInfo,
        type: type ?? this.type,
      );
  @override
  String toString() {
    return (StringBuffer('MoorPokemonBaseInfoTypeLinkData(')
          ..write('baseInfo: $baseInfo, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(baseInfo.hashCode, type.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MoorPokemonBaseInfoTypeLinkData &&
          other.baseInfo == this.baseInfo &&
          other.type == this.type);
}

class MoorPokemonBaseInfoTypeLinkCompanion
    extends UpdateCompanion<MoorPokemonBaseInfoTypeLinkData> {
  final Value<int> baseInfo;
  final Value<int> type;
  const MoorPokemonBaseInfoTypeLinkCompanion({
    this.baseInfo = const Value.absent(),
    this.type = const Value.absent(),
  });
  MoorPokemonBaseInfoTypeLinkCompanion.insert({
    @required int baseInfo,
    @required int type,
  })  : baseInfo = Value(baseInfo),
        type = Value(type);
  static Insertable<MoorPokemonBaseInfoTypeLinkData> custom({
    Expression<int> baseInfo,
    Expression<int> type,
  }) {
    return RawValuesInsertable({
      if (baseInfo != null) 'base_info': baseInfo,
      if (type != null) 'type': type,
    });
  }

  MoorPokemonBaseInfoTypeLinkCompanion copyWith(
      {Value<int> baseInfo, Value<int> type}) {
    return MoorPokemonBaseInfoTypeLinkCompanion(
      baseInfo: baseInfo ?? this.baseInfo,
      type: type ?? this.type,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (baseInfo.present) {
      map['base_info'] = Variable<int>(baseInfo.value);
    }
    if (type.present) {
      map['type'] = Variable<int>(type.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorPokemonBaseInfoTypeLinkCompanion(')
          ..write('baseInfo: $baseInfo, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }
}

class $MoorPokemonBaseInfoTypeLinkTable extends MoorPokemonBaseInfoTypeLink
    with
        TableInfo<$MoorPokemonBaseInfoTypeLinkTable,
            MoorPokemonBaseInfoTypeLinkData> {
  final GeneratedDatabase _db;
  final String _alias;
  $MoorPokemonBaseInfoTypeLinkTable(this._db, [this._alias]);
  final VerificationMeta _baseInfoMeta = const VerificationMeta('baseInfo');
  GeneratedIntColumn _baseInfo;
  @override
  GeneratedIntColumn get baseInfo => _baseInfo ??= _constructBaseInfo();
  GeneratedIntColumn _constructBaseInfo() {
    return GeneratedIntColumn(
      'base_info',
      $tableName,
      false,
    );
  }

  final VerificationMeta _typeMeta = const VerificationMeta('type');
  GeneratedIntColumn _type;
  @override
  GeneratedIntColumn get type => _type ??= _constructType();
  GeneratedIntColumn _constructType() {
    return GeneratedIntColumn(
      'type',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [baseInfo, type];
  @override
  $MoorPokemonBaseInfoTypeLinkTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'moor_pokemon_base_info_type_link';
  @override
  final String actualTableName = 'moor_pokemon_base_info_type_link';
  @override
  VerificationContext validateIntegrity(
      Insertable<MoorPokemonBaseInfoTypeLinkData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('base_info')) {
      context.handle(_baseInfoMeta,
          baseInfo.isAcceptableOrUnknown(data['base_info'], _baseInfoMeta));
    } else if (isInserting) {
      context.missing(_baseInfoMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type'], _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  MoorPokemonBaseInfoTypeLinkData map(Map<String, dynamic> data,
      {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MoorPokemonBaseInfoTypeLinkData.fromData(data, _db,
        prefix: effectivePrefix);
  }

  @override
  $MoorPokemonBaseInfoTypeLinkTable createAlias(String alias) {
    return $MoorPokemonBaseInfoTypeLinkTable(_db, alias);
  }
}

class MoorPokemonBaseInfoStatLinkData extends DataClass
    implements Insertable<MoorPokemonBaseInfoStatLinkData> {
  final int baseInfo;
  final int stat;
  MoorPokemonBaseInfoStatLinkData(
      {@required this.baseInfo, @required this.stat});
  factory MoorPokemonBaseInfoStatLinkData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return MoorPokemonBaseInfoStatLinkData(
      baseInfo:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}base_info']),
      stat: intType.mapFromDatabaseResponse(data['${effectivePrefix}stat']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || baseInfo != null) {
      map['base_info'] = Variable<int>(baseInfo);
    }
    if (!nullToAbsent || stat != null) {
      map['stat'] = Variable<int>(stat);
    }
    return map;
  }

  MoorPokemonBaseInfoStatLinkCompanion toCompanion(bool nullToAbsent) {
    return MoorPokemonBaseInfoStatLinkCompanion(
      baseInfo: baseInfo == null && nullToAbsent
          ? const Value.absent()
          : Value(baseInfo),
      stat: stat == null && nullToAbsent ? const Value.absent() : Value(stat),
    );
  }

  factory MoorPokemonBaseInfoStatLinkData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorPokemonBaseInfoStatLinkData(
      baseInfo: serializer.fromJson<int>(json['baseInfo']),
      stat: serializer.fromJson<int>(json['stat']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'baseInfo': serializer.toJson<int>(baseInfo),
      'stat': serializer.toJson<int>(stat),
    };
  }

  MoorPokemonBaseInfoStatLinkData copyWith({int baseInfo, int stat}) =>
      MoorPokemonBaseInfoStatLinkData(
        baseInfo: baseInfo ?? this.baseInfo,
        stat: stat ?? this.stat,
      );
  @override
  String toString() {
    return (StringBuffer('MoorPokemonBaseInfoStatLinkData(')
          ..write('baseInfo: $baseInfo, ')
          ..write('stat: $stat')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(baseInfo.hashCode, stat.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MoorPokemonBaseInfoStatLinkData &&
          other.baseInfo == this.baseInfo &&
          other.stat == this.stat);
}

class MoorPokemonBaseInfoStatLinkCompanion
    extends UpdateCompanion<MoorPokemonBaseInfoStatLinkData> {
  final Value<int> baseInfo;
  final Value<int> stat;
  const MoorPokemonBaseInfoStatLinkCompanion({
    this.baseInfo = const Value.absent(),
    this.stat = const Value.absent(),
  });
  MoorPokemonBaseInfoStatLinkCompanion.insert({
    @required int baseInfo,
    @required int stat,
  })  : baseInfo = Value(baseInfo),
        stat = Value(stat);
  static Insertable<MoorPokemonBaseInfoStatLinkData> custom({
    Expression<int> baseInfo,
    Expression<int> stat,
  }) {
    return RawValuesInsertable({
      if (baseInfo != null) 'base_info': baseInfo,
      if (stat != null) 'stat': stat,
    });
  }

  MoorPokemonBaseInfoStatLinkCompanion copyWith(
      {Value<int> baseInfo, Value<int> stat}) {
    return MoorPokemonBaseInfoStatLinkCompanion(
      baseInfo: baseInfo ?? this.baseInfo,
      stat: stat ?? this.stat,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (baseInfo.present) {
      map['base_info'] = Variable<int>(baseInfo.value);
    }
    if (stat.present) {
      map['stat'] = Variable<int>(stat.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorPokemonBaseInfoStatLinkCompanion(')
          ..write('baseInfo: $baseInfo, ')
          ..write('stat: $stat')
          ..write(')'))
        .toString();
  }
}

class $MoorPokemonBaseInfoStatLinkTable extends MoorPokemonBaseInfoStatLink
    with
        TableInfo<$MoorPokemonBaseInfoStatLinkTable,
            MoorPokemonBaseInfoStatLinkData> {
  final GeneratedDatabase _db;
  final String _alias;
  $MoorPokemonBaseInfoStatLinkTable(this._db, [this._alias]);
  final VerificationMeta _baseInfoMeta = const VerificationMeta('baseInfo');
  GeneratedIntColumn _baseInfo;
  @override
  GeneratedIntColumn get baseInfo => _baseInfo ??= _constructBaseInfo();
  GeneratedIntColumn _constructBaseInfo() {
    return GeneratedIntColumn(
      'base_info',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statMeta = const VerificationMeta('stat');
  GeneratedIntColumn _stat;
  @override
  GeneratedIntColumn get stat => _stat ??= _constructStat();
  GeneratedIntColumn _constructStat() {
    return GeneratedIntColumn(
      'stat',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [baseInfo, stat];
  @override
  $MoorPokemonBaseInfoStatLinkTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'moor_pokemon_base_info_stat_link';
  @override
  final String actualTableName = 'moor_pokemon_base_info_stat_link';
  @override
  VerificationContext validateIntegrity(
      Insertable<MoorPokemonBaseInfoStatLinkData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('base_info')) {
      context.handle(_baseInfoMeta,
          baseInfo.isAcceptableOrUnknown(data['base_info'], _baseInfoMeta));
    } else if (isInserting) {
      context.missing(_baseInfoMeta);
    }
    if (data.containsKey('stat')) {
      context.handle(
          _statMeta, stat.isAcceptableOrUnknown(data['stat'], _statMeta));
    } else if (isInserting) {
      context.missing(_statMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  MoorPokemonBaseInfoStatLinkData map(Map<String, dynamic> data,
      {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MoorPokemonBaseInfoStatLinkData.fromData(data, _db,
        prefix: effectivePrefix);
  }

  @override
  $MoorPokemonBaseInfoStatLinkTable createAlias(String alias) {
    return $MoorPokemonBaseInfoStatLinkTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $MoorTypeTable _moorType;
  $MoorTypeTable get moorType => _moorType ??= $MoorTypeTable(this);
  $MoorPokemonBaseInfoTable _moorPokemonBaseInfo;
  $MoorPokemonBaseInfoTable get moorPokemonBaseInfo =>
      _moorPokemonBaseInfo ??= $MoorPokemonBaseInfoTable(this);
  $MoorStatTable _moorStat;
  $MoorStatTable get moorStat => _moorStat ??= $MoorStatTable(this);
  $MoorPokemonBaseInfoTypeLinkTable _moorPokemonBaseInfoTypeLink;
  $MoorPokemonBaseInfoTypeLinkTable get moorPokemonBaseInfoTypeLink =>
      _moorPokemonBaseInfoTypeLink ??= $MoorPokemonBaseInfoTypeLinkTable(this);
  $MoorPokemonBaseInfoStatLinkTable _moorPokemonBaseInfoStatLink;
  $MoorPokemonBaseInfoStatLinkTable get moorPokemonBaseInfoStatLink =>
      _moorPokemonBaseInfoStatLink ??= $MoorPokemonBaseInfoStatLinkTable(this);
  PokemonDao _pokemonDao;
  PokemonDao get pokemonDao => _pokemonDao ??= PokemonDao(this as Database);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        moorType,
        moorPokemonBaseInfo,
        moorStat,
        moorPokemonBaseInfoTypeLink,
        moorPokemonBaseInfoStatLink
      ];
}
