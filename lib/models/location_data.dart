class LocationData {
  String thumbnail,
      headerImage,
      name,
      address,
      package,
      summary,
      funfact,
      history;

  LocationData(
      {this.thumbnail,
      this.headerImage,
      this.name,
      this.address,
      this.package,
      this.summary,
      this.funfact,
      this.history});
}

LocationData mountFuji = LocationData(
  thumbnail: 'assets/fuji_thumb.jpg',
  headerImage: 'assets/fuji.jpg',
  name: 'MOUNT FUJI',
  address: 'CENTRAL HONSHU, JAPAN',
  package: 'STANDARD PACKAGE',
  summary:
      "It's considered one of Japan's 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo Period prints by Hokusai and Hiroshige.",
  funfact:
      "There are three cities that surrount Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.",
  history:
      "Mount Fuji is an attractive volcanic cone and a frequent subject of Japanese art especially after 1600, when Edo (now Tokyo) became the capital and people saw the mountain while traveling on the Tōkaidō road. According to the historian H. Byron Earhart, \"in medieval times it eventually came to be seen by Japanese as the “number one” mountain of the known world of the three countries of India, China, and Japan\". The mountain is mentioned in Japanese literature throughout the ages and is the subject of many poems.",
);

LocationData eiffelTower = LocationData(
  thumbnail: 'assets/eiffel_thumb.jpg',
  headerImage: 'assets/eiffel.jpg',
  name: 'EIFFEL TOWER',
  address: 'PARIS, FRANCE',
  package: 'VIP PACKAGE',
  summary:
      "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower.",
  funfact: "The Eiffel Tower was supposed to be torn down after 20 years.",
  history:
      "The design of the Eiffel Tower is attributed to Maurice Koechlin and Émile Nouguier, two senior engineers working for the Compagnie des Établissements Eiffel. It was envisioned after discussion about a suitable centrepiece for the proposed 1889 Exposition Universelle, a world's fair to celebrate the centennial of the French Revolution. Eiffel openly acknowledged that inspiration for a tower came from the Latting Observatory built in New York City in 1853. In May 1884, working at home, Koechlin made a sketch of their idea, described by him as \"a great pylon, consisting of four lattice girders standing apart at the base and coming together at the top, joined together by metal trusses at regular intervals\". Eiffel initially showed little enthusiasm, but he did approve further study, and the two engineers then asked Stephen Sauvestre, the head of company's architectural department, to contribute to the design. Sauvestre added decorative arches to the base of the tower, a glass pavilion to the first level, and other embellishments.",
);

LocationData tajMahal = LocationData(
  thumbnail: 'assets/taj_thumb.jpg',
  headerImage: 'assets/taj.jpg',
  name: 'TAJ MAHAL',
  address: 'AGRA, INDIA',
  package: 'VIP PACKAGE',
  summary:
      "The Taj Mahal is an ivory-white marble mausoleum on the southern bank of the river Yamuna in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor Shah Jahan to house the tomb of his favourite wife, Mumtaz Mahal; it also houses the tomb of Shah Jahan himself.",
  funfact:
      "The Taj Mahal was built by a whopping 22,000 laborers, painters, stonecutters, embroidery artists.",
  history:
      "The Taj Mahal was commissioned by Shah Jahan in 1631, to be built in the memory of his wife Mumtaz Mahal, who died on 17 June that year, while giving birth to their 14th child, Gauhara Begum. Construction started in 1632, and the mausoleum was completed in 1648, while the surrounding buildings and garden were finished five years later. The imperial court documenting Shah Jahan's grief after the death of Mumtaz Mahal illustrates the love story held as the inspiration for the Taj Mahal. The Taj Mahal incorporates and expands on design traditions of Indo-Islamic and earlier Mughal architecture. While earlier Mughal buildings were primarily constructed of red sandstone, Shah Jahan promoted the use of white marble inlaid with semi-precious stones. Buildings under his patronage reached new levels of refinement.",
);

List<LocationData> locationDataList = [mountFuji, eiffelTower, tajMahal];
