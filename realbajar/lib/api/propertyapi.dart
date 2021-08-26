// To parse this JSON data, do
//
//     final realbajar = realbajarFromJson(jsonString);

import 'dart:convert';

List<Realbajar> realbajarFromJson(String str) =>
    List<Realbajar>.from(json.decode(str).map((x) => Realbajar.fromJson(x)));

String realbajarToJson(List<Realbajar> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Realbajar {
  Realbajar({
    this.id,
    this.date,
    this.dateGmt,
    this.guid,
    this.modified,
    this.modifiedGmt,
    this.slug,
    this.status,
    this.type,
    this.link,
    this.title,
    this.content,
    this.excerpt,
    this.author,
    this.featuredMedia,
    this.parent,
    this.menuOrder,
    this.commentStatus,
    this.pingStatus,
    this.template,
    this.propertyFeatures,
    this.propertyTypes,
    this.propertyCities,
    this.propertyStatuses,
    this.propertyMeta,
    this.links,
  });

  int id;
  DateTime date;
  DateTime dateGmt;
  Guid guid;
  DateTime modified;
  DateTime modifiedGmt;
  String slug;
  StatusEnum status;
  Type type;
  String link;
  Guid title;
  Content content;
  Content excerpt;
  int author;
  int featuredMedia;
  int parent;
  int menuOrder;
  Status commentStatus;
  Status pingStatus;
  Template template;
  List<int> propertyFeatures;
  List<int> propertyTypes;
  List<int> propertyCities;
  List<int> propertyStatuses;
  PropertyMeta propertyMeta;
  Links links;

  factory Realbajar.fromJson(Map<String, dynamic> json) => Realbajar(
        id: json["id"],
        date: DateTime.parse(json["date"]),
        dateGmt: DateTime.parse(json["date_gmt"]),
        guid: Guid.fromJson(json["guid"]),
        modified: DateTime.parse(json["modified"]),
        modifiedGmt: DateTime.parse(json["modified_gmt"]),
        slug: json["slug"],
        status: statusEnumValues.map[json["status"]],
        type: typeValues.map[json["type"]],
        link: json["link"],
        title: Guid.fromJson(json["title"]),
        content: Content.fromJson(json["content"]),
        excerpt: Content.fromJson(json["excerpt"]),
        author: json["author"],
        featuredMedia: json["featured_media"],
        parent: json["parent"],
        menuOrder: json["menu_order"],
        commentStatus: statusValues.map[json["comment_status"]],
        pingStatus: statusValues.map[json["ping_status"]],
        template: templateValues.map[json["template"]],
        propertyFeatures:
            List<int>.from(json["property-features"].map((x) => x)),
        propertyTypes: List<int>.from(json["property-types"].map((x) => x)),
        propertyCities: List<int>.from(json["property-cities"].map((x) => x)),
        propertyStatuses:
            List<int>.from(json["property-statuses"].map((x) => x)),
        propertyMeta: PropertyMeta.fromJson(json["property_meta"]),
        links: Links.fromJson(json["_links"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "date": date.toIso8601String(),
        "date_gmt": dateGmt.toIso8601String(),
        "guid": guid.toJson(),
        "modified": modified.toIso8601String(),
        "modified_gmt": modifiedGmt.toIso8601String(),
        "slug": slug,
        "status": statusEnumValues.reverse[status],
        "type": typeValues.reverse[type],
        "link": link,
        "title": title.toJson(),
        "content": content.toJson(),
        "excerpt": excerpt.toJson(),
        "author": author,
        "featured_media": featuredMedia,
        "parent": parent,
        "menu_order": menuOrder,
        "comment_status": statusValues.reverse[commentStatus],
        "ping_status": statusValues.reverse[pingStatus],
        "template": templateValues.reverse[template],
        "property-features": List<dynamic>.from(propertyFeatures.map((x) => x)),
        "property-types": List<dynamic>.from(propertyTypes.map((x) => x)),
        "property-cities": List<dynamic>.from(propertyCities.map((x) => x)),
        "property-statuses": List<dynamic>.from(propertyStatuses.map((x) => x)),
        "property_meta": propertyMeta.toJson(),
        "_links": links.toJson(),
      };
}

enum Status { OPEN, CLOSED }

final statusValues = EnumValues({"closed": Status.CLOSED, "open": Status.OPEN});

class Content {
  Content({
    this.rendered,
    this.protected,
  });

  String rendered;
  bool protected;

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        rendered: json["rendered"],
        protected: json["protected"],
      );

  Map<String, dynamic> toJson() => {
        "rendered": rendered,
        "protected": protected,
      };
}

class Guid {
  Guid({
    this.rendered,
  });

  String rendered;

  factory Guid.fromJson(Map<String, dynamic> json) => Guid(
        rendered: json["rendered"],
      );

  Map<String, dynamic> toJson() => {
        "rendered": rendered,
      };
}

class Links {
  Links({
    this.self,
    this.collection,
    this.about,
    this.author,
    this.replies,
    this.versionHistory,
    this.predecessorVersion,
    this.wpFeaturedmedia,
    this.wpAttachment,
    this.wpTerm,
    this.curies,
  });

  List<About> self;
  List<About> collection;
  List<About> about;
  List<Author> author;
  List<Author> replies;
  List<VersionHistory> versionHistory;
  List<PredecessorVersion> predecessorVersion;
  List<Author> wpFeaturedmedia;
  List<About> wpAttachment;
  List<WpTerm> wpTerm;
  List<Cury> curies;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        self: List<About>.from(json["self"].map((x) => About.fromJson(x))),
        collection:
            List<About>.from(json["collection"].map((x) => About.fromJson(x))),
        about: List<About>.from(json["about"].map((x) => About.fromJson(x))),
        author:
            List<Author>.from(json["author"].map((x) => Author.fromJson(x))),
        replies:
            List<Author>.from(json["replies"].map((x) => Author.fromJson(x))),
        versionHistory: List<VersionHistory>.from(
            json["version-history"].map((x) => VersionHistory.fromJson(x))),
        predecessorVersion: json["predecessor-version"] == null
            ? null
            : List<PredecessorVersion>.from(json["predecessor-version"]
                .map((x) => PredecessorVersion.fromJson(x))),
        wpFeaturedmedia: List<Author>.from(
            json["wp:featuredmedia"].map((x) => Author.fromJson(x))),
        wpAttachment: List<About>.from(
            json["wp:attachment"].map((x) => About.fromJson(x))),
        wpTerm:
            List<WpTerm>.from(json["wp:term"].map((x) => WpTerm.fromJson(x))),
        curies: List<Cury>.from(json["curies"].map((x) => Cury.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "self": List<dynamic>.from(self.map((x) => x.toJson())),
        "collection": List<dynamic>.from(collection.map((x) => x.toJson())),
        "about": List<dynamic>.from(about.map((x) => x.toJson())),
        "author": List<dynamic>.from(author.map((x) => x.toJson())),
        "replies": List<dynamic>.from(replies.map((x) => x.toJson())),
        "version-history":
            List<dynamic>.from(versionHistory.map((x) => x.toJson())),
        "predecessor-version": predecessorVersion == null
            ? null
            : List<dynamic>.from(predecessorVersion.map((x) => x.toJson())),
        "wp:featuredmedia":
            List<dynamic>.from(wpFeaturedmedia.map((x) => x.toJson())),
        "wp:attachment":
            List<dynamic>.from(wpAttachment.map((x) => x.toJson())),
        "wp:term": List<dynamic>.from(wpTerm.map((x) => x.toJson())),
        "curies": List<dynamic>.from(curies.map((x) => x.toJson())),
      };
}

class About {
  About({
    this.href,
  });

  String href;

  factory About.fromJson(Map<String, dynamic> json) => About(
        href: json["href"],
      );

  Map<String, dynamic> toJson() => {
        "href": href,
      };
}

class Author {
  Author({
    this.embeddable,
    this.href,
  });

  bool embeddable;
  String href;

  factory Author.fromJson(Map<String, dynamic> json) => Author(
        embeddable: json["embeddable"],
        href: json["href"],
      );

  Map<String, dynamic> toJson() => {
        "embeddable": embeddable,
        "href": href,
      };
}

class Cury {
  Cury({
    this.name,
    this.href,
    this.templated,
  });

  Name name;
  Href href;
  bool templated;

  factory Cury.fromJson(Map<String, dynamic> json) => Cury(
        name: nameValues.map[json["name"]],
        href: hrefValues.map[json["href"]],
        templated: json["templated"],
      );

  Map<String, dynamic> toJson() => {
        "name": nameValues.reverse[name],
        "href": hrefValues.reverse[href],
        "templated": templated,
      };
}

enum Href { HTTPS_API_W_ORG_REL }

final hrefValues =
    EnumValues({"https://api.w.org/{rel}": Href.HTTPS_API_W_ORG_REL});

enum Name { WP }

final nameValues = EnumValues({"wp": Name.WP});

class PredecessorVersion {
  PredecessorVersion({
    this.id,
    this.href,
  });

  int id;
  String href;

  factory PredecessorVersion.fromJson(Map<String, dynamic> json) =>
      PredecessorVersion(
        id: json["id"],
        href: json["href"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "href": href,
      };
}

class VersionHistory {
  VersionHistory({
    this.count,
    this.href,
  });

  int count;
  String href;

  factory VersionHistory.fromJson(Map<String, dynamic> json) => VersionHistory(
        count: json["count"],
        href: json["href"],
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "href": href,
      };
}

class WpTerm {
  WpTerm({
    this.taxonomy,
    this.embeddable,
    this.href,
  });

  Taxonomy taxonomy;
  bool embeddable;
  String href;

  factory WpTerm.fromJson(Map<String, dynamic> json) => WpTerm(
        taxonomy: taxonomyValues.map[json["taxonomy"]],
        embeddable: json["embeddable"],
        href: json["href"],
      );

  Map<String, dynamic> toJson() => {
        "taxonomy": taxonomyValues.reverse[taxonomy],
        "embeddable": embeddable,
        "href": href,
      };
}

enum Taxonomy {
  PROPERTY_FEATURE,
  PROPERTY_TYPE,
  PROPERTY_CITY,
  PROPERTY_STATUS
}

final taxonomyValues = EnumValues({
  "property-city": Taxonomy.PROPERTY_CITY,
  "property-feature": Taxonomy.PROPERTY_FEATURE,
  "property-status": Taxonomy.PROPERTY_STATUS,
  "property-type": Taxonomy.PROPERTY_TYPE
});

class PropertyMeta {
  PropertyMeta({
    this.realHomesPropertyPrice,
    this.realHomesPropertyOldPrice,
    this.realHomesPropertyPricePrefix,
    this.realHomesPropertyPricePostfix,
    this.realHomesPropertySize,
    this.realHomesPropertySizePostfix,
    this.realHomesPropertyLotSize,
    this.realHomesPropertyLotSizePostfix,
    this.realHomesPropertyBedrooms,
    this.realHomesPropertyBathrooms,
    this.realHomesPropertyGarage,
    this.realHomesPropertyId,
    this.realHomesPropertyYearBuilt,
    this.realHomesFeatured,
    this.realHomesAdditionalDetailsList,
    this.realHomesPropertyLocation,
    this.realHomesPropertyAddress,
    this.realHomesPropertyMap,
    this.realHomesPropertyImages,
    this.realHomesChangeGallerySliderType,
    this.realHomesGallerySliderType,
    this.inspiryFloorPlans,
    this.inspiryVideoGroup,
    this.realHomes360VirtualTour,
    this.realHomesTourVideoUrl,
    this.realHomesTourVideoImage,
    this.realHomesAgentDisplayOption,
    this.realHomesAgents,
    this.realHomesEnergyClass,
    this.realHomesEnergyPerformance,
    this.realHomesEpcCurrentRating,
    this.realHomesEpcPotentialRating,
    this.realHomesSticky,
    this.inspiryPropertyLabel,
    this.inspiryPropertyLabelColor,
    this.inspiryPropertyTax,
    this.inspiryAdditionalFee,
    this.realHomesAttachments,
    this.inspiryPropertyOwnerName,
    this.inspiryPropertyOwnerContact,
    this.inspiryPropertyOwnerAddress,
    this.realHomesPropertyPrivateNote,
    this.inspiryMessageToReviewer,
    this.realHomesAddInSlider,
    this.realHomesSliderImage,
    this.realHomesPageBannerImage,
  });

  String realHomesPropertyPrice;
  String realHomesPropertyOldPrice;
  RealHomesPropertyPricePrefix realHomesPropertyPricePrefix;
  String realHomesPropertyPricePostfix;
  String realHomesPropertySize;
  String realHomesPropertySizePostfix;
  String realHomesPropertyLotSize;
  String realHomesPropertyLotSizePostfix;
  String realHomesPropertyBedrooms;
  String realHomesPropertyBathrooms;
  String realHomesPropertyGarage;
  String realHomesPropertyId;
  String realHomesPropertyYearBuilt;
  String realHomesFeatured;
  List<List<String>> realHomesAdditionalDetailsList;
  RealHomesPropertyLocation realHomesPropertyLocation;
  String realHomesPropertyAddress;
  String realHomesPropertyMap;
  List<RealHomesImage> realHomesPropertyImages;
  String realHomesChangeGallerySliderType;
  RealHomesGallerySliderType realHomesGallerySliderType;
  List<dynamic> inspiryFloorPlans;
  List<InspiryVideoGroup> inspiryVideoGroup;
  String realHomes360VirtualTour;
  String realHomesTourVideoUrl;
  List<dynamic> realHomesTourVideoImage;
  RealHomesAgentDisplayOption realHomesAgentDisplayOption;
  List<String> realHomesAgents;
  String realHomesEnergyClass;
  RealHomesEnergyPerformance realHomesEnergyPerformance;
  String realHomesEpcCurrentRating;
  String realHomesEpcPotentialRating;
  String realHomesSticky;
  InspiryPropertyLabel inspiryPropertyLabel;
  String inspiryPropertyLabelColor;
  String inspiryPropertyTax;
  String inspiryAdditionalFee;
  List<dynamic> realHomesAttachments;
  String inspiryPropertyOwnerName;
  String inspiryPropertyOwnerContact;
  String inspiryPropertyOwnerAddress;
  String realHomesPropertyPrivateNote;
  String inspiryMessageToReviewer;
  RealHomesAddInSlider realHomesAddInSlider;
  List<RealHomesImage> realHomesSliderImage;
  List<RealHomesImage> realHomesPageBannerImage;

  factory PropertyMeta.fromJson(Map<String, dynamic> json) => PropertyMeta(
        realHomesPropertyPrice: json["REAL_HOMES_property_price"],
        realHomesPropertyOldPrice: json["REAL_HOMES_property_old_price"],
        realHomesPropertyPricePrefix: realHomesPropertyPricePrefixValues
            .map[json["REAL_HOMES_property_price_prefix"]],
        realHomesPropertyPricePostfix:
            json["REAL_HOMES_property_price_postfix"],
        realHomesPropertySize: json["REAL_HOMES_property_size"],
        realHomesPropertySizePostfix: json["REAL_HOMES_property_size_postfix"],
        realHomesPropertyLotSize: json["REAL_HOMES_property_lot_size"],
        realHomesPropertyLotSizePostfix:
            json["REAL_HOMES_property_lot_size_postfix"],
        realHomesPropertyBedrooms: json["REAL_HOMES_property_bedrooms"],
        realHomesPropertyBathrooms: json["REAL_HOMES_property_bathrooms"],
        realHomesPropertyGarage: json["REAL_HOMES_property_garage"],
        realHomesPropertyId: json["REAL_HOMES_property_id"],
        realHomesPropertyYearBuilt: json["REAL_HOMES_property_year_built"],
        realHomesFeatured: json["REAL_HOMES_featured"],
        realHomesAdditionalDetailsList: List<List<String>>.from(
            json["REAL_HOMES_additional_details_list"]
                .map((x) => List<String>.from(x.map((x) => x)))),
        realHomesPropertyLocation: RealHomesPropertyLocation.fromJson(
            json["REAL_HOMES_property_location"]),
        realHomesPropertyAddress: json["REAL_HOMES_property_address"],
        realHomesPropertyMap: json["REAL_HOMES_property_map"],
        realHomesPropertyImages: List<RealHomesImage>.from(
            json["REAL_HOMES_property_images"]
                .map((x) => RealHomesImage.fromJson(x))),
        realHomesChangeGallerySliderType:
            json["REAL_HOMES_change_gallery_slider_type"],
        realHomesGallerySliderType: realHomesGallerySliderTypeValues
            .map[json["REAL_HOMES_gallery_slider_type"]],
        inspiryFloorPlans:
            List<dynamic>.from(json["inspiry_floor_plans"].map((x) => x)),
        inspiryVideoGroup: List<InspiryVideoGroup>.from(
            json["inspiry_video_group"]
                .map((x) => InspiryVideoGroup.fromJson(x))),
        realHomes360VirtualTour: json["REAL_HOMES_360_virtual_tour"],
        realHomesTourVideoUrl: json["REAL_HOMES_tour_video_url"],
        realHomesTourVideoImage: List<dynamic>.from(
            json["REAL_HOMES_tour_video_image"].map((x) => x)),
        realHomesAgentDisplayOption: realHomesAgentDisplayOptionValues
            .map[json["REAL_HOMES_agent_display_option"]],
        realHomesAgents:
            List<String>.from(json["REAL_HOMES_agents"].map((x) => x)),
        realHomesEnergyClass: json["REAL_HOMES_energy_class"],
        realHomesEnergyPerformance: realHomesEnergyPerformanceValues
            .map[json["REAL_HOMES_energy_performance"]],
        realHomesEpcCurrentRating: json["REAL_HOMES_epc_current_rating"],
        realHomesEpcPotentialRating: json["REAL_HOMES_epc_potential_rating"],
        realHomesSticky: json["REAL_HOMES_sticky"],
        inspiryPropertyLabel:
            inspiryPropertyLabelValues.map[json["inspiry_property_label"]],
        inspiryPropertyLabelColor: json["inspiry_property_label_color"],
        inspiryPropertyTax: json["inspiry_property_tax"],
        inspiryAdditionalFee: json["inspiry_additional_fee"],
        realHomesAttachments:
            List<dynamic>.from(json["REAL_HOMES_attachments"].map((x) => x)),
        inspiryPropertyOwnerName: json["inspiry_property_owner_name"],
        inspiryPropertyOwnerContact: json["inspiry_property_owner_contact"],
        inspiryPropertyOwnerAddress: json["inspiry_property_owner_address"],
        realHomesPropertyPrivateNote: json["REAL_HOMES_property_private_note"],
        inspiryMessageToReviewer: json["inspiry_message_to_reviewer"],
        realHomesAddInSlider:
            realHomesAddInSliderValues.map[json["REAL_HOMES_add_in_slider"]],
        realHomesSliderImage: List<RealHomesImage>.from(
            json["REAL_HOMES_slider_image"]
                .map((x) => RealHomesImage.fromJson(x))),
        realHomesPageBannerImage: List<RealHomesImage>.from(
            json["REAL_HOMES_page_banner_image"]
                .map((x) => RealHomesImage.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "REAL_HOMES_property_price": realHomesPropertyPrice,
        "REAL_HOMES_property_old_price": realHomesPropertyOldPrice,
        "REAL_HOMES_property_price_prefix": realHomesPropertyPricePrefixValues
            .reverse[realHomesPropertyPricePrefix],
        "REAL_HOMES_property_price_postfix": realHomesPropertyPricePostfix,
        "REAL_HOMES_property_size": realHomesPropertySize,
        "REAL_HOMES_property_size_postfix": realHomesPropertySizePostfix,
        "REAL_HOMES_property_lot_size": realHomesPropertyLotSize,
        "REAL_HOMES_property_lot_size_postfix": realHomesPropertyLotSizePostfix,
        "REAL_HOMES_property_bedrooms": realHomesPropertyBedrooms,
        "REAL_HOMES_property_bathrooms": realHomesPropertyBathrooms,
        "REAL_HOMES_property_garage": realHomesPropertyGarage,
        "REAL_HOMES_property_id": realHomesPropertyId,
        "REAL_HOMES_property_year_built": realHomesPropertyYearBuilt,
        "REAL_HOMES_featured": realHomesFeatured,
        "REAL_HOMES_additional_details_list": List<dynamic>.from(
            realHomesAdditionalDetailsList
                .map((x) => List<dynamic>.from(x.map((x) => x)))),
        "REAL_HOMES_property_location": realHomesPropertyLocation.toJson(),
        "REAL_HOMES_property_address": realHomesPropertyAddress,
        "REAL_HOMES_property_map": realHomesPropertyMap,
        "REAL_HOMES_property_images":
            List<dynamic>.from(realHomesPropertyImages.map((x) => x.toJson())),
        "REAL_HOMES_change_gallery_slider_type":
            realHomesChangeGallerySliderType,
        "REAL_HOMES_gallery_slider_type": realHomesGallerySliderTypeValues
            .reverse[realHomesGallerySliderType],
        "inspiry_floor_plans":
            List<dynamic>.from(inspiryFloorPlans.map((x) => x)),
        "inspiry_video_group":
            List<dynamic>.from(inspiryVideoGroup.map((x) => x.toJson())),
        "REAL_HOMES_360_virtual_tour": realHomes360VirtualTour,
        "REAL_HOMES_tour_video_url": realHomesTourVideoUrl,
        "REAL_HOMES_tour_video_image":
            List<dynamic>.from(realHomesTourVideoImage.map((x) => x)),
        "REAL_HOMES_agent_display_option": realHomesAgentDisplayOptionValues
            .reverse[realHomesAgentDisplayOption],
        "REAL_HOMES_agents": List<dynamic>.from(realHomesAgents.map((x) => x)),
        "REAL_HOMES_energy_class": realHomesEnergyClass,
        "REAL_HOMES_energy_performance": realHomesEnergyPerformanceValues
            .reverse[realHomesEnergyPerformance],
        "REAL_HOMES_epc_current_rating": realHomesEpcCurrentRating,
        "REAL_HOMES_epc_potential_rating": realHomesEpcPotentialRating,
        "REAL_HOMES_sticky": realHomesSticky,
        "inspiry_property_label":
            inspiryPropertyLabelValues.reverse[inspiryPropertyLabel],
        "inspiry_property_label_color": inspiryPropertyLabelColor,
        "inspiry_property_tax": inspiryPropertyTax,
        "inspiry_additional_fee": inspiryAdditionalFee,
        "REAL_HOMES_attachments":
            List<dynamic>.from(realHomesAttachments.map((x) => x)),
        "inspiry_property_owner_name": inspiryPropertyOwnerName,
        "inspiry_property_owner_contact": inspiryPropertyOwnerContact,
        "inspiry_property_owner_address": inspiryPropertyOwnerAddress,
        "REAL_HOMES_property_private_note": realHomesPropertyPrivateNote,
        "inspiry_message_to_reviewer": inspiryMessageToReviewer,
        "REAL_HOMES_add_in_slider":
            realHomesAddInSliderValues.reverse[realHomesAddInSlider],
        "REAL_HOMES_slider_image":
            List<dynamic>.from(realHomesSliderImage.map((x) => x.toJson())),
        "REAL_HOMES_page_banner_image":
            List<dynamic>.from(realHomesPageBannerImage.map((x) => x.toJson())),
      };
}

enum InspiryPropertyLabel { EMPTY, URGENT_SALE, INSPIRY_PROPERTY_LABEL }

final inspiryPropertyLabelValues = EnumValues({
  "तु बिक्रीमा": InspiryPropertyLabel.EMPTY,
  "": InspiryPropertyLabel.INSPIRY_PROPERTY_LABEL,
  "Urgent Sale": InspiryPropertyLabel.URGENT_SALE
});

class InspiryVideoGroup {
  InspiryVideoGroup({
    this.inspiryVideoGroupUrl,
  });

  String inspiryVideoGroupUrl;

  factory InspiryVideoGroup.fromJson(Map<String, dynamic> json) =>
      InspiryVideoGroup(
        inspiryVideoGroupUrl: json["inspiry_video_group_url"],
      );

  Map<String, dynamic> toJson() => {
        "inspiry_video_group_url": inspiryVideoGroupUrl,
      };
}

enum RealHomesAddInSlider { YES, NO }

final realHomesAddInSliderValues = EnumValues(
    {"no": RealHomesAddInSlider.NO, "yes": RealHomesAddInSlider.YES});

enum RealHomesAgentDisplayOption { AGENT_INFO, NONE }

final realHomesAgentDisplayOptionValues = EnumValues({
  "agent_info": RealHomesAgentDisplayOption.AGENT_INFO,
  "none": RealHomesAgentDisplayOption.NONE
});

enum RealHomesEnergyPerformance { EMPTY, THE_70_K_WH_M_A }

final realHomesEnergyPerformanceValues = EnumValues({
  "": RealHomesEnergyPerformance.EMPTY,
  "70 kWh/m²a": RealHomesEnergyPerformance.THE_70_K_WH_M_A
});

enum RealHomesGallerySliderType { EMPTY, THUMB_ON_RIGHT, THUMB_ON_BOTTOM }

final realHomesGallerySliderTypeValues = EnumValues({
  "": RealHomesGallerySliderType.EMPTY,
  "thumb-on-bottom": RealHomesGallerySliderType.THUMB_ON_BOTTOM,
  "thumb-on-right": RealHomesGallerySliderType.THUMB_ON_RIGHT
});

class RealHomesImage {
  RealHomesImage({
    this.width,
    this.height,
    this.file,
    this.sizes,
    this.imageMeta,
    this.id,
    this.name,
    this.path,
    this.url,
    this.fullUrl,
    this.title,
    this.caption,
    this.description,
    this.alt,
    this.srcset,
  });

  int width;
  int height;
  String file;
  Map<String, Size> sizes;
  ImageMeta imageMeta;
  String id;
  String name;
  String path;
  String url;
  String fullUrl;
  String title;
  Alt caption;
  Alt description;
  Alt alt;
  String srcset;

  factory RealHomesImage.fromJson(Map<String, dynamic> json) => RealHomesImage(
        width: json["width"],
        height: json["height"],
        file: json["file"],
        sizes: Map.from(json["sizes"])
            .map((k, v) => MapEntry<String, Size>(k, Size.fromJson(v))),
        imageMeta: ImageMeta.fromJson(json["image_meta"]),
        id: json["ID"],
        name: json["name"],
        path: json["path"],
        url: json["url"],
        fullUrl: json["full_url"],
        title: json["title"],
        caption: altValues.map[json["caption"]],
        description: altValues.map[json["description"]],
        alt: altValues.map[json["alt"]],
        srcset: json["srcset"],
      );

  Map<String, dynamic> toJson() => {
        "width": width,
        "height": height,
        "file": file,
        "sizes": Map.from(sizes)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "image_meta": imageMeta.toJson(),
        "ID": id,
        "name": name,
        "path": path,
        "url": url,
        "full_url": fullUrl,
        "title": title,
        "caption": altValues.reverse[caption],
        "description": altValues.reverse[description],
        "alt": altValues.reverse[alt],
        "srcset": srcset,
      };
}

enum Alt { EMPTY, HOME_ON_SALE_GAURADAHA }

final altValues = EnumValues(
    {"": Alt.EMPTY, "home on sale gauradaha": Alt.HOME_ON_SALE_GAURADAHA});

class ImageMeta {
  ImageMeta({
    this.aperture,
    this.credit,
    this.camera,
    this.caption,
    this.createdTimestamp,
    this.copyright,
    this.focalLength,
    this.iso,
    this.shutterSpeed,
    this.title,
    this.orientation,
    this.keywords,
  });

  String aperture;
  String credit;
  String camera;
  String caption;
  String createdTimestamp;
  Copyright copyright;
  String focalLength;
  String iso;
  String shutterSpeed;
  String title;
  String orientation;
  List<dynamic> keywords;

  factory ImageMeta.fromJson(Map<String, dynamic> json) => ImageMeta(
        aperture: json["aperture"],
        credit: json["credit"],
        camera: json["camera"],
        caption: json["caption"],
        createdTimestamp: json["created_timestamp"],
        copyright: copyrightValues.map[json["copyright"]],
        focalLength: json["focal_length"],
        iso: json["iso"],
        shutterSpeed: json["shutter_speed"],
        title: json["title"],
        orientation: json["orientation"],
        keywords: List<dynamic>.from(json["keywords"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "aperture": aperture,
        "credit": credit,
        "camera": camera,
        "caption": caption,
        "created_timestamp": createdTimestamp,
        "copyright": copyrightValues.reverse[copyright],
        "focal_length": focalLength,
        "iso": iso,
        "shutter_speed": shutterSpeed,
        "title": title,
        "orientation": orientation,
        "keywords": List<dynamic>.from(keywords.map((x) => x)),
      };
}

enum Copyright {
  EMPTY,
  EP_STOCK_COPYRIGHT_2011_ALL_RIGHTS_RESERVED,
  SERGEY_KARPOV,
  PHOTOGRAPH_OWNED_BY_NORMAN_POGSON
}

final copyrightValues = EnumValues({
  "": Copyright.EMPTY,
  "© ep stock copyright 2011 all rights reserved":
      Copyright.EP_STOCK_COPYRIGHT_2011_ALL_RIGHTS_RESERVED,
  "Photograph Owned By Norman Pogson":
      Copyright.PHOTOGRAPH_OWNED_BY_NORMAN_POGSON,
  "Sergey Karpov": Copyright.SERGEY_KARPOV
});

class Size {
  Size({
    this.file,
    this.width,
    this.height,
    this.mimeType,
    this.url,
  });

  String file;
  int width;
  int height;
  MimeType mimeType;
  String url;

  factory Size.fromJson(Map<String, dynamic> json) => Size(
        file: json["file"],
        width: json["width"],
        height: json["height"],
        mimeType: mimeTypeValues.map[json["mime-type"]],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "file": file,
        "width": width,
        "height": height,
        "mime-type": mimeTypeValues.reverse[mimeType],
        "url": url,
      };
}

enum MimeType { IMAGE_JPEG }

final mimeTypeValues = EnumValues({"image/jpeg": MimeType.IMAGE_JPEG});

class RealHomesPropertyLocation {
  RealHomesPropertyLocation({
    this.latitude,
    this.longitude,
    this.zoom,
  });

  String latitude;
  String longitude;
  String zoom;

  factory RealHomesPropertyLocation.fromJson(Map<String, dynamic> json) =>
      RealHomesPropertyLocation(
        latitude: json["latitude"],
        longitude: json["longitude"],
        zoom: json["zoom"],
      );

  Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
        "zoom": zoom,
      };
}

enum RealHomesPropertyPricePrefix {
  EMPTY,
  REAL_HOMES_PROPERTY_PRICE_PREFIX,
  FROM
}

final realHomesPropertyPricePrefixValues = EnumValues({
  "प्रति आना": RealHomesPropertyPricePrefix.EMPTY,
  "from": RealHomesPropertyPricePrefix.FROM,
  "": RealHomesPropertyPricePrefix.REAL_HOMES_PROPERTY_PRICE_PREFIX
});

enum StatusEnum { PUBLISH }

final statusEnumValues = EnumValues({"publish": StatusEnum.PUBLISH});

enum Template { EMPTY, TEMPLATES_PROPERTY_FULL_WIDTH_LAYOUT_PHP }

final templateValues = EnumValues({
  "": Template.EMPTY,
  "templates/property-full-width-layout.php":
      Template.TEMPLATES_PROPERTY_FULL_WIDTH_LAYOUT_PHP
});

enum Type { PROPERTY }

final typeValues = EnumValues({"property": Type.PROPERTY});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
