// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDocCollection on Isar {
  IsarCollection<Doc> get docs => this.collection();
}

const DocSchema = CollectionSchema(
  name: r'Doc',
  id: -7873949022529393627,
  properties: {
    r'byline': PropertySchema(
      id: 0,
      name: r'byline',
      type: IsarType.object,
      target: r'Byline',
    ),
    r'docAbstract': PropertySchema(
      id: 1,
      name: r'docAbstract',
      type: IsarType.string,
    ),
    r'docId': PropertySchema(
      id: 2,
      name: r'docId',
      type: IsarType.string,
    ),
    r'documentType': PropertySchema(
      id: 3,
      name: r'documentType',
      type: IsarType.string,
    ),
    r'headline': PropertySchema(
      id: 4,
      name: r'headline',
      type: IsarType.object,
      target: r'Headline',
    ),
    r'keywords': PropertySchema(
      id: 5,
      name: r'keywords',
      type: IsarType.objectList,
      target: r'Keyword',
    ),
    r'leadParagraph': PropertySchema(
      id: 6,
      name: r'leadParagraph',
      type: IsarType.string,
    ),
    r'multimedia': PropertySchema(
      id: 7,
      name: r'multimedia',
      type: IsarType.objectList,
      target: r'Multimedia',
    ),
    r'newsDesk': PropertySchema(
      id: 8,
      name: r'newsDesk',
      type: IsarType.string,
    ),
    r'printPage': PropertySchema(
      id: 9,
      name: r'printPage',
      type: IsarType.string,
    ),
    r'printSection': PropertySchema(
      id: 10,
      name: r'printSection',
      type: IsarType.string,
    ),
    r'pubDate': PropertySchema(
      id: 11,
      name: r'pubDate',
      type: IsarType.string,
    ),
    r'sectionName': PropertySchema(
      id: 12,
      name: r'sectionName',
      type: IsarType.string,
    ),
    r'snippet': PropertySchema(
      id: 13,
      name: r'snippet',
      type: IsarType.string,
    ),
    r'source': PropertySchema(
      id: 14,
      name: r'source',
      type: IsarType.string,
    ),
    r'subsectionName': PropertySchema(
      id: 15,
      name: r'subsectionName',
      type: IsarType.string,
    ),
    r'typeOfMaterial': PropertySchema(
      id: 16,
      name: r'typeOfMaterial',
      type: IsarType.string,
    ),
    r'uri': PropertySchema(
      id: 17,
      name: r'uri',
      type: IsarType.string,
    ),
    r'webUrl': PropertySchema(
      id: 18,
      name: r'webUrl',
      type: IsarType.string,
    ),
    r'wordCount': PropertySchema(
      id: 19,
      name: r'wordCount',
      type: IsarType.long,
    )
  },
  estimateSize: _docEstimateSize,
  serialize: _docSerialize,
  deserialize: _docDeserialize,
  deserializeProp: _docDeserializeProp,
  idName: r'id',
  indexes: {
    r'docId': IndexSchema(
      id: -9164048795576814174,
      name: r'docId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'docId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {
    r'Multimedia': MultimediaSchema,
    r'Legacy': LegacySchema,
    r'Headline': HeadlineSchema,
    r'Keyword': KeywordSchema,
    r'Byline': BylineSchema,
    r'Person': PersonSchema
  },
  getId: _docGetId,
  getLinks: _docGetLinks,
  attach: _docAttach,
  version: '3.1.0+1',
);

int _docEstimateSize(
  Doc object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.byline;
    if (value != null) {
      bytesCount +=
          3 + BylineSchema.estimateSize(value, allOffsets[Byline]!, allOffsets);
    }
  }
  {
    final value = object.docAbstract;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.docId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.documentType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 +
      HeadlineSchema.estimateSize(
          object.headline, allOffsets[Headline]!, allOffsets);
  {
    final list = object.keywords;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[Keyword]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += KeywordSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.leadParagraph;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.multimedia;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[Multimedia]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              MultimediaSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.newsDesk;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.printPage;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.printSection;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.pubDate.length * 3;
  {
    final value = object.sectionName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.snippet;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.source;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.subsectionName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.typeOfMaterial;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.uri;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.webUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _docSerialize(
  Doc object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<Byline>(
    offsets[0],
    allOffsets,
    BylineSchema.serialize,
    object.byline,
  );
  writer.writeString(offsets[1], object.docAbstract);
  writer.writeString(offsets[2], object.docId);
  writer.writeString(offsets[3], object.documentType);
  writer.writeObject<Headline>(
    offsets[4],
    allOffsets,
    HeadlineSchema.serialize,
    object.headline,
  );
  writer.writeObjectList<Keyword>(
    offsets[5],
    allOffsets,
    KeywordSchema.serialize,
    object.keywords,
  );
  writer.writeString(offsets[6], object.leadParagraph);
  writer.writeObjectList<Multimedia>(
    offsets[7],
    allOffsets,
    MultimediaSchema.serialize,
    object.multimedia,
  );
  writer.writeString(offsets[8], object.newsDesk);
  writer.writeString(offsets[9], object.printPage);
  writer.writeString(offsets[10], object.printSection);
  writer.writeString(offsets[11], object.pubDate);
  writer.writeString(offsets[12], object.sectionName);
  writer.writeString(offsets[13], object.snippet);
  writer.writeString(offsets[14], object.source);
  writer.writeString(offsets[15], object.subsectionName);
  writer.writeString(offsets[16], object.typeOfMaterial);
  writer.writeString(offsets[17], object.uri);
  writer.writeString(offsets[18], object.webUrl);
  writer.writeLong(offsets[19], object.wordCount);
}

Doc _docDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Doc(
    byline: reader.readObjectOrNull<Byline>(
      offsets[0],
      BylineSchema.deserialize,
      allOffsets,
    ),
    docAbstract: reader.readStringOrNull(offsets[1]),
    docId: reader.readStringOrNull(offsets[2]),
    documentType: reader.readStringOrNull(offsets[3]),
    headline: reader.readObjectOrNull<Headline>(
          offsets[4],
          HeadlineSchema.deserialize,
          allOffsets,
        ) ??
        const Headline(),
    keywords: reader.readObjectList<Keyword>(
      offsets[5],
      KeywordSchema.deserialize,
      allOffsets,
      Keyword(),
    ),
    leadParagraph: reader.readStringOrNull(offsets[6]),
    multimedia: reader.readObjectList<Multimedia>(
      offsets[7],
      MultimediaSchema.deserialize,
      allOffsets,
      Multimedia(),
    ),
    newsDesk: reader.readStringOrNull(offsets[8]),
    printPage: reader.readStringOrNull(offsets[9]),
    printSection: reader.readStringOrNull(offsets[10]),
    pubDate: reader.readStringOrNull(offsets[11]) ?? '',
    sectionName: reader.readStringOrNull(offsets[12]),
    snippet: reader.readStringOrNull(offsets[13]),
    source: reader.readStringOrNull(offsets[14]),
    subsectionName: reader.readStringOrNull(offsets[15]),
    typeOfMaterial: reader.readStringOrNull(offsets[16]),
    uri: reader.readStringOrNull(offsets[17]),
    webUrl: reader.readStringOrNull(offsets[18]),
    wordCount: reader.readLongOrNull(offsets[19]),
  );
  return object;
}

P _docDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<Byline>(
        offset,
        BylineSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readObjectOrNull<Headline>(
            offset,
            HeadlineSchema.deserialize,
            allOffsets,
          ) ??
          const Headline()) as P;
    case 5:
      return (reader.readObjectList<Keyword>(
        offset,
        KeywordSchema.deserialize,
        allOffsets,
        Keyword(),
      )) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readObjectList<Multimedia>(
        offset,
        MultimediaSchema.deserialize,
        allOffsets,
        Multimedia(),
      )) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    case 19:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _docGetId(Doc object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _docGetLinks(Doc object) {
  return [];
}

void _docAttach(IsarCollection<dynamic> col, Id id, Doc object) {}

extension DocByIndex on IsarCollection<Doc> {
  Future<Doc?> getByDocId(String? docId) {
    return getByIndex(r'docId', [docId]);
  }

  Doc? getByDocIdSync(String? docId) {
    return getByIndexSync(r'docId', [docId]);
  }

  Future<bool> deleteByDocId(String? docId) {
    return deleteByIndex(r'docId', [docId]);
  }

  bool deleteByDocIdSync(String? docId) {
    return deleteByIndexSync(r'docId', [docId]);
  }

  Future<List<Doc?>> getAllByDocId(List<String?> docIdValues) {
    final values = docIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'docId', values);
  }

  List<Doc?> getAllByDocIdSync(List<String?> docIdValues) {
    final values = docIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'docId', values);
  }

  Future<int> deleteAllByDocId(List<String?> docIdValues) {
    final values = docIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'docId', values);
  }

  int deleteAllByDocIdSync(List<String?> docIdValues) {
    final values = docIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'docId', values);
  }

  Future<Id> putByDocId(Doc object) {
    return putByIndex(r'docId', object);
  }

  Id putByDocIdSync(Doc object, {bool saveLinks = true}) {
    return putByIndexSync(r'docId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByDocId(List<Doc> objects) {
    return putAllByIndex(r'docId', objects);
  }

  List<Id> putAllByDocIdSync(List<Doc> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'docId', objects, saveLinks: saveLinks);
  }
}

