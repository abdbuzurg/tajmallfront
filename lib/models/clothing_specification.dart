enum GenderBelonging { female, male, unisex }

class FirstClothingLevelClassification {
  static const String casual = "casual";
  static const String sport = "sport";
  static const String national = "national";

  static List<String> getSecondLevelClassificationNames(
      String firstLevelClassificationName) {
    List<String> result;
    switch (firstLevelClassificationName) {
      case "casual":
        result = [
          "Пальто",
          "Плащь",
          "Куртка",
          "Легкая Одежда",
          "Нижнее бельё",
          "Платье",
          "Юбка",
          "Брюки",
          "Головной убор",
          "Обувь"
        ];
        break;
      case "sport":
        result = [
          "Топы",
          "Спортивные брюки",
          "Спортивная обувь",
          "Спортивная нижняя одежда",
          "Носки",
        ];
        break;

      case "national":
        result = [
          "Атлас",
          "Чакан",
          "Паплин",
          "Украшения",
        ];
        break;

      default:
        result = [];
    }

    return result;
  }
}

class SecondClothingLevelClassification {
  static const String coat = "Пальто";
  static const String cloak = "Плащь";
  static const String jacket = "Куртка";
  static const String lightClothing = "Легкая Одежда";
  static const String underwear = "Нижнее бельё";
  static const String dress = "Платье";
  static const String skirt = "Юбка";
  static const String pants = "Брюки";
  static const String headdress = "Головной убор";
  static const String shoes = "Обувь";

  static const List<String> allSecondClothingLevelClassificationNames = [
    "Пальто",
    "Плащь",
    "Куртка",
    "Легкая Одежда",
    "Нижнее бельё",
    "Платье",
    "Юбка",
    "Брюки",
    "Головной убор",
    "Обувь"
  ];

  static String getTypeName(String type) {
    String result;
    switch (type) {
      case "Пальто":
        result = SecondClothingLevelClassification.coat;
        break;

      case "Плащь":
        result = SecondClothingLevelClassification.cloak;
        break;

      case "Куртка":
        result = SecondClothingLevelClassification.jacket;
        break;

      case "Легкая Одежда":
        result = SecondClothingLevelClassification.lightClothing;
        break;

      case "Нижнее белье":
        result = SecondClothingLevelClassification.underwear;
        break;

      case "Платье":
        result = SecondClothingLevelClassification.dress;
        break;

      case "Юбка":
        result = SecondClothingLevelClassification.skirt;
        break;

      case "Брюки":
        result = SecondClothingLevelClassification.pants;
        break;

      case "Головной убор":
        result = SecondClothingLevelClassification.headdress;
        break;

      case "Обувь":
        result = SecondClothingLevelClassification.shoes;
        break;

      default:
        result = "Одежда";
    }
    return result;
  }
}

class ShoesType {
  static const String boots = "Сапоги";
  static const String shoes = "Туфли";
  static const String slippers = "Шлёпанцы";
  static const String sneakers = "Кроссовки";

  static String getTypeName(String typeName) {
    String result;
    switch (typeName) {
      case "Сапоги":
        result = ShoesType.boots;
        break;

      case "Туфли":
        result = ShoesType.shoes;
        break;

      case "Шлёпанцы":
        result = ShoesType.slippers;
        break;

      case "Кроссовки":
        result = ShoesType.sneakers;
        break;

      default:
        result = "Обувь";
    }

    return result;
  }
}

class ClothingType {
  final String name;
  final GenderBelonging genderBelonging;
  final String firstLevelClassfication;
  final String secondLevelClassification;
  final String thirdLevelClassification;
  final String image;

  const ClothingType({
    required this.name,
    required this.genderBelonging,
    required this.firstLevelClassfication,
    required this.secondLevelClassification,
    this.thirdLevelClassification = "",
    required this.image,
  });

