import 'package:nyt/presentation/results/domain/domain.dart';

class SearchResultModel {
  final String? status;
  final String? copyright;
  final Response? response;

  SearchResultModel({
    this.status,
    this.copyright,
    this.response,
  });

  List<ResultEntity> toEntity() {
    return response!.docs!
        .map(
          (e) => ResultEntity(
            title: e.headline!.main!,
            datePublished: DateTime.parse(e.pubDate!),
          ),
        )
        .toList();
  }

  factory SearchResultModel.fromJson(Map<String, dynamic> json) =>
      SearchResultModel(
        status: json["status"],
        copyright: json["copyright"],
        response: json["response"] == null
            ? null
            : Response.fromJson(json["response"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "copyright": copyright,
        "response": response?.toJson(),
      };
}

class Response {
  final List<Doc>? docs;
  final Meta? meta;

  Response({
    this.docs,
    this.meta,
  });

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        docs: json["docs"] == null
            ? []
            : List<Doc>.from(json["docs"]!.map((x) => Doc.fromJson(x))),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "docs": docs == null
            ? []
            : List<dynamic>.from(docs!.map((x) => x.toJson())),
        "meta": meta?.toJson(),
      };
}

class Doc {
  final String? docAbstract;
  final String? webUrl;
  final String? snippet;
  final String? leadParagraph;
  final String? source;
  final List<Multimedia>? multimedia;
  final Headline? headline;
  final List<Keyword>? keywords;
  final String? pubDate;
  final String? documentType;
  final String? newsDesk;
  final String? sectionName;
  final String? subsectionName;
  final Byline? byline;
  final String? typeOfMaterial;
  final String? id;
  final int? wordCount;
  final String? uri;
  final String? printSection;
  final String? printPage;

  Doc({
    this.docAbstract,
    this.webUrl,
    this.snippet,
    this.leadParagraph,
    this.source,
    this.multimedia,
    this.headline,
    this.keywords,
    this.pubDate,
    this.documentType,
    this.newsDesk,
    this.sectionName,
    this.subsectionName,
    this.byline,
    this.typeOfMaterial,
    this.id,
    this.wordCount,
    this.uri,
    this.printSection,
    this.printPage,
  });

  factory Doc.fromJson(Map<String, dynamic> json) => Doc(
        docAbstract: json["abstract"],
        webUrl: json["web_url"],
        snippet: json["snippet"],
        leadParagraph: json["lead_paragraph"],
        source: json["source"],
        multimedia: json["multimedia"] == null
            ? []
            : List<Multimedia>.from(
                json["multimedia"]!.map((x) => Multimedia.fromJson(x))),
        headline: json["headline"] == null
            ? null
            : Headline.fromJson(json["headline"]),
        keywords: json["keywords"] == null
            ? []
            : List<Keyword>.from(
                json["keywords"]!.map((x) => Keyword.fromJson(x))),
        pubDate: json["pub_date"],
        documentType: json["document_type"],
        newsDesk: json["news_desk"],
        sectionName: json["section_name"],
        subsectionName: json["subsection_name"],
        byline: json["byline"] == null ? null : Byline.fromJson(json["byline"]),
        typeOfMaterial: json["type_of_material"],
        id: json["_id"],
        wordCount: json["word_count"],
        uri: json["uri"],
        printSection: json["print_section"],
        printPage: json["print_page"],
      );

  Map<String, dynamic> toJson() => {
        "abstract": docAbstract,
        "web_url": webUrl,
        "snippet": snippet,
        "lead_paragraph": leadParagraph,
        "source": source,
        "multimedia": multimedia == null
            ? []
            : List<dynamic>.from(multimedia!.map((x) => x.toJson())),
        "headline": headline?.toJson(),
        "keywords": keywords == null
            ? []
            : List<dynamic>.from(keywords!.map((x) => x.toJson())),
        "pub_date": pubDate,
        "document_type": documentType,
        "news_desk": newsDesk,
        "section_name": sectionName,
        "subsection_name": subsectionName,
        "byline": byline?.toJson(),
        "type_of_material": typeOfMaterial,
        "_id": id,
        "word_count": wordCount,
        "uri": uri,
        "print_section": printSection,
        "print_page": printPage,
      };
}

class Byline {
  final String? original;
  final List<Person>? person;
  final dynamic organization;

  Byline({
    this.original,
    this.person,
    this.organization,
  });

  factory Byline.fromJson(Map<String, dynamic> json) => Byline(
        original: json["original"],
        person: json["person"] == null
            ? []
            : List<Person>.from(json["person"]!.map((x) => Person.fromJson(x))),
        organization: json["organization"],
      );

  Map<String, dynamic> toJson() => {
        "original": original,
        "person": person == null
            ? []
            : List<dynamic>.from(person!.map((x) => x.toJson())),
        "organization": organization,
      };
}

class Person {
  final String? firstname;
  final dynamic middlename;
  final String? lastname;
  final dynamic qualifier;
  final dynamic title;
  final String? role;
  final String? organization;
  final int? rank;