extension DocQueryWhereSort on QueryBuilder<Doc, Doc, QWhere> {
  QueryBuilder<Doc, Doc, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DocQueryWhere on QueryBuilder<Doc, Doc, QWhereClause> {
  QueryBuilder<Doc, Doc, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Doc, Doc, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Doc, Doc, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Doc, Doc, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterWhereClause> docIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'docId',
        value: [null],
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterWhereClause> docIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'docId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterWhereClause> docIdEqualTo(String? docId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'docId',
        value: [docId],
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterWhereClause> docIdNotEqualTo(String? docId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'docId',
              lower: [],
              upper: [docId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'docId',
              lower: [docId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'docId',
              lower: [docId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'docId',
              lower: [],
              upper: [docId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension DocQueryFilter on QueryBuilder<Doc, Doc, QFilterCondition> {
  QueryBuilder<Doc, Doc, QAfterFilterCondition> bylineIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'byline',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> bylineIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'byline',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docAbstractIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'docAbstract',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docAbstractIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'docAbstract',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docAbstractEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'docAbstract',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docAbstractGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'docAbstract',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docAbstractLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'docAbstract',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docAbstractBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'docAbstract',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docAbstractStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'docAbstract',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docAbstractEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'docAbstract',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docAbstractContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'docAbstract',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docAbstractMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'docAbstract',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docAbstractIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'docAbstract',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docAbstractIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'docAbstract',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'docId',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'docId',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'docId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'docId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'docId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'docId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'docId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'docId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docIdContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'docId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docIdMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'docId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'docId',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> docIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'docId',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> documentTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'documentType',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> documentTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'documentType',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> documentTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'documentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> documentTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'documentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> documentTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'documentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> documentTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'documentType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> documentTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'documentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> documentTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'documentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> documentTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'documentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> documentTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'documentType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> documentTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'documentType',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> documentTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'documentType',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> keywordsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'keywords',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> keywordsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'keywords',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> keywordsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'keywords',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> keywordsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'keywords',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> keywordsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'keywords',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> keywordsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'keywords',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> keywordsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'keywords',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> keywordsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'keywords',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> leadParagraphIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'leadParagraph',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> leadParagraphIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'leadParagraph',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> leadParagraphEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leadParagraph',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> leadParagraphGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leadParagraph',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> leadParagraphLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leadParagraph',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> leadParagraphBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leadParagraph',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> leadParagraphStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'leadParagraph',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> leadParagraphEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'leadParagraph',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> leadParagraphContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'leadParagraph',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> leadParagraphMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'leadParagraph',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> leadParagraphIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leadParagraph',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> leadParagraphIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'leadParagraph',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> multimediaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'multimedia',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> multimediaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'multimedia',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> multimediaLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'multimedia',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> multimediaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'multimedia',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> multimediaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'multimedia',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> multimediaLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'multimedia',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> multimediaLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'multimedia',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> multimediaLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'multimedia',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> newsDeskIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'newsDesk',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> newsDeskIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'newsDesk',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> newsDeskEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'newsDesk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> newsDeskGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'newsDesk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> newsDeskLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'newsDesk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> newsDeskBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'newsDesk',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> newsDeskStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'newsDesk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> newsDeskEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'newsDesk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> newsDeskContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'newsDesk',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> newsDeskMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'newsDesk',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> newsDeskIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'newsDesk',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> newsDeskIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'newsDesk',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printPageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'printPage',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printPageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'printPage',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printPageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'printPage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printPageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'printPage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printPageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'printPage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printPageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'printPage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printPageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'printPage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printPageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'printPage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printPageContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'printPage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printPageMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'printPage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printPageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'printPage',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printPageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'printPage',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printSectionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'printSection',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printSectionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'printSection',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printSectionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'printSection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printSectionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'printSection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printSectionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'printSection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printSectionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'printSection',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printSectionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'printSection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printSectionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'printSection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printSectionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'printSection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printSectionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'printSection',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printSectionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'printSection',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> printSectionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'printSection',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> pubDateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pubDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> pubDateGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pubDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> pubDateLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pubDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> pubDateBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pubDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> pubDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pubDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> pubDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pubDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> pubDateContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pubDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> pubDateMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pubDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> pubDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pubDate',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> pubDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pubDate',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sectionNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sectionName',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sectionNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sectionName',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sectionNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sectionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sectionNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sectionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sectionNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sectionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sectionNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sectionName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sectionNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sectionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sectionNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sectionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sectionNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sectionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sectionNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sectionName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sectionNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sectionName',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sectionNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sectionName',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> snippetIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'snippet',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> snippetIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'snippet',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> snippetEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'snippet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> snippetGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'snippet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> snippetLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'snippet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> snippetBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'snippet',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> snippetStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'snippet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> snippetEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'snippet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> snippetContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'snippet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> snippetMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'snippet',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> snippetIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'snippet',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> snippetIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'snippet',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sourceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'source',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sourceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'source',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sourceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sourceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sourceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sourceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'source',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sourceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sourceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sourceContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sourceMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'source',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sourceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'source',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> sourceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'source',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> subsectionNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subsectionName',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> subsectionNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subsectionName',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> subsectionNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subsectionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> subsectionNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subsectionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> subsectionNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subsectionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> subsectionNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subsectionName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> subsectionNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subsectionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> subsectionNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subsectionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> subsectionNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subsectionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> subsectionNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subsectionName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> subsectionNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subsectionName',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> subsectionNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subsectionName',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> typeOfMaterialIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'typeOfMaterial',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> typeOfMaterialIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'typeOfMaterial',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> typeOfMaterialEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'typeOfMaterial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> typeOfMaterialGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'typeOfMaterial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> typeOfMaterialLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'typeOfMaterial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> typeOfMaterialBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'typeOfMaterial',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> typeOfMaterialStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'typeOfMaterial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> typeOfMaterialEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'typeOfMaterial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> typeOfMaterialContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'typeOfMaterial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> typeOfMaterialMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'typeOfMaterial',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> typeOfMaterialIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'typeOfMaterial',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> typeOfMaterialIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'typeOfMaterial',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> uriIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'uri',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> uriIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'uri',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> uriEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> uriGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> uriLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> uriBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uri',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> uriStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> uriEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> uriContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uri',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> uriMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uri',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> uriIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uri',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> uriIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uri',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> webUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'webUrl',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> webUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'webUrl',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> webUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'webUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> webUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'webUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> webUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'webUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> webUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'webUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> webUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'webUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> webUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'webUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> webUrlContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'webUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> webUrlMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'webUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> webUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'webUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> webUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'webUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> wordCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'wordCount',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> wordCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'wordCount',
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> wordCountEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'wordCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> wordCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'wordCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> wordCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'wordCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> wordCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'wordCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DocQueryObject on QueryBuilder<Doc, Doc, QFilterCondition> {
  QueryBuilder<Doc, Doc, QAfterFilterCondition> byline(FilterQuery<Byline> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'byline');
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> headline(
      FilterQuery<Headline> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'headline');
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> keywordsElement(
      FilterQuery<Keyword> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'keywords');
    });
  }

  QueryBuilder<Doc, Doc, QAfterFilterCondition> multimediaElement(
      FilterQuery<Multimedia> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'multimedia');
    });
  }
}

extension DocQueryLinks on QueryBuilder<Doc, Doc, QFilterCondition> {}

extension DocQuerySortBy on QueryBuilder<Doc, Doc, QSortBy> {
  QueryBuilder<Doc, Doc, QAfterSortBy> sortByDocAbstract() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docAbstract', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortByDocAbstractDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docAbstract', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortByDocId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docId', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortByDocIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docId', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortByDocumentType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentType', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortByDocumentTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentType', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortByLeadParagraph() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadParagraph', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortByLeadParagraphDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadParagraph', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortByNewsDesk() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newsDesk', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortByNewsDeskDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newsDesk', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortByPrintPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'printPage', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortByPrintPageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'printPage', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortByPrintSection() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'printSection', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortByPrintSectionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'printSection', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortByPubDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pubDate', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortByPubDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pubDate', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortBySectionName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sectionName', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortBySectionNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sectionName', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortBySnippet() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'snippet', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortBySnippetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'snippet', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortBySource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'source', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortBySourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'source', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortBySubsectionName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subsectionName', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortBySubsectionNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subsectionName', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortByTypeOfMaterial() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeOfMaterial', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortByTypeOfMaterialDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeOfMaterial', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortByUri() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uri', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortByUriDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uri', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortByWebUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'webUrl', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortByWebUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'webUrl', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortByWordCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wordCount', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> sortByWordCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wordCount', Sort.desc);
    });
  }
}

