// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dept_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Dept extends DataClass implements Insertable<Dept> {
  final int id;
  final bool owe;
  final bool oweMe;
  final int amount;
  final String name;
  final String description;
  final DateTime dueData;
  Dept(
      {@required this.id,
      @required this.owe,
      @required this.oweMe,
      @required this.amount,
      @required this.name,
      @required this.description,
      this.dueData});
  factory Dept.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final boolType = db.typeSystem.forDartType<bool>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Dept(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      owe: boolType.mapFromDatabaseResponse(data['${effectivePrefix}owe']),
      oweMe: boolType.mapFromDatabaseResponse(data['${effectivePrefix}owe_me']),
      amount: intType.mapFromDatabaseResponse(data['${effectivePrefix}amount']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      dueData: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}due_data']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || owe != null) {
      map['owe'] = Variable<bool>(owe);
    }
    if (!nullToAbsent || oweMe != null) {
      map['owe_me'] = Variable<bool>(oweMe);
    }
    if (!nullToAbsent || amount != null) {
      map['amount'] = Variable<int>(amount);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || dueData != null) {
      map['due_data'] = Variable<DateTime>(dueData);
    }
    return map;
  }

  DeptsCompanion toCompanion(bool nullToAbsent) {
    return DeptsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      owe: owe == null && nullToAbsent ? const Value.absent() : Value(owe),
      oweMe:
          oweMe == null && nullToAbsent ? const Value.absent() : Value(oweMe),
      amount:
          amount == null && nullToAbsent ? const Value.absent() : Value(amount),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      dueData: dueData == null && nullToAbsent
          ? const Value.absent()
          : Value(dueData),
    );
  }

  factory Dept.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Dept(
      id: serializer.fromJson<int>(json['id']),
      owe: serializer.fromJson<bool>(json['owe']),
      oweMe: serializer.fromJson<bool>(json['oweMe']),
      amount: serializer.fromJson<int>(json['amount']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      dueData: serializer.fromJson<DateTime>(json['dueData']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'owe': serializer.toJson<bool>(owe),
      'oweMe': serializer.toJson<bool>(oweMe),
      'amount': serializer.toJson<int>(amount),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'dueData': serializer.toJson<DateTime>(dueData),
    };
  }

  Dept copyWith(
          {int id,
          bool owe,
          bool oweMe,
          int amount,
          String name,
          String description,
          DateTime dueData}) =>
      Dept(
        id: id ?? this.id,
        owe: owe ?? this.owe,
        oweMe: oweMe ?? this.oweMe,
        amount: amount ?? this.amount,
        name: name ?? this.name,
        description: description ?? this.description,
        dueData: dueData ?? this.dueData,
      );
  @override
  String toString() {
    return (StringBuffer('Dept(')
          ..write('id: $id, ')
          ..write('owe: $owe, ')
          ..write('oweMe: $oweMe, ')
          ..write('amount: $amount, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('dueData: $dueData')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          owe.hashCode,
          $mrjc(
              oweMe.hashCode,
              $mrjc(
                  amount.hashCode,
                  $mrjc(name.hashCode,
                      $mrjc(description.hashCode, dueData.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Dept &&
          other.id == this.id &&
          other.owe == this.owe &&
          other.oweMe == this.oweMe &&
          other.amount == this.amount &&
          other.name == this.name &&
          other.description == this.description &&
          other.dueData == this.dueData);
}

class DeptsCompanion extends UpdateCompanion<Dept> {
  final Value<int> id;
  final Value<bool> owe;
  final Value<bool> oweMe;
  final Value<int> amount;
  final Value<String> name;
  final Value<String> description;
  final Value<DateTime> dueData;
  const DeptsCompanion({
    this.id = const Value.absent(),
    this.owe = const Value.absent(),
    this.oweMe = const Value.absent(),
    this.amount = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.dueData = const Value.absent(),
  });
  DeptsCompanion.insert({
    this.id = const Value.absent(),
    this.owe = const Value.absent(),
    this.oweMe = const Value.absent(),
    @required int amount,
    @required String name,
    @required String description,
    this.dueData = const Value.absent(),
  })  : amount = Value(amount),
        name = Value(name),
        description = Value(description);
  static Insertable<Dept> custom({
    Expression<int> id,
    Expression<bool> owe,
    Expression<bool> oweMe,
    Expression<int> amount,
    Expression<String> name,
    Expression<String> description,
    Expression<DateTime> dueData,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (owe != null) 'owe': owe,
      if (oweMe != null) 'owe_me': oweMe,
      if (amount != null) 'amount': amount,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (dueData != null) 'due_data': dueData,
    });
  }

  DeptsCompanion copyWith(
      {Value<int> id,
      Value<bool> owe,
      Value<bool> oweMe,
      Value<int> amount,
      Value<String> name,
      Value<String> description,
      Value<DateTime> dueData}) {
    return DeptsCompanion(
      id: id ?? this.id,
      owe: owe ?? this.owe,
      oweMe: oweMe ?? this.oweMe,
      amount: amount ?? this.amount,
      name: name ?? this.name,
      description: description ?? this.description,
      dueData: dueData ?? this.dueData,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (owe.present) {
      map['owe'] = Variable<bool>(owe.value);
    }
    if (oweMe.present) {
      map['owe_me'] = Variable<bool>(oweMe.value);
    }
    if (amount.present) {
      map['amount'] = Variable<int>(amount.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (dueData.present) {
      map['due_data'] = Variable<DateTime>(dueData.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DeptsCompanion(')
          ..write('id: $id, ')
          ..write('owe: $owe, ')
          ..write('oweMe: $oweMe, ')
          ..write('amount: $amount, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('dueData: $dueData')
          ..write(')'))
        .toString();
  }
}

class $DeptsTable extends Depts with TableInfo<$DeptsTable, Dept> {
  final GeneratedDatabase _db;
  final String _alias;
  $DeptsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _oweMeta = const VerificationMeta('owe');
  GeneratedBoolColumn _owe;
  @override
  GeneratedBoolColumn get owe => _owe ??= _constructOwe();
  GeneratedBoolColumn _constructOwe() {
    return GeneratedBoolColumn('owe', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _oweMeMeta = const VerificationMeta('oweMe');
  GeneratedBoolColumn _oweMe;
  @override
  GeneratedBoolColumn get oweMe => _oweMe ??= _constructOweMe();
  GeneratedBoolColumn _constructOweMe() {
    return GeneratedBoolColumn('owe_me', $tableName, false,
        defaultValue: Constant(false));
  }

  final VerificationMeta _amountMeta = const VerificationMeta('amount');
  GeneratedIntColumn _amount;
  @override
  GeneratedIntColumn get amount => _amount ??= _constructAmount();
  GeneratedIntColumn _constructAmount() {
    return GeneratedIntColumn(
      'amount',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 15);
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn('description', $tableName, false,
        minTextLength: 1, maxTextLength: 51);
  }

  final VerificationMeta _dueDataMeta = const VerificationMeta('dueData');
  GeneratedDateTimeColumn _dueData;
  @override
  GeneratedDateTimeColumn get dueData => _dueData ??= _constructDueData();
  GeneratedDateTimeColumn _constructDueData() {
    return GeneratedDateTimeColumn(
      'due_data',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, owe, oweMe, amount, name, description, dueData];
  @override
  $DeptsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'depts';
  @override
  final String actualTableName = 'depts';
  @override
  VerificationContext validateIntegrity(Insertable<Dept> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('owe')) {
      context.handle(
          _oweMeta, owe.isAcceptableOrUnknown(data['owe'], _oweMeta));
    }
    if (data.containsKey('owe_me')) {
      context.handle(
          _oweMeMeta, oweMe.isAcceptableOrUnknown(data['owe_me'], _oweMeMeta));
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount'], _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('due_data')) {
      context.handle(_dueDataMeta,
          dueData.isAcceptableOrUnknown(data['due_data'], _dueDataMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Dept map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Dept.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $DeptsTable createAlias(String alias) {
    return $DeptsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $DeptsTable _depts;
  $DeptsTable get depts => _depts ??= $DeptsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [depts];
}