  Person({
    this.firstname,
    this.middlename,
    this.lastname,
    this.qualifier,
    this.title,
    this.role,
    this.organization,
    this.rank,
  });

  factory Person.fromJson(Map<String, dynamic> json) => Person(
        firstname: json["firstname"],
        middlename: json["middlename"],
        lastname: json["lastname"],
        qualifier: json["qualifier"],
        title: json["title"],
        role: json["role"],
        organization: json["organization"],
        rank: json["rank"],
      );

  Map<String, dynamic> toJson() => {
        "firstname": firstname,
        "middlename": middlename,
        "lastname": lastname,
        "qualifier": qualifier,
        "title": title,
        "role": role,
        "organization": organization,
        "rank": rank,
      };
}

class Headline {
  final String? main;
  final String? kicker;
  final dynamic contentKicker;
  final String? printHeadline;
  final dynamic name;
  final dynamic seo;
  final dynamic sub;

  Headline({
    this.main,
    this.kicker,
    this.contentKicker,
    this.printHeadline,
    this.name,
    this.seo,
    this.sub,
  });

  factory Headline.fromJson(Map<String, dynamic> json) => Headline(
        main: json["main"],
        kicker: json["kicker"],
        contentKicker: json["content_kicker"],
        printHeadline: json["print_headline"],
        name: json["name"],
        seo: json["seo"],
        sub: json["sub"],
      );

  Map<String, dynamic> toJson() => {
        "main": main,
        "kicker": kicker,
        "content_kicker": contentKicker,
        "print_headline": printHeadline,
        "name": name,
        "seo": seo,
        "sub": sub,
      };
}

class Keyword {
  final String? name;
  final String? value;
  final int? rank;
  final String? major;

  Keyword({
    this.name,
    this.value,
    this.rank,
    this.major,
  });

  factory Keyword.fromJson(Map<String, dynamic> json) => Keyword(
        name: json["name"],
        value: json["value"],
        rank: json["rank"],
        major: json["major"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "value": value,
        "rank": rank,
        "major": major,
      };
}

class Multimedia {
  final int? rank;
  final String? subtype;
  final dynamic caption;
  final dynamic credit;
  final String? type;
  final String? url;
  final int? height;
  final int? width;
  final Legacy? legacy;
  final String? subType;
  final String? cropName;

  Multimedia({
    this.rank,
    this.subtype,
    this.caption,
    this.credit,
    this.type,
    this.url,
    this.height,
    this.width,
    this.legacy,
    this.subType,
    this.cropName,
  });

  factory Multimedia.fromJson(Map<String, dynamic> json) => Multimedia(
        rank: json["rank"],
        subtype: json["subtype"],
        caption: json["caption"],
        credit: json["credit"],
        type: json["type"],
        url: json["url"],
        height: json["height"],
        width: json["width"],
        legacy: json["legacy"] == null ? null : Legacy.fromJson(json["legacy"]),
        subType: json["subType"],
        cropName: json["crop_name"],
      );

  Map<String, dynamic> toJson() => {
        "rank": rank,
        "subtype": subtype,
        "caption": caption,
        "credit": credit,
        "type": type,
        "url": url,
        "height": height,
        "width": width,
        "legacy": legacy?.toJson(),
        "subType": subType,
        "crop_name": cropName,
      };
}

class Legacy {
  final String? xlarge;
  final int? xlargewidth;
  final int? xlargeheight;
  final String? thumbnail;
  final int? thumbnailwidth;
  final int? thumbnailheight;
  final int? widewidth;
  final int? wideheight;
  final String? wide;

  Legacy({
    this.xlarge,
    this.xlargewidth,
    this.xlargeheight,
    this.thumbnail,
    this.thumbnailwidth,
    this.thumbnailheight,
    this.widewidth,
    this.wideheight,
    this.wide,
  });

  factory Legacy.fromJson(Map<String, dynamic> json) => Legacy(
        xlarge: json["xlarge"],
        xlargewidth: json["xlargewidth"],
        xlargeheight: json["xlargeheight"],
        thumbnail: json["thumbnail"],
        thumbnailwidth: json["thumbnailwidth"],
        thumbnailheight: json["thumbnailheight"],
        widewidth: json["widewidth"],
        wideheight: json["wideheight"],
        wide: json["wide"],
      );

  Map<String, dynamic> toJson() => {
        "xlarge": xlarge,
        "xlargewidth": xlargewidth,
        "xlargeheight": xlargeheight,
        "thumbnail": thumbnail,
        "thumbnailwidth": thumbnailwidth,
        "thumbnailheight": thumbnailheight,
        "widewidth": widewidth,
        "wideheight": wideheight,
        "wide": wide,
      };
}

class Meta {
  final int? hits;
  final int? offset;
  final int? time;

  Meta({
    this.hits,
    this.offset,
    this.time,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        hits: json["hits"],
        offset: json["offset"],
        time: json["time"],
      );

  Map<String, dynamic> toJson() => {
        "hits": hits,
        "offset": offset,
        "time": time,
      };
}