extension DocQuerySortThenBy on QueryBuilder<Doc, Doc, QSortThenBy> {
  QueryBuilder<Doc, Doc, QAfterSortBy> thenByDocAbstract() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docAbstract', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByDocAbstractDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docAbstract', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByDocId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docId', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByDocIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docId', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByDocumentType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentType', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByDocumentTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentType', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByLeadParagraph() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadParagraph', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByLeadParagraphDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadParagraph', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByNewsDesk() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newsDesk', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByNewsDeskDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newsDesk', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByPrintPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'printPage', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByPrintPageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'printPage', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByPrintSection() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'printSection', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByPrintSectionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'printSection', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByPubDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pubDate', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByPubDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pubDate', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenBySectionName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sectionName', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenBySectionNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sectionName', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenBySnippet() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'snippet', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenBySnippetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'snippet', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenBySource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'source', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenBySourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'source', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenBySubsectionName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subsectionName', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenBySubsectionNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subsectionName', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByTypeOfMaterial() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeOfMaterial', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByTypeOfMaterialDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeOfMaterial', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByUri() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uri', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByUriDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uri', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByWebUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'webUrl', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByWebUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'webUrl', Sort.desc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByWordCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wordCount', Sort.asc);
    });
  }

  QueryBuilder<Doc, Doc, QAfterSortBy> thenByWordCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wordCount', Sort.desc);
    });
  }
}

