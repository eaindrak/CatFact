class Lanugages{
  String language_code;
  String flag_svg;
  String name;
  Lanugages({required this.language_code,required this.flag_svg,required this.name});
}

List<Lanugages> allLanguageList=[
    new Lanugages(language_code: "us", flag_svg: "assets/images/us.svg",name: "English"),
    new Lanugages(language_code: "es", flag_svg: "assets/images/es.svg",name: "Española"),
    new Lanugages(language_code: "my", flag_svg: "assets/images/my.svg",name: "မြန်မာဘာသာ"),
  ];