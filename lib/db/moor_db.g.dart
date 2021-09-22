// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class CatFact extends DataClass implements Insertable<CatFact> {
  final int id;
  final String fact;
  final int length;
  CatFact({required this.id, required this.fact, required this.length});
  factory CatFact.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return CatFact(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      fact: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fact'])!,
      length: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}length'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['fact'] = Variable<String>(fact);
    map['length'] = Variable<int>(length);
    return map;
  }

  CatFactsCompanion toCompanion(bool nullToAbsent) {
    return CatFactsCompanion(
      id: Value(id),
      fact: Value(fact),
      length: Value(length),
    );
  }

  factory CatFact.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CatFact(
      id: serializer.fromJson<int>(json['id']),
      fact: serializer.fromJson<String>(json['fact']),
      length: serializer.fromJson<int>(json['length']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'fact': serializer.toJson<String>(fact),
      'length': serializer.toJson<int>(length),
    };
  }

  CatFact copyWith({int? id, String? fact, int? length}) => CatFact(
        id: id ?? this.id,
        fact: fact ?? this.fact,
        length: length ?? this.length,
      );
  @override
  String toString() {
    return (StringBuffer('CatFact(')
          ..write('id: $id, ')
          ..write('fact: $fact, ')
          ..write('length: $length')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(fact.hashCode, length.hashCode)));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CatFact &&
          other.id == this.id &&
          other.fact == this.fact &&
          other.length == this.length);
}

class CatFactsCompanion extends UpdateCompanion<CatFact> {
  final Value<int> id;
  final Value<String> fact;
  final Value<int> length;
  const CatFactsCompanion({
    this.id = const Value.absent(),
    this.fact = const Value.absent(),
    this.length = const Value.absent(),
  });
  CatFactsCompanion.insert({
    this.id = const Value.absent(),
    required String fact,
    required int length,
  })  : fact = Value(fact),
        length = Value(length);
  static Insertable<CatFact> custom({
    Expression<int>? id,
    Expression<String>? fact,
    Expression<int>? length,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (fact != null) 'fact': fact,
      if (length != null) 'length': length,
    });
  }

  CatFactsCompanion copyWith(
      {Value<int>? id, Value<String>? fact, Value<int>? length}) {
    return CatFactsCompanion(
      id: id ?? this.id,
      fact: fact ?? this.fact,
      length: length ?? this.length,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (fact.present) {
      map['fact'] = Variable<String>(fact.value);
    }
    if (length.present) {
      map['length'] = Variable<int>(length.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CatFactsCompanion(')
          ..write('id: $id, ')
          ..write('fact: $fact, ')
          ..write('length: $length')
          ..write(')'))
        .toString();
  }
}

class $CatFactsTable extends CatFacts with TableInfo<$CatFactsTable, CatFact> {
  final GeneratedDatabase _db;
  final String? _alias;
  $CatFactsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _factMeta = const VerificationMeta('fact');
  late final GeneratedColumn<String?> fact = GeneratedColumn<String?>(
      'fact', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _lengthMeta = const VerificationMeta('length');
  late final GeneratedColumn<int?> length = GeneratedColumn<int?>(
      'length', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, fact, length];
  @override
  String get aliasedName => _alias ?? 'cat_facts';
  @override
  String get actualTableName => 'cat_facts';
  @override
  VerificationContext validateIntegrity(Insertable<CatFact> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('fact')) {
      context.handle(
          _factMeta, fact.isAcceptableOrUnknown(data['fact']!, _factMeta));
    } else if (isInserting) {
      context.missing(_factMeta);
    }
    if (data.containsKey('length')) {
      context.handle(_lengthMeta,
          length.isAcceptableOrUnknown(data['length']!, _lengthMeta));
    } else if (isInserting) {
      context.missing(_lengthMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CatFact map(Map<String, dynamic> data, {String? tablePrefix}) {
    return CatFact.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CatFactsTable createAlias(String alias) {
    return $CatFactsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $CatFactsTable catFacts = $CatFactsTable(this);
  Selectable<bool> checkExists(String factName) {
    return customSelect(
        'SELECT EXISTS(SELECT fact from cat_facts WHERE fact=:factName);',
        variables: [
          Variable<String>(factName)
        ],
        readsFrom: {
          catFacts,
        }).map((QueryRow row) => row
        .read<bool>('EXISTS(SELECT fact from cat_facts WHERE fact=:factName)'));
  }

  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [catFacts];
}