extension DocQueryWhereDistinct on QueryBuilder<Doc, Doc, QDistinct> {
  QueryBuilder<Doc, Doc, QDistinct> distinctByDocAbstract(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'docAbstract', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Doc, Doc, QDistinct> distinctByDocId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'docId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Doc, Doc, QDistinct> distinctByDocumentType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'documentType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Doc, Doc, QDistinct> distinctByLeadParagraph(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leadParagraph',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Doc, Doc, QDistinct> distinctByNewsDesk(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'newsDesk', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Doc, Doc, QDistinct> distinctByPrintPage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'printPage', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Doc, Doc, QDistinct> distinctByPrintSection(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'printSection', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Doc, Doc, QDistinct> distinctByPubDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pubDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Doc, Doc, QDistinct> distinctBySectionName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sectionName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Doc, Doc, QDistinct> distinctBySnippet(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'snippet', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Doc, Doc, QDistinct> distinctBySource(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'source', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Doc, Doc, QDistinct> distinctBySubsectionName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subsectionName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Doc, Doc, QDistinct> distinctByTypeOfMaterial(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'typeOfMaterial',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Doc, Doc, QDistinct> distinctByUri({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uri', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Doc, Doc, QDistinct> distinctByWebUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'webUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Doc, Doc, QDistinct> distinctByWordCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'wordCount');
    });
  }
}

extension DocQueryProperty on QueryBuilder<Doc, Doc, QQueryProperty> {
  QueryBuilder<Doc, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Doc, Byline?, QQueryOperations> bylineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'byline');
    });
  }

  QueryBuilder<Doc, String?, QQueryOperations> docAbstractProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'docAbstract');
    });
  }

  QueryBuilder<Doc, String?, QQueryOperations> docIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'docId');
    });
  }

  QueryBuilder<Doc, String?, QQueryOperations> documentTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'documentType');
    });
  }

  QueryBuilder<Doc, Headline, QQueryOperations> headlineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'headline');
    });
  }

  QueryBuilder<Doc, List<Keyword>?, QQueryOperations> keywordsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'keywords');
    });
  }

  QueryBuilder<Doc, String?, QQueryOperations> leadParagraphProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leadParagraph');
    });
  }

  QueryBuilder<Doc, List<Multimedia>?, QQueryOperations> multimediaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'multimedia');
    });
  }

  QueryBuilder<Doc, String?, QQueryOperations> newsDeskProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'newsDesk');
    });
  }

  QueryBuilder<Doc, String?, QQueryOperations> printPageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'printPage');
    });
  }

  QueryBuilder<Doc, String?, QQueryOperations> printSectionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'printSection');
    });
  }

  QueryBuilder<Doc, String, QQueryOperations> pubDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pubDate');
    });
  }

  QueryBuilder<Doc, String?, QQueryOperations> sectionNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sectionName');
    });
  }

  QueryBuilder<Doc, String?, QQueryOperations> snippetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'snippet');
    });
  }

  QueryBuilder<Doc, String?, QQueryOperations> sourceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'source');
    });
  }

  QueryBuilder<Doc, String?, QQueryOperations> subsectionNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subsectionName');
    });
  }

  QueryBuilder<Doc, String?, QQueryOperations> typeOfMaterialProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'typeOfMaterial');
    });
  }

  QueryBuilder<Doc, String?, QQueryOperations> uriProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uri');
    });
  }

  QueryBuilder<Doc, String?, QQueryOperations> webUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'webUrl');
    });
  }

  QueryBuilder<Doc, int?, QQueryOperations> wordCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'wordCount');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const BylineSchema = Schema(
  name: r'Byline',
  id: -3100690629115918522,
  properties: {
    r'organization': PropertySchema(
      id: 0,
      name: r'organization',
      type: IsarType.string,
    ),
    r'original': PropertySchema(
      id: 1,
      name: r'original',
      type: IsarType.string,
    ),
    r'person': PropertySchema(
      id: 2,
      name: r'person',
      type: IsarType.objectList,
      target: r'Person',
    )
  },
  estimateSize: _bylineEstimateSize,
  serialize: _bylineSerialize,
  deserialize: _bylineDeserialize,
  deserializeProp: _bylineDeserializeProp,
);

int _bylineEstimateSize(
  Byline object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.organization;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.original;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.person;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[Person]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += PersonSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _bylineSerialize(
  Byline object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.organization);
  writer.writeString(offsets[1], object.original);
  writer.writeObjectList<Person>(
    offsets[2],
    allOffsets,
    PersonSchema.serialize,
    object.person,
  );
}

Byline _bylineDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Byline(
    organization: reader.readStringOrNull(offsets[0]),
    original: reader.readStringOrNull(offsets[1]),
    person: reader.readObjectList<Person>(
      offsets[2],
      PersonSchema.deserialize,
      allOffsets,
      Person(),
    ),
  );
  return object;
}

