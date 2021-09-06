import 'dart:math';

import 'package:flutter/material.dart';

enum ClothesType {
  coat,
  raincoat,
  jacket,
  jeansJacket,
  shortCoat,
  downJacket,
  leatherJacket,
}

class WomanData {
  List<String> images;
  List<String> sizes;
  List<Color> colors;
  double price;
  String name;
  String description;
  ClothesType type;

  WomanData({
    required this.images,
    required this.sizes,
    required this.colors,
    required this.price,
    required this.name,
    required this.description,
    required this.type,
  });
}

List<WomanData> shuffle(List<WomanData> items) {
  var random = new Random();

  // Go through all elements.
  for (var i = items.length - 1; i > 0; i--) {
    // Pick a pseudorandom number according to the list length
    var n = random.nextInt(i + 1);

    var temp = items[i];
    items[i] = items[n];
    items[n] = temp;
  }

  return items;
}

final List<WomanData> dummyWomanData = [
  WomanData(
    images: [
      "assets/images/woman_assets/coat/двубортное_пальто_1.jpg",
      "assets/images/woman_assets/coat/двубортное_пальто_2.jpg",
      "assets/images/woman_assets/coat/двубортное_пальто_3.jpg",
      "assets/images/woman_assets/coat/двубортное_пальто_4.jpg"
    ],
    sizes: [
      "XS",
      "S",
      "M",
      "L",
      "XL",
    ],
    colors: [
      Color.fromRGBO(22, 34, 82, 1.0),
      Color.fromRGBO(238, 197, 145, 1.0),
      Color.fromRGBO(222, 184, 135, 1.0)
    ],
    name: "Двубортное пальто",
    price: 5999,
    description:
        "Состав: 89% полиэстер, 11% акрил, Подкладка: 100% полиэстер. Температурный режим до 5 °C\nСтрана-производитель: КИТАЙ\nУход: Не стирать, Не отбеливать, Вертикальная сушка, Глажение при 110ºС, Профессиональная сухая чистка. Мягкий режим., Рекомендована утюжка паром без касания утюгом",
    type: ClothesType.coat,
  ),
  WomanData(
    images: [
      "assets/images/woman_assets/coat/cтеганое_пальто_2.jpg",
      "assets/images/woman_assets/coat/cтеганое_пальто_1.jpg",
      "assets/images/woman_assets/coat/cтеганое_пальто_3.jpg",
      "assets/images/woman_assets/coat/cтеганое_пальто_4.jpg",
    ],
    sizes: [
      "XS",
      "S",
      "M",
    ],
    colors: [
      Color.fromRGBO(133, 133, 133, 1.0),
      Colors.black,
    ],
    name: "Стеганое пальто",
    price: 4999,
    description:
        "Состав: 100% полиэстер, Подкладка: 100% полиэстер, Наполнитель: Синтепон, 100 г/м2 Температурный режим до 10° C\nСтрана-производитель: КИТАЙ\nУход: Не стирать, Не отбеливать, Вертикальная сушка, Не гладить, Профессиональная сухая чистка. Мягкий режим.",
    type: ClothesType.coat,
  ),
  WomanData(
    images: [
      "assets/images/woman_assets/coat/пальто_на_поясе_1.jpg",
      "assets/images/woman_assets/coat/пальто_на_поясе_3.jpg",
      "assets/images/woman_assets/coat/пальто_на_поясе_2.jpg",
      "assets/images/woman_assets/coat/пальто_на_поясе_4.jpg",
    ],
    sizes: [
      "M",
    ],
    colors: [
      Color.fromRGBO(0, 100, 0, 1.0),
      Color.fromRGBO(133, 133, 133, 1.0),
      Color.fromRGBO(139, 119, 101, 1.0),
      Colors.black,
    ],
    name: "Стеганое пальто",
    price: 4999,
    description:
        "Состав: 100% полиэстер, Подкладка: 100% полиэстер, Наполнитель: Синтепон, 150 г/м2, температурный режим до 5° C\nСтрана-производитель: КИТАЙ\nУход: Не стирать, Не отбеливать, Вертикальная сушка, Не гладить, Профессиональная сухая чистка. Мягкий режим.",
    type: ClothesType.coat,
  ),
  WomanData(
    images: [
      "assets/images/woman_assets/raincoat/плащ_из_экокожи_1.jpg",
      "assets/images/woman_assets/raincoat/плащ_из_экокожи_3.jpg",
      "assets/images/woman_assets/raincoat/плащ_из_экокожи_2.jpg",
      "assets/images/woman_assets/raincoat/плащ_из_экокожи_4.jpg",
    ],
    sizes: [
      "2XS",
      "M",
      "L",
    ],
    colors: [
      Color.fromRGBO(238, 197, 145, 1.0),
    ],
    name: "Плащ из экокожи",
    price: 1799,
    description:
        "Состав: Внешний слой: 100% полиуретан, Внутренний слой: 100% полиэстер, Подкладка: 100% полиэстер\nСтрана-производитель: КИТАЙ\nУход: Не стирать, Не отбеливать, Машинная сушка запрещена, Глажение при 110ºС, Сухая чистка запрещена, Глажение по изнаночной стороне",
    type: ClothesType.raincoat,
  ),
  WomanData(
    images: [
      "assets/images/woman_assets/raincoat/плащ_из_вискозы_1.jpg",
      "assets/images/woman_assets/raincoat/плащ_из_вискозы_3.jpg",
      "assets/images/woman_assets/raincoat/плащ_из_вискозы_2.jpg",
      "assets/images/woman_assets/raincoat/плащ_из_вискозы_4.jpg",
    ],
    sizes: [
      "XS",
      "S",
      "M",
      "L",
    ],
    colors: [
      Color.fromRGBO(159, 159, 95, 1.0),
      Color.fromRGBO(79, 79, 47, 1.0),
      Color.fromRGBO(254, 232, 214, 1.0),
      Color.fromRGBO(238, 197, 145, 1.0),
    ],
    name: "Плащ из вискозы",
    price: 3999,
    description:
        "Состав: 90% вискоза, 10% полиэстер\nСтрана-производитель: КИТАЙ\nУход: Бережная стирка при максимальной температуре 30ºС, Не отбеливать, Машинная сушка запрещена, Глажение при 110ºС, Профессиональная сухая чистка. Мягкий режим., Глажение по изнаночной стороне",
    type: ClothesType.raincoat,
  ),
  WomanData(
    images: [
      "assets/images/woman_assets/raincoat/плащ_из_поясом_1.jpg",
      "assets/images/woman_assets/raincoat/плащ_из_поясом_3.jpg",
      "assets/images/woman_assets/raincoat/плащ_из_поясом_2.jpg",
      "assets/images/woman_assets/raincoat/плащ_из_поясом_4.jpg",
    ],
    sizes: [
      "M",
      "L",
      "XL",
    ],
    colors: [
      Color.fromRGBO(159, 159, 95, 1.0),
      Color.fromRGBO(254, 232, 214, 1.0),
      Color.fromRGBO(238, 197, 145, 1.0),
    ],
    name: "Плащ из поясом",
    price: 2799,
    description:
        "Состав: 100% полиэстер\nСтрана-производитель: КИТАЙ\nУход: Не стирать, Не отбеливать, Вертикальная сушка, Глажение при 110ºС, Профессиональная сухая чистка. Мягкий режим., Глажение по изнаночной стороне",
    type: ClothesType.raincoat,
  ),
  WomanData(
    images: [
      "assets/images/woman_assets/jacket/стеганая_куртка_вариант_1.jpg",
      "assets/images/woman_assets/jacket/стеганая_куртка_вариант_2.jpg",
      "assets/images/woman_assets/jacket/стеганая_куртка_вариант_3.jpg",
      "assets/images/woman_assets/jacket/стеганая_куртка_вариант_4.jpg",
    ],
    sizes: [
      "2XS",
      "XS",
      "S",
      "M",
      "L",
    ],
    colors: [
      Color.fromRGBO(159, 159, 95, 1.0),
      Color.fromRGBO(0, 0, 0, 1.0),
    ],
    name: "Стеганая куртка",
    price: 3599,
    description:
        "Состав: 100% полиэстер, Подкладка: 100% полиэстер, Наполнитель: Синтепон, 120 г/м2, температурный режим до 0° C\nСтрана-производитель: КИТАЙ\nУход: Не стирать, Не отбеливать, Вертикальная сушка, Не гладить, Профессиональная сухая чистка. Мягкий режим.",
    type: ClothesType.jacket,
  ),
  WomanData(
    images: [
      "assets/images/woman_assets/jacket/куртка_с_капюшоном_1.jpg",
      "assets/images/woman_assets/jacket/куртка_с_капюшоном_2.jpg",
      "assets/images/woman_assets/jacket/куртка_с_капюшоном_3.jpg",
      "assets/images/woman_assets/jacket/куртка_с_капюшоном_4.jpg",
    ],
    sizes: [
      "XS",
      "M",
      "L",
      "XL",
      "2XL",
    ],
    colors: [
      Color.fromRGBO(133, 133, 133, 1.0),
      Color.fromRGBO(0, 0, 0, 1.0),
      Color.fromRGBO(254, 232, 214, 1.0),
      Color.fromRGBO(139, 119, 101, 1.0),
      Color.fromRGBO(102, 0, 0, 1.0),
    ],
    name: "Куртка с капюшоном",
    price: 4599,
    description:
        "Состав: 55% полиэстер, 45% полиамид, Подкладка: 100% полиэстер, Наполнитель: Искусственный пух, 310 г на изд. Температурный режим до 10° C\nСтрана-производитель: КИТАЙ\nУход: Не стирать, Не отбеливать, Сушка в расправленном виде, Не гладить, Профессиональная сухая чистка. Мягкий режим.",
    type: ClothesType.jacket,
  ),
  WomanData(
    images: [
      "assets/images/woman_assets/jacket/куртка_на_поясе_1.jpg",
      "assets/images/woman_assets/jacket/куртка_на_поясе_2.jpg",
      "assets/images/woman_assets/jacket/куртка_на_поясе_3.jpg",
      "assets/images/woman_assets/jacket/куртка_на_поясе_4.jpg",
    ],
    sizes: [
      "XS",
      "S",
      "M",
      "L",
      "XL",
      "2XL",
    ],
    colors: [
      Color.fromRGBO(159, 159, 95, 1.0),
      Color.fromRGBO(0, 0, 0, 1.0),
      Color.fromRGBO(138, 60, 39, 1.0),
      Color.fromRGBO(254, 232, 214, 1.0),
    ],
    name: "Куртка на поясе",
    price: 4599,
    description:
        "Состав: 100% полиэстер, Подкладка: 100% полиэстер, Наполнитель: Синтепон, 200 г/м2, температурный режим до 5° C\nСтрана-производитель: КИТАЙ\nУход: Не стирать, Не отбеливать, Вертикальная сушка, Не гладить, Профессиональная сухая чистка. Мягкий режим.",
    type: ClothesType.jacket,
  ),
  WomanData(
    images: [
      "assets/images/woman_assets/jeans_jacket/джинсовая_куртка_1.jpg",
      "assets/images/woman_assets/jeans_jacket/джинсовая_куртка_2.jpg",
      "assets/images/woman_assets/jeans_jacket/джинсовая_куртка_3.jpg",
      "assets/images/woman_assets/jeans_jacket/джинсовая_куртка_4.jpg",
    ],
    sizes: [
      "S",
      "M",
    ],
    colors: [
      Color.fromRGBO(77, 169, 255, 1.0),
    ],
    name: "Джинсовая куртка",
    price: 2099,
    description:
        "Состав: 70% хлопок, 30% переработанный хлопок\nСтрана-производитель: КИТАЙ\nУход: Бережная стирка при максимальной температуре 30ºС, Не отбеливать, Машинная сушка запрещена, Глажение при 150ºС, Сухая чистка запрещена, ВОЗМОЖЕН СХОД КРАСИТЕЛЯ. РЕКОМЕНДУЕТСЯ СТИРКА ПЕРЕД НАЧАЛОМ НОСКИ, СТИРАТЬ И ГЛАДИТЬ, ВЫВЕРНУВ НАИЗНАНКУ, С ИЗДЕЛИЯМИ ПОХОЖИХ ЦВЕТОВ",
    type: ClothesType.jeansJacket,
  ),
  WomanData(
    images: [
      "assets/images/woman_assets/jeans_jacket/джинсовая_рубашка_1.jpg",
      "assets/images/woman_assets/jeans_jacket/джинсовая_рубашка_2.jpg",
      "assets/images/woman_assets/jeans_jacket/джинсовая_рубашка_3.jpg",
      "assets/images/woman_assets/jeans_jacket/джинсовая_рубашка_4.jpg",
    ],
    sizes: [
      "S",
      "L",
    ],
    colors: [
      Color.fromRGBO(77, 169, 255, 1.0),
    ],
    name: "Джинсовая куртка",
    price: 2299,
    description:
        "Состав: 70% хлопок, 30% переработанный хлопок\nСтрана-производитель: КИТАЙ\nУход: Бережная стирка при максимальной температуре 30ºС, Не отбеливать, Машинная сушка запрещена, Глажение при 150ºС, Сухая чистка запрещена, ВОЗМОЖЕН СХОД КРАСИТЕЛЯ. РЕКОМЕНДУЕТСЯ СТИРКА ПЕРЕД НАЧАЛОМ НОСКИ, СТИРАТЬ И ГЛАДИТЬ, ВЫВЕРНУВ НАИЗНАНКУ, С ИЗДЕЛИЯМИ ПОХОЖИХ ЦВЕТОВ",
    type: ClothesType.jeansJacket,
  ),
  WomanData(
    images: [
      "assets/images/woman_assets/short_coat/стеганое_полупальто_1.jpg",
      "assets/images/woman_assets/short_coat/стеганое_полупальто_2.jpg",
      "assets/images/woman_assets/short_coat/стеганое_полупальто_3.jpg",
      "assets/images/woman_assets/short_coat/стеганое_полупальто_4.jpg",
    ],
    sizes: [
      "2XS",
      "XS",
      "S",
      "L",
    ],
    colors: [
      Color.fromRGBO(221, 220, 225, 1.0),
      Color.fromRGBO(5, 184, 204, 1.0),
      Color.fromRGBO(254, 232, 214, 1.0),
    ],
    name: "Стеганое полупальто",
    price: 3999,
    description:
        "Состав: 100% полиэстер, Утеплитель: 100% полиэстер, Подкладка: 100% полиэстер\nСтрана-производитель: КИТАЙ\nУход: Бережная стирка при максимальной температуре 30ºС, Не отбеливать, Машинная сушка запрещена, Не гладить, Профессиональная сухая чистка. Мягкий режим., Расправить и сушить на плоскости",
    type: ClothesType.shortCoat,
  ),
  WomanData(
    images: [
      "assets/images/woman_assets/down_jacket/стеганый_пуховик_1.jpg",
      "assets/images/woman_assets/down_jacket/стеганый_пуховик_2.jpg",
      "assets/images/woman_assets/down_jacket/стеганый_пуховик_3.jpg",
      "assets/images/woman_assets/down_jacket/стеганый_пуховик_4.jpg",
    ],
    sizes: [
      "XL",
    ],
    colors: [
      Color.fromRGBO(133, 133, 133, 1.0),
      Color.fromRGBO(180, 193, 207, 1.0),
      Color.fromRGBO(0, 0, 0, 1.0),
      Color.fromRGBO(250, 235, 215, 1.0),
    ],
    name: "Стеганый пуховик",
    price: 2899,
    description:
        "Состав: 100% полиэстер, Подкладка: 100% полиэстер, Утеплитель: 100% полиэстер, Наполнитель: Искусственный пух, 350 г на изд. Температурный режим до -5°С.\nСтрана-производитель: КИТАЙ\nУход: Не стирать, Не отбеливать, Сушка в расправленном виде. Не скручивать, Не гладить, Профессиональная сухая чистка. Мягкий режим.",
    type: ClothesType.downJacket,
  ),
  WomanData(
    images: [
      "assets/images/woman_assets/down_jacket/пуховик_из_хлопка_1.jpg",
      "assets/images/woman_assets/down_jacket/пуховик_из_хлопка_2.jpg",
      "assets/images/woman_assets/down_jacket/пуховик_из_хлопка_3.jpg",
      "assets/images/woman_assets/down_jacket/пуховик_из_хлопка_4.jpg",
    ],
    sizes: [
      "2XL",
    ],
    colors: [
      Color.fromRGBO(0, 107, 84, 1.0),
      Color.fromRGBO(175, 28, 37, 1.0),
      Color.fromRGBO(250, 235, 215, 1.0),
    ],
    name: "Пуховик из хлопка",
    price: 2999,
    description:
        "Состав: 55% хлопок, 45% полиэстер, Подкладка: 100% полиэстер, Утеплитель: 100% полиэстер, Наполнитель: Искусственный пух, 300 г на изд. Температурный режим до -5°С.\nСтрана-производитель: КИТАЙ\nУход: Не стирать, Не отбеливать, Вертикальная сушка, Не гладить, Профессиональная сухая чистка. Мягкий режим.",
    type: ClothesType.downJacket,
  ),
  WomanData(
    images: [
      "assets/images/woman_assets/jacket/куртка_на_молнии_1.jpg",
      "assets/images/woman_assets/jacket/куртка_на_молнии_2.jpg",
      "assets/images/woman_assets/jacket/куртка_на_молнии_3.jpg",
      "assets/images/woman_assets/jacket/куртка_на_молнии_4.jpg",
    ],
    sizes: [
      "2XL",
    ],
    colors: [
      Color.fromRGBO(133, 133, 133, 1.0),
      Color.fromRGBO(250, 235, 215, 1.0),
      Color.fromRGBO(248, 231, 222, 1.0),
    ],
    name: "Куртка на молнии",
    price: 3999,
    description:
        "Состав: 100% полиэстер, Подкладка: 100% полиэстер, Утеплитель: 100% полиэстер, Наполнитель: Искусственный пух, 300 г на изд. Температурный режим до -5°С.\nСтрана-производитель: КИТАЙ\nУход: Не стирать, Не отбеливать, Сушка в расправленном виде. Не скручивать, Не гладить, Профессиональная сухая чистка. Мягкий режим.",
    type: ClothesType.jacket,
  ),
  WomanData(
    images: [
      "assets/images/woman_assets/leather_jacket/куртка_на_молнии_коссухи_1.jpg",
      "assets/images/woman_assets/leather_jacket/куртка_на_молнии_коссухи_2.jpg",
      "assets/images/woman_assets/leather_jacket/куртка_на_молнии_коссухи_3.jpg",
      "assets/images/woman_assets/leather_jacket/куртка_на_молнии_коссухи_4.jpg",
    ],
    sizes: [
      "2XS",
      "XS",
    ],
    colors: [
      Color.fromRGBO(133, 133, 133, 1.0),
      Color.fromRGBO(250, 235, 215, 1.0),
      Color.fromRGBO(248, 231, 222, 1.0),
    ],
    name: "Коссуха на молнии",
    price: 1699,
    description:
        "Состав: Внешний слой: 100% полиуретан, Внутренний слой: 100% вискоза, Подкладка: 100% полиэстер\nСтрана-производитель: КИТАЙ\nУход: Не стирать, Не отбеливать, Вертикальная сушка, Не гладить, Сухая чистка запрещена, Глажение по изнаночной стороне",
    type: ClothesType.leatherJacket,
  ),
];
