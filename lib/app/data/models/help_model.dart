class HelpModel {
  int? id;
  String? name;
  List<HelpModelItem>? items;
  HelpModel({
    this.id,
    this.name,
    this.items,
  });
}

class HelpModelItem {
  int? id;
  String? question;
  String? answer;
  bool isCollapsed;
  HelpModelItem({
    this.id,
    this.question,
    this.answer,
    this.isCollapsed = false,
  });
  void toggleCollapsed() {
    isCollapsed = !isCollapsed;
  }
}