P _bylineDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readObjectList<Person>(
        offset,
        PersonSchema.deserialize,
        allOffsets,
        Person(),
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension BylineQueryFilter on QueryBuilder<Byline, Byline, QFilterCondition> {
  QueryBuilder<Byline, Byline, QAfterFilterCondition> organizationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'organization',
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> organizationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'organization',
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> organizationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> organizationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> organizationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> organizationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'organization',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> organizationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> organizationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> organizationContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> organizationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'organization',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> organizationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'organization',
        value: '',
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> organizationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'organization',
        value: '',
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> originalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'original',
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> originalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'original',
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> originalEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'original',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> originalGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'original',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> originalLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'original',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> originalBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'original',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> originalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'original',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> originalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'original',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> originalContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'original',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> originalMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'original',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> originalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'original',
        value: '',
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> originalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'original',
        value: '',
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> personIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'person',
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> personIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'person',
      ));
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> personLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'person',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> personIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'person',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> personIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'person',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> personLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'person',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> personLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'person',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Byline, Byline, QAfterFilterCondition> personLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'person',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension BylineQueryObject on QueryBuilder<Byline, Byline, QFilterCondition> {
  QueryBuilder<Byline, Byline, QAfterFilterCondition> personElement(
      FilterQuery<Person> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'person');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const PersonSchema = Schema(
  name: r'Person',
  id: 7854610480646705599,
  properties: {
    r'firstname': PropertySchema(
      id: 0,
      name: r'firstname',
      type: IsarType.string,
    ),
    r'lastname': PropertySchema(
      id: 1,
      name: r'lastname',
      type: IsarType.string,
    ),
    r'middlename': PropertySchema(
      id: 2,
      name: r'middlename',
      type: IsarType.string,
    ),
    r'organization': PropertySchema(
      id: 3,
      name: r'organization',
      type: IsarType.string,
    ),
    r'qualifier': PropertySchema(
      id: 4,
      name: r'qualifier',
      type: IsarType.string,
    ),
    r'rank': PropertySchema(
      id: 5,
      name: r'rank',
      type: IsarType.long,
    ),
    r'role': PropertySchema(
      id: 6,
      name: r'role',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 7,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _personEstimateSize,
  serialize: _personSerialize,
  deserialize: _personDeserialize,
  deserializeProp: _personDeserializeProp,
);

int _personEstimateSize(
  Person object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.firstname;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.lastname;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.middlename;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.organization;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.qualifier;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.role;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.title;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _personSerialize(
  Person object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.firstname);
  writer.writeString(offsets[1], object.lastname);
  writer.writeString(offsets[2], object.middlename);
  writer.writeString(offsets[3], object.organization);
  writer.writeString(offsets[4], object.qualifier);
  writer.writeLong(offsets[5], object.rank);
  writer.writeString(offsets[6], object.role);
  writer.writeString(offsets[7], object.title);
}

Person _personDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Person(
    firstname: reader.readStringOrNull(offsets[0]),
    lastname: reader.readStringOrNull(offsets[1]),
    middlename: reader.readStringOrNull(offsets[2]),
    organization: reader.readStringOrNull(offsets[3]),
    qualifier: reader.readStringOrNull(offsets[4]),
    rank: reader.readLongOrNull(offsets[5]),
    role: reader.readStringOrNull(offsets[6]),
    title: reader.readStringOrNull(offsets[7]),
  );
  return object;
}

P _personDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension PersonQueryFilter on QueryBuilder<Person, Person, QFilterCondition> {
  QueryBuilder<Person, Person, QAfterFilterCondition> firstnameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'firstname',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstnameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'firstname',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstnameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstnameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstnameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstnameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'firstname',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstnameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstnameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstnameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'firstname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstnameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'firstname',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstnameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstname',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> firstnameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'firstname',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastnameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastname',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastnameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastname',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastnameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastnameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastnameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastnameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastname',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastnameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lastname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastnameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lastname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastnameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastnameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastname',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastnameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastname',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> lastnameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastname',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> middlenameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'middlename',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> middlenameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'middlename',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> middlenameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'middlename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> middlenameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'middlename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> middlenameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'middlename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> middlenameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'middlename',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> middlenameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'middlename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> middlenameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'middlename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> middlenameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'middlename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> middlenameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'middlename',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> middlenameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'middlename',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> middlenameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'middlename',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> organizationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'organization',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> organizationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'organization',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> organizationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> organizationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> organizationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> organizationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'organization',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> organizationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> organizationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> organizationContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'organization',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> organizationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'organization',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> organizationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'organization',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> organizationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'organization',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> qualifierIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'qualifier',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> qualifierIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'qualifier',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> qualifierEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qualifier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> qualifierGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'qualifier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> qualifierLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'qualifier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> qualifierBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'qualifier',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> qualifierStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'qualifier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> qualifierEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'qualifier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> qualifierContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'qualifier',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> qualifierMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'qualifier',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> qualifierIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qualifier',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> qualifierIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'qualifier',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> rankIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rank',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> rankIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rank',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> rankEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rank',
        value: value,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> rankGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rank',
        value: value,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> rankLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rank',
        value: value,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> rankBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rank',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> roleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'role',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> roleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'role',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> roleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> roleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> roleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> roleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'role',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> roleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> roleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> roleContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> roleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'role',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> roleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'role',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> roleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'role',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> titleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> titleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> titleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> titleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<Person, Person, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension PersonQueryObject on QueryBuilder<Person, Person, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const HeadlineSchema = Schema(
  name: r'Headline',
  id: -6428820548991516558,
  properties: {
    r'contentKicker': PropertySchema(
      id: 0,
      name: r'contentKicker',
      type: IsarType.string,
    ),
    r'kicker': PropertySchema(
      id: 1,
      name: r'kicker',
      type: IsarType.string,
    ),
    r'main': PropertySchema(
      id: 2,
      name: r'main',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'printHeadline': PropertySchema(
      id: 4,
      name: r'printHeadline',
      type: IsarType.string,
    ),
    r'seo': PropertySchema(
      id: 5,
      name: r'seo',
      type: IsarType.string,
    ),
    r'sub': PropertySchema(
      id: 6,
      name: r'sub',
      type: IsarType.string,
    )
  },
  estimateSize: _headlineEstimateSize,
  serialize: _headlineSerialize,
  deserialize: _headlineDeserialize,
  deserializeProp: _headlineDeserializeProp,
);

int _headlineEstimateSize(
  Headline object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.contentKicker;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.kicker;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.main.length * 3;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.printHeadline;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.seo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.sub;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _headlineSerialize(
  Headline object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.contentKicker);
  writer.writeString(offsets[1], object.kicker);
  writer.writeString(offsets[2], object.main);
  writer.writeString(offsets[3], object.name);
  writer.writeString(offsets[4], object.printHeadline);
  writer.writeString(offsets[5], object.seo);
  writer.writeString(offsets[6], object.sub);
}

Headline _headlineDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Headline(
    contentKicker: reader.readStringOrNull(offsets[0]),
    kicker: reader.readStringOrNull(offsets[1]),
    main: reader.readStringOrNull(offsets[2]) ?? '',
    name: reader.readStringOrNull(offsets[3]),
    printHeadline: reader.readStringOrNull(offsets[4]),
    seo: reader.readStringOrNull(offsets[5]),
    sub: reader.readStringOrNull(offsets[6]),
  );
  return object;
}

P _headlineDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension HeadlineQueryFilter
    on QueryBuilder<Headline, Headline, QFilterCondition> {
  QueryBuilder<Headline, Headline, QAfterFilterCondition>
      contentKickerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'contentKicker',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition>
      contentKickerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'contentKicker',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> contentKickerEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contentKicker',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition>
      contentKickerGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'contentKicker',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> contentKickerLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'contentKicker',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> contentKickerBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'contentKicker',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition>
      contentKickerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'contentKicker',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> contentKickerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'contentKicker',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> contentKickerContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'contentKicker',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> contentKickerMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'contentKicker',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition>
      contentKickerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contentKicker',
        value: '',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition>
      contentKickerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'contentKicker',
        value: '',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> kickerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'kicker',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> kickerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'kicker',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> kickerEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kicker',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> kickerGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kicker',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> kickerLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kicker',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> kickerBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kicker',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> kickerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'kicker',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> kickerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'kicker',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> kickerContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'kicker',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> kickerMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'kicker',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> kickerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kicker',
        value: '',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> kickerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kicker',
        value: '',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> mainEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'main',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> mainGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'main',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> mainLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'main',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> mainBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'main',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> mainStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'main',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> mainEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'main',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> mainContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'main',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> mainMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'main',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> mainIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'main',
        value: '',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> mainIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'main',
        value: '',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition>
      printHeadlineIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'printHeadline',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition>
      printHeadlineIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'printHeadline',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> printHeadlineEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'printHeadline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition>
      printHeadlineGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'printHeadline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> printHeadlineLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'printHeadline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> printHeadlineBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'printHeadline',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition>
      printHeadlineStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'printHeadline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> printHeadlineEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'printHeadline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> printHeadlineContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'printHeadline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> printHeadlineMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'printHeadline',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition>
      printHeadlineIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'printHeadline',
        value: '',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition>
      printHeadlineIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'printHeadline',
        value: '',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> seoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'seo',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> seoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'seo',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> seoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> seoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'seo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> seoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'seo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> seoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'seo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> seoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'seo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> seoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'seo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> seoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'seo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> seoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'seo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> seoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seo',
        value: '',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> seoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'seo',
        value: '',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> subIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sub',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> subIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sub',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> subEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sub',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> subGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sub',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> subLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sub',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> subBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sub',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> subStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sub',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> subEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sub',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> subContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sub',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> subMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sub',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> subIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sub',
        value: '',
      ));
    });
  }

  QueryBuilder<Headline, Headline, QAfterFilterCondition> subIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sub',
        value: '',
      ));
    });
  }
}