  static const List<ClothingType> clothingTypes = [
    ClothingType(
      name: "Балкаман",
      genderBelonging: GenderBelonging.male,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.coat,
      image: "assets/images/clothing_type/coat/балкаман.jpg",
    ),
    ClothingType(
      name: "Бушлат",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.coat,
      image: "assets/images/clothing_type/coat/бушлат.jpg",
    ),
    ClothingType(
      name: "Дастер",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.coat,
      image: "assets/images/clothing_type/coat/дастер.jpg",
    ),
    ClothingType(
      name: "Дафлкот",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.coat,
      image: "assets/images/clothing_type/coat/дафлкот.jpg",
    ),
    ClothingType(
      name: "Дубленка",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.coat,
      image: "assets/images/clothing_type/coat/дубленка.jpg",
    ),
    ClothingType(
      name: "Инвернесс",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.coat,
      image: "assets/images/clothing_type/coat/инвернесс.jpg",
    ),
    ClothingType(
      name: "Кейп",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.coat,
      image: "assets/images/clothing_type/coat/кейп.jpg",
    ),
    ClothingType(
      name: "Коверкот",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.coat,
      image: "assets/images/clothing_type/coat/коверкот.jpg",
    ),
    ClothingType(
      name: "Кокон",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.coat,
      image: "assets/images/clothing_type/coat/кокон.jpg",
    ),
    ClothingType(
      name: "Копар",
      genderBelonging: GenderBelonging.male,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.coat,
      image: "assets/images/clothing_type/coat/копар.jpg",
    ),
    ClothingType(
      name: "Кромби",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.coat,
      image: "assets/images/clothing_type/coat/кромби.jpg",
    ),
    ClothingType(
      name: "Манто",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.coat,
      image: "assets/images/clothing_type/coat/манто.jpg",
    ),
    ClothingType(
      name: "Ольстре",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.coat,
      image: "assets/images/clothing_type/coat/ольстре.jpg",
    ),
    ClothingType(
      name: "Пальто с запа́хом",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.coat,
      image: "assets/images/clothing_type/coat/пальто_с_запахом.jpg",
    ),
    ClothingType(
      name: "Пардесю",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.coat,
      image: "assets/images/clothing_type/coat/пардесю.jpg",
    ),
    ClothingType(
      name: "Поло",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.coat,
      image: "assets/images/clothing_type/coat/поло.jpg",
    ),
    ClothingType(
      name: "Пончо",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.coat,
      image: "assets/images/clothing_type/coat/пончо.jpg",
    ),
    ClothingType(
      name: "Пуховик",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.coat,
      image: "assets/images/clothing_type/coat/пуховик.jpg",
    ),
    ClothingType(
      name: "Реглан",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.coat,
      image: "assets/images/clothing_type/coat/реглан.jpg",
    ),
    ClothingType(
      name: "Рединго",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.coat,
      image: "assets/images/clothing_type/coat/редингот.jpg",
    ),
    ClothingType(
      name: "Свингер",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.coat,
      image: "assets/images/clothing_type/coat/свингер.jpg",
    ),
    ClothingType(
      name: "Тренчкот",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.coat,
      image: "assets/images/clothing_type/coat/тренчкот.jpg",
    ),
    ClothingType(
      name: "Честерфилд",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.coat,
      image: "assets/images/clothing_type/coat/шинель.jpg",
    ),
    ClothingType(
      name: "Английский",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.cloak,
      image: "assets/images/clothing_type/cloak/английский.jpg",
    ),
    ClothingType(
      name: "Губертус",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.cloak,
      image: "assets/images/clothing_type/cloak/губертус.jpg",
    ),
    ClothingType(
      name: "Дождевик",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.cloak,
      image: "assets/images/clothing_type/cloak/дождевик.jpg",
    ),
    ClothingType(
      name: "Плащь халат",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.cloak,
      image: "assets/images/clothing_type/cloak/плащь_халат.jpg",
    ),
    ClothingType(
      name: "Тренч",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.cloak,
      image: "assets/images/clothing_type/cloak/тренч.jpg",
    ),
    ClothingType(
      name: "Анорак",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.jacket,
      image: "assets/images/clothing_type/jacket/анорак.jpg",
    ),
    ClothingType(
      name: "Блузон",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.jacket,
      image: "assets/images/clothing_type/jacket/блузон.jpg",
    ),
    ClothingType(
      name: "Бомбер",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.jacket,
      image: "assets/images/clothing_type/jacket/бомбер.jpg",
    ),
    ClothingType(
      name: "Ветровка",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.jacket,
      image: "assets/images/clothing_type/jacket/ветровка.jpg",
    ),
    ClothingType(
      name: "Косуха",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.jacket,
      image: "assets/images/clothing_type/jacket/косуха.jpg",
    ),
    ClothingType(
      name: "Куртка-кейп",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.jacket,
      image: "assets/images/clothing_type/jacket/куртка_кейп.jpg",
    ),
    ClothingType(
      name: "Куртка с запа́хом",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.jacket,
      image: "assets/images/clothing_type/jacket/куртка_с_запахом.jpg",
    ),
    ClothingType(
      name: "Норфолк",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.jacket,
      image: "assets/images/clothing_type/jacket/норфолк.jpg",
    ),
    ClothingType(
      name: "Парка",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.jacket,
      image: "assets/images/clothing_type/jacket/парка.jpg",
    ),
    ClothingType(
      name: "Спенсер",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.jacket,
      image: "assets/images/clothing_type/jacket/спенсер.jpg",
    ),
    ClothingType(
      name: "Безрукавка",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification:
          SecondClothingLevelClassification.lightClothing,
      image: "assets/images/clothing_type/light_clothing/безрукавка.jpg",
    ),
    ClothingType(
      name: "Блуза",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification:
          SecondClothingLevelClassification.lightClothing,
      image: "assets/images/clothing_type/light_clothing/блуза.jpg",
    ),
    ClothingType(
      name: "Блейзер",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification:
          SecondClothingLevelClassification.lightClothing,
      image: "assets/images/clothing_type/light_clothing/блейзер.jpg",
    ),
    ClothingType(
      name: "Джемпер",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification:
          SecondClothingLevelClassification.lightClothing,
      image: "assets/images/clothing_type/light_clothing/джемпер.jpg",
    ),
    ClothingType(
      name: "Жакет",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification:
          SecondClothingLevelClassification.lightClothing,
      image: "assets/images/clothing_type/light_clothing/жакет.jpg",
    ),
    ClothingType(
      name: "Жилет",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification:
          SecondClothingLevelClassification.lightClothing,
      image: "assets/images/clothing_type/light_clothing/жилет.jpg",
    ),
    ClothingType(
      name: "Кардиган",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification:
          SecondClothingLevelClassification.lightClothing,
      image: "assets/images/clothing_type/light_clothing/кардиган.jpg",
    ),
    ClothingType(
      name: "Комбидресс",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification:
          SecondClothingLevelClassification.lightClothing,
      image: "assets/images/clothing_type/light_clothing/комбидресс.jpg",
    ),
    ClothingType(
      name: "Комбинезон",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification:
          SecondClothingLevelClassification.lightClothing,
      image: "assets/images/clothing_type/light_clothing/комбинезон.jpg",
    ),
    ClothingType(
      name: "Кофта",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification:
          SecondClothingLevelClassification.lightClothing,
      image: "assets/images/clothing_type/light_clothing/кофта.jpg",
    ),
    ClothingType(
      name: "Пиджак",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification:
          SecondClothingLevelClassification.lightClothing,
      image: "assets/images/clothing_type/light_clothing/пиджак.jpg",
    ),
    ClothingType(
      name: "Пуловер",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification:
          SecondClothingLevelClassification.lightClothing,
      image: "assets/images/clothing_type/light_clothing/пуловер.jpg",
    ),
    ClothingType(
      name: "Рубашка",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification:
          SecondClothingLevelClassification.lightClothing,
      image: "assets/images/clothing_type/light_clothing/рубашка.jpg",
    ),
    ClothingType(
      name: "Свитер",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification:
          SecondClothingLevelClassification.lightClothing,
      image: "assets/images/clothing_type/light_clothing/свитер.jpg",
    ),
    ClothingType(
      name: "Тениска",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification:
          SecondClothingLevelClassification.lightClothing,
      image: "assets/images/clothing_type/light_clothing/тениска.jpg",
    ),
    ClothingType(
      name: "Топ",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification:
          SecondClothingLevelClassification.lightClothing,
      image: "assets/images/clothing_type/light_clothing/топ.jpg",
    ),
    ClothingType(
      name: "Боди",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/боди.jpg",
    ),
    ClothingType(
      name: "Боксеры",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/боди.jpg",
    ),
    ClothingType(
      name: "Брифы",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/брифы.jpg",
    ),
    ClothingType(
      name: "Бюстгалтер",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/бюстгалтер.jpg",
    ),
    ClothingType(
      name: "Бюстье",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/бюстье.jpg",
    ),
    ClothingType(
      name: "Грация",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/грация.jpg",
    ),
    ClothingType(
      name: "Кальсоны",
      genderBelonging: GenderBelonging.male,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/кольсоны.jpg",
    ),
    ClothingType(
      name: "Корсет",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/корсет.jpg",
    ),
    ClothingType(
      name: "Колготы",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/колготы.jpg",
    ),
    ClothingType(
      name: "Майка",
      genderBelonging: GenderBelonging.male,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/майка.jpg",
    ),
    ClothingType(
      name: "Неглиже",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/неглиже.jpg",
    ),
    ClothingType(
      name: "Ночная сорочка",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/ночная_сорочка.jpg",
    ),
    ClothingType(
      name: "Пеньюар",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/пеньюар.jpg",
    ),
    ClothingType(
      name: "Пижама",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/пижама.jpg",
    ),
    ClothingType(
      name: "Подвязки",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/подвязки.jpg",
    ),
    ClothingType(
      name: "Подъюбник",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/подъюбник.jpg",
    ),
    ClothingType(
      name: "Слипы",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/слипы.jpg",
    ),
    ClothingType(
      name: "Танга",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/танга.jpg",
    ),
    ClothingType(
      name: "Термобелье",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/термобелье.jpg",
    ),
    ClothingType(
      name: "Тедди",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/тедди.jpeg",
    ),
    ClothingType(
      name: "Тонг",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/Тонг.jpeg",
    ),
    ClothingType(
      name: "Транк",
      genderBelonging: GenderBelonging.male,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/транк.jpg",
    ),
    ClothingType(
      name: "Чулки",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/чулки.jpg",
    ),
    ClothingType(
      name: "Халат",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.underwear,
      image: "assets/images/clothing_type/underwear/халат.jpg",
    ),
    ClothingType(
      name: "Дневное",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/дневное.jpg",
    ),
    ClothingType(
      name: "Вечернее",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/вечернее.jpg",
    ),
    ClothingType(
      name: "Коктейльное",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/коктейльное.jpg",
    ),
    ClothingType(
      name: "Маленькое черное",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/маленькое_черное.jpg",
    ),
    ClothingType(
      name: "Бальное",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/бальное.jpg",
    ),
    ClothingType(
      name: "Свадебное",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/свадебное.jpg",
    ),
    ClothingType(
      name: "Карнавальное",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/карнавальное.jpg",
    ),
    ClothingType(
      name: "Платье с американской проймой",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image:
          "assets/images/clothing_type/dress/платье_с_американской_хуйнёй.jpg",
    ),
    ClothingType(
      name: "Платье-ампир",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_ампир.jpg",
    ),
    ClothingType(
      name: "Платье А-силуэт",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_а_силуэт.jpg",
    ),
    ClothingType(
      name: "Платье-баллон",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_баллон.jpg",
    ),
    ClothingType(
      name: "Платье с баской",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_с_баской.jpg",
    ),
    ClothingType(
      name: "Платье блейзер",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_блейзер.jpg",
    ),
    ClothingType(
      name: "Платье бодикон",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_бодикон.jpg",
    ),
    ClothingType(
      name: "Платье-бохо",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_бохо.jpg",
    ),
    ClothingType(
      name: "Платье бэби-долл",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_бэби_долл.jpg",
    ),
    ClothingType(
      name: "Платье-годе",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_годе.jpg",
    ),
    ClothingType(
      name: "Платье-жилет",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_жилет.jpg",
    ),
    ClothingType(
      name: "Платье-карандаш",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_карандаш.jpg",
    ),
    ClothingType(
      name: "Платье-кокон",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_кокон.jpg",
    ),
    ClothingType(
      name: "Платье-комбинация",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_комбинация.jpg",
    ),
    ClothingType(
      name: "Платье-кюлот",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_кюлот.jpg",
    ),
    ClothingType(
      name: "Платье-оверсайз",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_оверсайз.jpg",
    ),
    ClothingType(
      name: "Платье-пачка",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_пачка.jpg",
    ),
    ClothingType(
      name: "Платье-поло",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_поло.jpg",
    ),
    ClothingType(
      name: "Платье-рубашка",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_рубашка.jpg",
    ),
    ClothingType(
      name: "Платье-сарафан",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_сарафан.jpg",
    ),
    ClothingType(
      name: "Платье-свитер",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_сарафан.jpg",
    ),
    ClothingType(
      name: "Платье-смок",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_смок.jpg",
    ),
    ClothingType(
      name: "Платье-трапеция",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_трапеция.jpg",
    ),
    ClothingType(
      name: "Платье-туника",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_туника.jpg",
    ),
    ClothingType(
      name: "Платье-тюльпан",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_тюльпан.jpg",
    ),
    ClothingType(
      name: "Платье-футболка",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_футболка.jpg",
    ),
    ClothingType(
      name: "Платье-футляр",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_футляр.jpg",
    ),
    ClothingType(
      name: "Чайное платье",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/чайное_платье.jpg",
    ),
    ClothingType(
      name: "Платье-шемиз",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_шемиз.jpg",
    ),
    ClothingType(
      name: "Платье-шифт",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/платье_шифт.jpg",
    ),
    ClothingType(
      name: "Греческое",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/греческое.jpg",
    ),
    ClothingType(
      name: "Кимоно",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/кимоно.jpg",
    ),
    ClothingType(
      name: "Cари",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/сари.jpg",
    ),
    ClothingType(
      name: "Cаронг",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/саронг.jpg",
    ),
    ClothingType(
      name: "Ципао",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/ципао.jpg",
    ),
    ClothingType(
      name: "Ципао",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.dress,
      image: "assets/images/clothing_type/dress/ципао.jpg",
    ),
    ClothingType(
      name: "Прямая",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/прямая.jpg",
    ),
    ClothingType(
      name: "Зауженная",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/зауженная.jpg",
    ),
    ClothingType(
      name: "Зауженная",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/зауженная.jpg",
    ),
    ClothingType(
      name: "Тюльпан",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/тюльпан.jpg",
    ),
    ClothingType(
      name: "Баллон (бочонок)",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/баллон.jpg",
    ),
    ClothingType(
      name: "Солнце",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/солнце.jpg",
    ),
    ClothingType(
      name: "Полусолнце",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/полусолнце.jpg",
    ),
    ClothingType(
      name: "Полусолнце",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/полусолнце.jpg",
    ),
    ClothingType(
      name: "Клёш",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/клёш.jpg",
    ),
    ClothingType(
      name: "Колокол",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/колокол.jpg",
    ),
    ClothingType(
      name: "Годе",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/годе.jpg",
    ),
    ClothingType(
      name: "Пачка",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/пачка.jpg",
    ),
    ClothingType(
      name: "Многоярусная (многослойная)",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/многоярусная.jpg",
    ),
    ClothingType(
      name: "Юбка-шорты",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/юбка_шорты.jpg",
    ),
    ClothingType(
      name: "Юбка-брюки",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/юбка_брюки.jpg",
    ),
    ClothingType(
      name: "Юбка с запа́хом",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/юбка_с_запахом.jpg",
    ),
    ClothingType(
      name: "Юбка с запа́хом",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/юбка_с_запахом.jpg",
    ),
    ClothingType(
      name: "Саронг",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/саронг.jpg",
    ),
    ClothingType(
      name: "Юбка с разрезами",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/юбка_с_разрезами.jpg",
    ),
    ClothingType(
      name: "Юбка со шлицей",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/юбка_со_шлицей.jpg",
    ),
    ClothingType(
      name: "Юбка со складками",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/юбка_со_складками.jpg",
    ),
    ClothingType(
      name: "Юбки гофре и плиссе",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/юбки_гофре.jpg",
    ),
    ClothingType(
      name: "Юбки с баской",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/юбки_с_баской.jpg",
    ),
    ClothingType(
      name: "Юбки с баской",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/юбки_с_баской.jpg",
    ),
    ClothingType(
      name: "Юбки с карманами",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.skirt,
      image: "assets/images/clothing_type/skirt/юбка_с_карманами.jpg",
    ),
    ClothingType(
      name: "Апрески",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.boots,
      image: "assets/images/clothing_type/shoes/апрески.jpg",
    ),
    ClothingType(
      name: "Балетки",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/балетки.jpg",
    ),
    ClothingType(
      name: "Бабуши",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      image: "assets/images/clothing_type/shoes/бабуши.jpg",
    ),
    ClothingType(
      name: "Берцы",
      genderBelonging: GenderBelonging.male,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.boots,
      image: "assets/images/clothing_type/shoes/берцы.jpg",
    ),
    ClothingType(
      name: "Биркенштоки",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.slippers,
      image: "assets/images/clothing_type/shoes/биркенштоки.jpg",
    ),
    ClothingType(
      name: "Босоножки",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      image: "assets/images/clothing_type/shoes/босоножки.jpg",
    ),
    ClothingType(
      name: "Ботильоны",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/ботильоны.jpg",
    ),
    ClothingType(
      name: "Ботфорты",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.boots,
      image: "assets/images/clothing_type/shoes/ботфорты.jpg",
    ),
    ClothingType(
      name: "Броги",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/броги.jpg",
    ),
    ClothingType(
      name: "Бутсы",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.sneakers,
      image: "assets/images/clothing_type/shoes/бутсы.jpg",
    ),
    ClothingType(
      name: "Вибрамы",
      genderBelonging: GenderBelonging.male,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.boots,
      image: "assets/images/clothing_type/shoes/вибрамы.jpg",
    ),
    ClothingType(
      name: "Винклпикеры",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/винклпикеры.jpg",
    ),
    ClothingType(
      name: "Веллингтоны",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.boots,
      image: "assets/images/clothing_type/shoes/веллингтоны.jpg",
    ),
    ClothingType(
      name: "Ворк бутс",
      genderBelonging: GenderBelonging.male,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.boots,
      image: "assets/images/clothing_type/shoes/ворк_бутс.jpg",
    ),
    ClothingType(
      name: "Гриндерсы",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.boots,
      image: "assets/images/clothing_type/shoes/гриндерсы.jpg",
    ),
    ClothingType(
      name: "Дезерты",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      image: "assets/images/clothing_type/shoes/дезерты.jpg",
    ),
    ClothingType(
      name: "Дерби",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/дерби.jpg",
    ),
    ClothingType(
      name: "Джекбуты",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.boots,
      image: "assets/images/clothing_type/shoes/джекбуты.jpg",
    ),
    ClothingType(
      name: "Джодпуры",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/джодпуры.jpg",
    ),
    ClothingType(
      name: "Кеды",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.sneakers,
      image: "assets/images/clothing_type/shoes/кеды.jpg",
    ),
    ClothingType(
      name: "Кроксы",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.slippers,
      image: "assets/images/clothing_type/shoes/кроксы.jpg",
    ),
    ClothingType(
      name: "Кроссовки",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.sneakers,
      image: "assets/images/clothing_type/shoes/кроссовки.jpg",
    ),
    ClothingType(
      name: "Лабутены",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/лабутены.jpg",
    ),
    ClothingType(
      name: "Лодочки",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/лодочки.jpg",
    ),
    ClothingType(
      name: "Лоферы",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/лоферы.jpg",
    ),
    ClothingType(
      name: "Луноходы",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.boots,
      image: "assets/images/clothing_type/shoes/луноходы.jpg",
    ),
    ClothingType(
      name: "Мери-Джейн",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/мери_джейн.jpg",
    ),
    ClothingType(
      name: "Мокасины",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/мокасины.jpg",
    ),
    ClothingType(
      name: "Монки",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/монки.jpg",
    ),
    ClothingType(
      name: "Мюли",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/мюли.jpg",
    ),
    ClothingType(
      name: "Мыльницы",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.slippers,
      image: "assets/images/clothing_type/shoes/мыльницы.jpg",
    ),
    ClothingType(
      name: "Оксфорды",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/оксфорды.jpg",
    ),
    ClothingType(
      name: "Пантолеты",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.slippers,
      image: "assets/images/clothing_type/shoes/пантолеты.jpg",
    ),
    ClothingType(
      name: "Пулены",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/пулены.jpg",
    ),
    ClothingType(
      name: "Ридинги",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.boots,
      image: "assets/images/clothing_type/shoes/ридинги.jpg",
    ),
    ClothingType(
      name: "Сабо",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      image: "assets/images/clothing_type/shoes/ридинги.jpg",
    ),
    ClothingType(
      name: "Сандалии",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.slippers,
      image: "assets/images/clothing_type/shoes/сандалии.jpg",
    ),
    ClothingType(
      name: "Сапоги-казахи",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.boots,
      image: "assets/images/clothing_type/shoes/сапоги_казахи.jpg",
    ),
    ClothingType(
      name: "Сапоги ковбойские",
      genderBelonging: GenderBelonging.male,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.boots,
      image: "assets/images/clothing_type/shoes/сапоги_ковбойские.jpg",
    ),
    ClothingType(
      name: "Сапоги-чулки",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.boots,
      image: "assets/images/clothing_type/shoes/сапоги_чулки.jpg",
    ),
    ClothingType(
      name: "Слиперы",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/слиперы.jpg",
    ),
    ClothingType(
      name: "Слипоны",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.sneakers,
      image: "assets/images/clothing_type/shoes/слипоны.jpg",
    ),
    ClothingType(
      name: "Сникеры",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.sneakers,
      image: "assets/images/clothing_type/shoes/сникеры.jpg",
    ),
    ClothingType(
      name: "Стилеты",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/стилеты.jpg",
    ),
    ClothingType(
      name: "Теннисные туфли",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/теннисные_туфли.jpg",
    ),
    ClothingType(
      name: "Тимберленды",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.boots,
      image: "assets/images/clothing_type/shoes/тимберленды.jpg",
    ),
    ClothingType(
      name: "Топ-сайдеры",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/топ_сайдеры.jpg",
    ),
    ClothingType(
      name: "Туфли для танго",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/туфли_для_танго.jpg",
    ),
    ClothingType(
      name: "Туфли-перчатки",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/туфли_перчатки.jpg",
    ),
    ClothingType(
      name: "Угги",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.boots,
      image: "assets/images/clothing_type/shoes/угги.jpg",
    ),
    ClothingType(
      name: "Хайкеры",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.boots,
      image: "assets/images/clothing_type/shoes/хайкеры.jpg",
    ),
    ClothingType(
      name: "Чукка",
      genderBelonging: GenderBelonging.male,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/чукка.jpg",
    ),
    ClothingType(
      name: "Челси",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.boots,
      image: "assets/images/clothing_type/shoes/челси.jpg",
    ),
    ClothingType(
      name: "Чешка",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      image: "assets/images/clothing_type/shoes/чешка.jpg",
    ),
    ClothingType(
      name: "Эспадрильи",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/эспадрильи.jpg",
    ),
    ClothingType(
      name: "Яхтенные туфли",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.shoes,
      thirdLevelClassification: ShoesType.shoes,
      image: "assets/images/clothing_type/shoes/яхтенные_туфли.jpg",
    ),
    ClothingType(
      name: "Афгани",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/афгани.jpg",
    ),
    ClothingType(
      name: "Багги",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/багги.jpg",
    ),
    ClothingType(
      name: "Бамстеры",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/бамстеры.jpg",
    ),
    ClothingType(
      name: "Бананы",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/бананы.jpg",
    ),
    ClothingType(
      name: "Бермуды",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/бермуды.jpg",
    ),
    ClothingType(
      name: "Бойфренды",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/бойфренды.jpg",
    ),
    ClothingType(
      name: "Бриджи",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/бриджи.jpg",
    ),
    ClothingType(
      name: "Галифе",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/галифе.jpg",
    ),
    ClothingType(
      name: "Джинсы",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/джинсы.jpg",
    ),
    ClothingType(
      name: "Джоггеры",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/джоггеры.jpg",
    ),
    ClothingType(
      name: "Дудочки",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/дудочки.jpg",
    ),
    ClothingType(
      name: "Капри",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/капри.jpg",
    ),
    ClothingType(
      name: "Карго",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/карго.jpg",
    ),
    ClothingType(
      name: "Каррот",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/каррот.jpg",
    ),
    ClothingType(
      name: "Классика",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/классика.jpg",
    ),
    ClothingType(
      name: "Клёш",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/клёш.jpg",
    ),
    ClothingType(
      name: "Леггинсы",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/леггинсы.jpg",
    ),
    ClothingType(
      name: "Скинни",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/скинни.jpg",
    ),
    ClothingType(
      name: "Слаксы",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/слаксы.jpg",
    ),
    ClothingType(
      name: "Трубы",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/трубы.jpg",
    ),
    ClothingType(
      name: "Чиносы",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/чиносы.jpg",
    ),
    ClothingType(
      name: "Шаровары",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/шаровары.jpg",
    ),
    ClothingType(
      name: "Кюлоты",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/кюлоты.jpg",
    ),
    ClothingType(
      name: "Палаццо",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/палаццо.jpg",
    ),
    ClothingType(
      name: "Гаучо",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/гаучо.jpg",
    ),
    ClothingType(
      name: "Чуридары",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.pants,
      image: "assets/images/clothing_type/pants/чуридары.jpg",
    ),
    ClothingType(
      name: "Азиатская шляпа",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/азиатская_шляпа.jpg",
    ),
    ClothingType(
      name: "Академическая шапочка",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/академическая_шапочка.jpg",
    ),
    ClothingType(
      name: "Балаклава",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/балаклава.jpg",
    ),
    ClothingType(
      name: "Бандана",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/бандана.jpg",
    ),
    ClothingType(
      name: "Башлык",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/башлык.jpg",
    ),
    ClothingType(
      name: "Бейсболка",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/бейсболка.jpg",
    ),
    ClothingType(
      name: "Берет",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/берет.jpg",
    ),
    ClothingType(
      name: "Бини",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/бини.jpg",
    ),
    ClothingType(
      name: "Бомбер",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/бомбер.jpg",
    ),
    ClothingType(
      name: "Боярка",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/боярка.jpg",
    ),
    ClothingType(
      name: "Бомбер",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/брыль.jpg",
    ),
    ClothingType(
      name: "Буннет",
      genderBelonging: GenderBelonging.male,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/буннет.jpg",
    ),
    ClothingType(
      name: "Восьмиклинка",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/восьмиклинка.jpg",
    ),
    ClothingType(
      name: "Вуаль",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/вуаль.jpg",
    ),
    ClothingType(
      name: "Гаучо",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/гаучо.jpg",
    ),
    ClothingType(
      name: "Ермолка",
      genderBelonging: GenderBelonging.male,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/ермолка.jpg",
    ),
    ClothingType(
      name: "Жокейка",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/жокейка.jpg",
    ),
    ClothingType(
      name: "Канотье",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/канотье.jpg",
    ),
    ClothingType(
      name: "Капор",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/капор.jpg",
    ),
    ClothingType(
      name: "Картуз",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/картуз.jpg",
    ),
    ClothingType(
      name: "Кепка",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/кепка.jpg",
    ),
    ClothingType(
      name: "Клош",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/клош.jpg",
    ),
    ClothingType(
      name: "Ковбойская шляпа",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/ковбойская_шляпа.jpg",
    ),
    ClothingType(
      name: "Косынка",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/косынка.jpg",
    ),
    ClothingType(
      name: "Коппола",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/коппола.jpg",
    ),
    ClothingType(
      name: "Кубанка",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/кубанка.jpg",
    ),
    ClothingType(
      name: "Козырёк",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/козырёк.jpg",
    ),
    ClothingType(
      name: "Котелок",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/котелок.jpg",
    ),
    ClothingType(
      name: "Лыжная шляпа",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/лыжная_шляпа.jpg",
    ),
    ClothingType(
      name: "Малахай",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/малахай.jpg",
    ),
    ClothingType(
      name: "Никаб",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/никаб.jpg",
    ),
    ClothingType(
      name: "Панама",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/панама.jpg",
    ),
    ClothingType(
      name: "Папаха",
      genderBelonging: GenderBelonging.male,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/папаха.jpg",
    ),
    ClothingType(
      name: "Парик",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/парик.jpg",
    ),
    ClothingType(
      name: "Пилотка",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/пилотка.jpg",
    ),
    ClothingType(
      name: "Платок",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/платок.jpg",
    ),
    ClothingType(
      name: "Повязка",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/повязка.jpg",
    ),
    ClothingType(
      name: "Порк-пай",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/порк_пай.jpg",
    ),
    ClothingType(
      name: "Слауч",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/слауч.jpg",
    ),
    ClothingType(
      name: "Снуд",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/снуд.jpg",
    ),
    ClothingType(
      name: "Собреро",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/собреро.jpg",
    ),
    ClothingType(
      name: "Таблтека",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/таблетка.jpg",
    ),
    ClothingType(
      name: "Ток",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/ток.jpg",
    ),
    ClothingType(
      name: "Трилби",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/трилби.jpg",
    ),
    ClothingType(
      name: "Тюбитейка",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/тюбитейка.jpg",
    ),
    ClothingType(
      name: "Тюрбан",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/тюрбан.jpg",
    ),
    ClothingType(
      name: "Ушанка",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/ушанка.jpg",
    ),
    ClothingType(
      name: "Федора",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/федора.jpg",
    ),
    ClothingType(
      name: "Феска",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/феска.jpg",
    ),
    ClothingType(
      name: "Флоппи",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/флоппи.jpg",
    ),
    ClothingType(
      name: "Фуражка",
      genderBelonging: GenderBelonging.male,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/фуражка.jpg",
    ),
    ClothingType(
      name: "Хиджаб",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/хиджаб.jpg",
    ),
    ClothingType(
      name: "Хомбург",
      genderBelonging: GenderBelonging.male,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/хомбруг.jpg",
    ),
    ClothingType(
      name: "Цилиндр",
      genderBelonging: GenderBelonging.male,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/цилиндр.jpg",
    ),
    ClothingType(
      name: "Чалма",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/чалма.jpg",
    ),
    ClothingType(
      name: "Шапка",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/шапка.jpg",
    ),
    ClothingType(
      name: "Шапокляк",
      genderBelonging: GenderBelonging.unisex,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/шапокляк.png",
    ),
    ClothingType(
      name: "Шейла",
      genderBelonging: GenderBelonging.female,
      firstLevelClassfication: FirstClothingLevelClassification.casual,
      secondLevelClassification: SecondClothingLevelClassification.headdress,
      image: "assets/images/clothing_type/headdress/шейла.jpg",
    ),
  ];
}

const List<String> clothingSizes = [
  "XS",
  "S",
  "M",
  "L",
  "XL",
  "XXL",
  "XXXL",
];

const List<String> brands = ["Zara", "DeFacto", "Waikiki", "Li-Ning"];
