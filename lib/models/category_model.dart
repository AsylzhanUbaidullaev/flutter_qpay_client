
class CategoriesModel {
  int? id;
  String? name;
  List<Children>? children;

  CategoriesModel({this.id, this.name, this.children});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.name = json["name"];
    this.children = json["children"] == null
        ? null
        : (json["children"] as List).map((e) => Children.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["name"] = this.name;
    if (this.children != null)
      data["children"] = this.children!.map((e) => e.toJson()).toList();
    return data;
  }

  @override
  CategoriesModel fromJson(Map<String, dynamic> json) {
    return CategoriesModel.fromJson(json);
  }
}

class Children {
  int? id;
  String? name;
  int? parentId;
  bool? isSelected;

  Children({this.id, this.name, this.parentId, this.isSelected});

  Children.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.name = json["name"];
    this.parentId = json["parent_id"];
    this.isSelected = json["is_selected"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["name"] = this.name;
    data["parent_id"] = this.parentId;
    data["is_selected"] = this.isSelected;
    return data;
  }
}