extension HeadlineQueryObject
    on QueryBuilder<Headline, Headline, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const KeywordSchema = Schema(
  name: r'Keyword',
  id: -2703684847092554079,
  properties: {
    r'major': PropertySchema(
      id: 0,
      name: r'major',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    ),
    r'rank': PropertySchema(
      id: 2,
      name: r'rank',
      type: IsarType.long,
    ),
    r'value': PropertySchema(
      id: 3,
      name: r'value',
      type: IsarType.string,
    )
  },
  estimateSize: _keywordEstimateSize,
  serialize: _keywordSerialize,
  deserialize: _keywordDeserialize,
  deserializeProp: _keywordDeserializeProp,
);

int _keywordEstimateSize(
  Keyword object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.major;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.value;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _keywordSerialize(
  Keyword object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.major);
  writer.writeString(offsets[1], object.name);
  writer.writeLong(offsets[2], object.rank);
  writer.writeString(offsets[3], object.value);
}

Keyword _keywordDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Keyword(
    major: reader.readStringOrNull(offsets[0]),
    name: reader.readStringOrNull(offsets[1]),
    rank: reader.readLongOrNull(offsets[2]),
    value: reader.readStringOrNull(offsets[3]),
  );
  return object;
}

P _keywordDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension KeywordQueryFilter
    on QueryBuilder<Keyword, Keyword, QFilterCondition> {
  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> majorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'major',
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> majorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'major',
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> majorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'major',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> majorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'major',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> majorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'major',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> majorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'major',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> majorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'major',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> majorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'major',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> majorContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'major',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> majorMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'major',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> majorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'major',
        value: '',
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> majorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'major',
        value: '',
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> rankIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rank',
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> rankIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rank',
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> rankEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rank',
        value: value,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> rankGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rank',
        value: value,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> rankLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rank',
        value: value,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> rankBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rank',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> valueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'value',
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> valueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'value',
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> valueEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> valueGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> valueLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> valueBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> valueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> valueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> valueContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> valueMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'value',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> valueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: '',
      ));
    });
  }

  QueryBuilder<Keyword, Keyword, QAfterFilterCondition> valueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'value',
        value: '',
      ));
    });
  }
}

extension KeywordQueryObject
    on QueryBuilder<Keyword, Keyword, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const MultimediaSchema = Schema(
  name: r'Multimedia',
  id: 444194941859580657,
  properties: {
    r'caption': PropertySchema(
      id: 0,
      name: r'caption',
      type: IsarType.string,
    ),
    r'credit': PropertySchema(
      id: 1,
      name: r'credit',
      type: IsarType.string,
    ),
    r'cropName': PropertySchema(
      id: 2,
      name: r'cropName',
      type: IsarType.string,
    ),
    r'height': PropertySchema(
      id: 3,
      name: r'height',
      type: IsarType.long,
    ),
    r'legacy': PropertySchema(
      id: 4,
      name: r'legacy',
      type: IsarType.object,
      target: r'Legacy',
    ),
    r'rank': PropertySchema(
      id: 5,
      name: r'rank',
      type: IsarType.long,
    ),
    r'subType': PropertySchema(
      id: 6,
      name: r'subType',
      type: IsarType.string,
    ),
    r'subtype': PropertySchema(
      id: 7,
      name: r'subtype',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 8,
      name: r'type',
      type: IsarType.string,
    ),
    r'url': PropertySchema(
      id: 9,
      name: r'url',
      type: IsarType.string,
    ),
    r'width': PropertySchema(
      id: 10,
      name: r'width',
      type: IsarType.long,
    )
  },
  estimateSize: _multimediaEstimateSize,
  serialize: _multimediaSerialize,
  deserialize: _multimediaDeserialize,
  deserializeProp: _multimediaDeserializeProp,
);

int _multimediaEstimateSize(
  Multimedia object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.caption;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.credit;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.cropName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.legacy;
    if (value != null) {
      bytesCount +=
          3 + LegacySchema.estimateSize(value, allOffsets[Legacy]!, allOffsets);
    }
  }
  {
    final value = object.subType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.subtype;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.type;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.url;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _multimediaSerialize(
  Multimedia object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.caption);
  writer.writeString(offsets[1], object.credit);
  writer.writeString(offsets[2], object.cropName);
  writer.writeLong(offsets[3], object.height);
  writer.writeObject<Legacy>(
    offsets[4],
    allOffsets,
    LegacySchema.serialize,
    object.legacy,
  );
  writer.writeLong(offsets[5], object.rank);
  writer.writeString(offsets[6], object.subType);
  writer.writeString(offsets[7], object.subtype);
  writer.writeString(offsets[8], object.type);
  writer.writeString(offsets[9], object.url);
  writer.writeLong(offsets[10], object.width);
}

Multimedia _multimediaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Multimedia(
    caption: reader.readStringOrNull(offsets[0]),
    credit: reader.readStringOrNull(offsets[1]),
    cropName: reader.readStringOrNull(offsets[2]),
    height: reader.readLongOrNull(offsets[3]),
    legacy: reader.readObjectOrNull<Legacy>(
      offsets[4],
      LegacySchema.deserialize,
      allOffsets,
    ),
    rank: reader.readLongOrNull(offsets[5]),
    subType: reader.readStringOrNull(offsets[6]),
    subtype: reader.readStringOrNull(offsets[7]),
    type: reader.readStringOrNull(offsets[8]),
    url: reader.readStringOrNull(offsets[9]),
    width: reader.readLongOrNull(offsets[10]),
  );
  return object;
}

P _multimediaDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readObjectOrNull<Legacy>(
        offset,
        LegacySchema.deserialize,
        allOffsets,
      )) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension MultimediaQueryFilter
    on QueryBuilder<Multimedia, Multimedia, QFilterCondition> {
  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> captionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'caption',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition>
      captionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'caption',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> captionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'caption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition>
      captionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'caption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> captionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'caption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> captionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'caption',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> captionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'caption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> captionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'caption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> captionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'caption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> captionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'caption',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> captionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'caption',
        value: '',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition>
      captionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'caption',
        value: '',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> creditIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'credit',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition>
      creditIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'credit',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> creditEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'credit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> creditGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'credit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> creditLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'credit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> creditBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'credit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> creditStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'credit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> creditEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'credit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> creditContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'credit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> creditMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'credit',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> creditIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'credit',
        value: '',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition>
      creditIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'credit',
        value: '',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> cropNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cropName',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition>
      cropNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cropName',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> cropNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cropName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition>
      cropNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cropName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> cropNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cropName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> cropNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cropName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition>
      cropNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cropName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> cropNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cropName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> cropNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cropName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> cropNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cropName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition>
      cropNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cropName',
        value: '',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition>
      cropNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cropName',
        value: '',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> heightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'height',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition>
      heightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'height',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> heightEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'height',
        value: value,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> heightGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'height',
        value: value,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> heightLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'height',
        value: value,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> heightBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'height',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> legacyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'legacy',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition>
      legacyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'legacy',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> rankIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rank',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> rankIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rank',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> rankEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rank',
        value: value,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> rankGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rank',
        value: value,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> rankLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rank',
        value: value,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> rankBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rank',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> subTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subType',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition>
      subTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subType',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> subTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition>
      subTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> subTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> subTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> subTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> subTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> subTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> subTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> subTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subType',
        value: '',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition>
      subTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subType',
        value: '',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> subtypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subtype',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition>
      subtypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subtype',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> subtypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subtype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition>
      subtypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subtype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> subtypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subtype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> subtypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subtype',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> subtypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subtype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> subtypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subtype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> subtypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subtype',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> subtypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subtype',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> subtypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subtype',
        value: '',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition>
      subtypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subtype',
        value: '',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> typeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> typeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> typeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> typeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> typeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> typeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> urlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> urlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> urlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> urlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> urlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> urlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'url',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> urlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> urlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> widthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'width',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> widthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'width',
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> widthEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'width',
        value: value,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> widthGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'width',
        value: value,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> widthLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'width',
        value: value,
      ));
    });
  }

  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> widthBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'width',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MultimediaQueryObject
    on QueryBuilder<Multimedia, Multimedia, QFilterCondition> {
  QueryBuilder<Multimedia, Multimedia, QAfterFilterCondition> legacy(
      FilterQuery<Legacy> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'legacy');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const LegacySchema = Schema(
  name: r'Legacy',
  id: 2165633881672880542,
  properties: {
    r'thumbnail': PropertySchema(
      id: 0,
      name: r'thumbnail',
      type: IsarType.string,
    ),
    r'thumbnailheight': PropertySchema(
      id: 1,
      name: r'thumbnailheight',
      type: IsarType.long,
    ),
    r'thumbnailwidth': PropertySchema(
      id: 2,
      name: r'thumbnailwidth',
      type: IsarType.long,
    ),
    r'wide': PropertySchema(
      id: 3,
      name: r'wide',
      type: IsarType.string,
    ),
    r'wideheight': PropertySchema(
      id: 4,
      name: r'wideheight',
      type: IsarType.long,
    ),
    r'widewidth': PropertySchema(
      id: 5,
      name: r'widewidth',
      type: IsarType.long,
    ),
    r'xlarge': PropertySchema(
      id: 6,
      name: r'xlarge',
      type: IsarType.string,
    ),
    r'xlargeheight': PropertySchema(
      id: 7,
      name: r'xlargeheight',
      type: IsarType.long,
    ),
    r'xlargewidth': PropertySchema(
      id: 8,
      name: r'xlargewidth',
      type: IsarType.long,
    )
  },
  estimateSize: _legacyEstimateSize,
  serialize: _legacySerialize,
  deserialize: _legacyDeserialize,
  deserializeProp: _legacyDeserializeProp,
);

int _legacyEstimateSize(
  Legacy object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.thumbnail;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.wide;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.xlarge;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _legacySerialize(
  Legacy object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.thumbnail);
  writer.writeLong(offsets[1], object.thumbnailheight);
  writer.writeLong(offsets[2], object.thumbnailwidth);
  writer.writeString(offsets[3], object.wide);
  writer.writeLong(offsets[4], object.wideheight);
  writer.writeLong(offsets[5], object.widewidth);
  writer.writeString(offsets[6], object.xlarge);
  writer.writeLong(offsets[7], object.xlargeheight);
  writer.writeLong(offsets[8], object.xlargewidth);
}

Legacy _legacyDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Legacy(
    thumbnail: reader.readStringOrNull(offsets[0]),
    thumbnailheight: reader.readLongOrNull(offsets[1]),
    thumbnailwidth: reader.readLongOrNull(offsets[2]),
    wide: reader.readStringOrNull(offsets[3]),
    wideheight: reader.readLongOrNull(offsets[4]),
    widewidth: reader.readLongOrNull(offsets[5]),
    xlarge: reader.readStringOrNull(offsets[6]),
    xlargeheight: reader.readLongOrNull(offsets[7]),
    xlargewidth: reader.readLongOrNull(offsets[8]),
  );
  return object;
}

P _legacyDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension LegacyQueryFilter on QueryBuilder<Legacy, Legacy, QFilterCondition> {
  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> thumbnailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'thumbnail',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> thumbnailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'thumbnail',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> thumbnailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> thumbnailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> thumbnailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> thumbnailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'thumbnail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> thumbnailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> thumbnailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> thumbnailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> thumbnailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'thumbnail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> thumbnailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thumbnail',
        value: '',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> thumbnailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'thumbnail',
        value: '',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> thumbnailheightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'thumbnailheight',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition>
      thumbnailheightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'thumbnailheight',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> thumbnailheightEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thumbnailheight',
        value: value,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition>
      thumbnailheightGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'thumbnailheight',
        value: value,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> thumbnailheightLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'thumbnailheight',
        value: value,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> thumbnailheightBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'thumbnailheight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> thumbnailwidthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'thumbnailwidth',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition>
      thumbnailwidthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'thumbnailwidth',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> thumbnailwidthEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thumbnailwidth',
        value: value,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> thumbnailwidthGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'thumbnailwidth',
        value: value,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> thumbnailwidthLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'thumbnailwidth',
        value: value,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> thumbnailwidthBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'thumbnailwidth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> wideIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'wide',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> wideIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'wide',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> wideEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'wide',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> wideGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'wide',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> wideLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'wide',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> wideBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'wide',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> wideStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'wide',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> wideEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'wide',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> wideContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'wide',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> wideMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'wide',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> wideIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'wide',
        value: '',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> wideIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'wide',
        value: '',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> wideheightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'wideheight',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> wideheightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'wideheight',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> wideheightEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'wideheight',
        value: value,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> wideheightGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'wideheight',
        value: value,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> wideheightLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'wideheight',
        value: value,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> wideheightBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'wideheight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> widewidthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'widewidth',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> widewidthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'widewidth',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> widewidthEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'widewidth',
        value: value,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> widewidthGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'widewidth',
        value: value,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> widewidthLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'widewidth',
        value: value,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> widewidthBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'widewidth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'xlarge',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'xlarge',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'xlarge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'xlarge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'xlarge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'xlarge',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'xlarge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'xlarge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'xlarge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'xlarge',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'xlarge',
        value: '',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'xlarge',
        value: '',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargeheightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'xlargeheight',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargeheightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'xlargeheight',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargeheightEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'xlargeheight',
        value: value,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargeheightGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'xlargeheight',
        value: value,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargeheightLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'xlargeheight',
        value: value,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargeheightBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'xlargeheight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargewidthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'xlargewidth',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargewidthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'xlargewidth',
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargewidthEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'xlargewidth',
        value: value,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargewidthGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'xlargewidth',
        value: value,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargewidthLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'xlargewidth',
        value: value,
      ));
    });
  }

  QueryBuilder<Legacy, Legacy, QAfterFilterCondition> xlargewidthBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'xlargewidth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LegacyQueryObject on QueryBuilder<Legacy, Legacy, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const MetaSchema = Schema(
  name: r'Meta',
  id: 3011675413520335034,
  properties: {
    r'hits': PropertySchema(
      id: 0,
      name: r'hits',
      type: IsarType.long,
    ),
    r'offset': PropertySchema(
      id: 1,
      name: r'offset',
      type: IsarType.long,
    ),
    r'time': PropertySchema(
      id: 2,
      name: r'time',
      type: IsarType.long,
    )
  },
  estimateSize: _metaEstimateSize,
  serialize: _metaSerialize,
  deserialize: _metaDeserialize,
  deserializeProp: _metaDeserializeProp,
);

int _metaEstimateSize(
  Meta object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _metaSerialize(
  Meta object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.hits);
  writer.writeLong(offsets[1], object.offset);
  writer.writeLong(offsets[2], object.time);
}

Meta _metaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Meta(
    hits: reader.readLongOrNull(offsets[0]),
    offset: reader.readLongOrNull(offsets[1]),
    time: reader.readLongOrNull(offsets[2]),
  );
  return object;
}

P _metaDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension MetaQueryFilter on QueryBuilder<Meta, Meta, QFilterCondition> {
  QueryBuilder<Meta, Meta, QAfterFilterCondition> hitsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hits',
      ));
    });
  }

  QueryBuilder<Meta, Meta, QAfterFilterCondition> hitsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hits',
      ));
    });
  }

  QueryBuilder<Meta, Meta, QAfterFilterCondition> hitsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hits',
        value: value,
      ));
    });
  }

  QueryBuilder<Meta, Meta, QAfterFilterCondition> hitsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hits',
        value: value,
      ));
    });
  }

  QueryBuilder<Meta, Meta, QAfterFilterCondition> hitsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hits',
        value: value,
      ));
    });
  }

  QueryBuilder<Meta, Meta, QAfterFilterCondition> hitsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hits',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Meta, Meta, QAfterFilterCondition> offsetIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'offset',
      ));
    });
  }

  QueryBuilder<Meta, Meta, QAfterFilterCondition> offsetIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'offset',
      ));
    });
  }

  QueryBuilder<Meta, Meta, QAfterFilterCondition> offsetEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'offset',
        value: value,
      ));
    });
  }

  QueryBuilder<Meta, Meta, QAfterFilterCondition> offsetGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'offset',
        value: value,
      ));
    });
  }

  QueryBuilder<Meta, Meta, QAfterFilterCondition> offsetLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'offset',
        value: value,
      ));
    });
  }

  QueryBuilder<Meta, Meta, QAfterFilterCondition> offsetBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'offset',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Meta, Meta, QAfterFilterCondition> timeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'time',
      ));
    });
  }

  QueryBuilder<Meta, Meta, QAfterFilterCondition> timeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'time',
      ));
    });
  }

  QueryBuilder<Meta, Meta, QAfterFilterCondition> timeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<Meta, Meta, QAfterFilterCondition> timeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<Meta, Meta, QAfterFilterCondition> timeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<Meta, Meta, QAfterFilterCondition> timeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'time',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MetaQueryObject on QueryBuilder<Meta, Meta, QFilterCondition> {}
