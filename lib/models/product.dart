class Product {
  final String name;
  final int price;
  final String image;
  final String description;

  Product({required this.name, required this.price, required this.image, required this.description});
}

var productList = [
  Product(
    name: "Nike Air Force 1 '07",
    price: 1549000,
    description: "The radiance lives on in the Nike Air Force 1 '07, the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.",
    image:
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/b7d9211c-26e7-431a-ac24-b0540fb3c00f/air-force-1-07-shoes-WrLlWX.png',
  ),
  Product(
    name: "Nike Zoom Vomero 5",
    price: 2489000,
    description: "The Nike Zoom Vomero 5 wraps your foot in breathable support. A combination of durable materials stands ready for the rigors of your day. Soft foam and Zoom Air cushioning deliver lightweight comfort for a smooth ride.",
    image:
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/b03267cc-b6ac-4a7b-b2b3-abb3d9014173/zoom-vomero-5-shoes-KxjTbk.png',
  ),
  Product(
    name: "Reebok Glide Unisex",
    price: 699300,
        description: "Tidak ada yang tidak perlu. Sepatu Reebok Glide ini memberikan semua yang Anda butuhkan. Kenakan dengan apa saja, berkat desain yang bersih dan minimalis. Kenyamanan adalah kuncinya dengan sockliner mewah dan midsole yang empuk.",
    image:
        'https://www.reebok.id/media/catalog/product/cache/1384ea813c36abc3a773dd6494b9b881/0/1/01-REEBOK-FFSSBREEA-REE10010028-Black.jpg',
  ),
  Product(
    name: "Reebok Glide Men",
    price: 999000,
    description: "Tidak ada yang tidak perlu. Sepatu Reebok Glide ini memberikan semua yang Anda butuhkan. Kenakan dengan apa saja, berkat desain yang bersih dan minimalis. Kenyamanan adalah kuncinya dengan sockliner mewah dan midsole yang empuk.",
    image:
        'https://www.reebok.id/media/catalog/product/cache/1384ea813c36abc3a773dd6494b9b881/0/8/0888-REE10034365NAV11H-1.jpg',
  ),
  Product(
    name: "Rapidsport X Disney",
    price: 1200000,
    description: "Great catch! This exclusive product is only available at adidas and can't be found anywhere else.",
    image:
        'https://www.adidas.co.id/media/catalog/product/i/g/ig0454_2_footwear_photography_side20lateral20view_grey.jpg',
  ),
  Product(
    name: "Adidas Adizero",
    price: 1600000,
    description: "adidas ADIZERO SL is a fast daily training shoe, packed with key ingredients and design markers from our world record breaking Adizero franchise. The midsole consists of a full length lightweight Lightstrike EVA chassis which provides a balance of stability, resilience & cushioning. This combines with our world renowned Lightstrike Pro foam and a fast, training upper made of a super soft engineered mesh zoned in key areas. An overtly padded heel & tongue construction providing improved step-in and ride comfort together with our ADIZERO heel-blinker sign off, complete the upper construction. Last, the full rubber outsole provides traction on any surface – in any condition. Made with a series of recycled materials, this upper features at least 50% recycled content. This product represents just one of our solutions to help end plastic waste.",
    image:
        "https://www.adidas.co.id/media/catalog/product/h/q/hq1346_2_footwear_photography_side20lateral20view_grey.jpg",
  ),
  Product(
    name: "Chuck Taylor All Star",
    price: 999000,
    description: "Sepatu Chucks ikonis yang Anda suka, bertumbuk-ganda. Pilih ini apabila Anda ingin tampil lebih tinggi penuh percaya diri.",
    image:
        "https://www.converse.id/media/catalog/product/cache/1384ea813c36abc3a773dd6494b9b881/0/1/01-CONVERSE-FFSSBCONA-CON570257C-White.jpg",
  ),
  Product(
    name: "Star Player 76 Sport",
    price: 1199000,
    description: "Converse tahu apa yang dibutuhkan untuk mencapai status sebuah ikon. Gaya timeless, inovasi tanpa henti, dan -- Anda. Itulah mengapa sepatu Star Player 76 dibuat untuk Anda dan gaya hidup Anda. Desain bergaya sepatu lapangan dan fokus yang seluruhnya Converse, tapi masih ada ruang untuk gaya Anda bermain di dalamnya.",
    image:
        "https://www.converse.id/media/catalog/product/cache/1384ea813c36abc3a773dd6494b9b881/0/8/0888-CONA05207CGRE09H-1.jpg",
  ),
  Product(
    name: "New Balance Fresh Foam X",
    price: 2599000,
    description: "Kebanyakan orang tidak menjadikan olahraga sebagai rutinitas yang menuntut fisik dan membutuhkan usaha yang gigih untuk menjadi mahir. Bahkan lebih sedikit lagi yang melakukannya hanya untuk bersenang-senang. Seperti yang selalu kami katakan - pelari tidaklah normal. Kami merancang 860 untuk memenuhi tuntutan yang diberikan pada sepatu oleh dedikasi para pelari yang mengutamakan stabilitas setiap hari. Entri terbaru dalam seri ini, sepatu lari pria Fresh Foam X 860v13, menambah pengalaman bantalan terbaik dari Fresh Foam X dengan tiang medial yang mendukung untuk memberikan stabilitas yang penting. Dibuat untuk keandalan dalam jangka panjang dan kenyamanan yang berkelanjutan di semua jarak, 860 adalah sepatu yang benar-benar cocok untuk digunakan.",
    image:
        "https://www.newbalance.co.id/media/catalog/product/cache/1384ea813c36abc3a773dd6494b9b881/0/1/01-NEW-BALANCE-F34RUNEWA-NEWM108012A-Brown.jpg",
  ),
  Product(
    name: "New Balance 413 V2",
    price: 999000,
    description: "Terinspirasi oleh pelari yang didorong oleh kinerja, sepatu lari wanita 413V2 dirancang untuk kenyamanan yang lembut, mewah, dan keserbagunaan yang tahan lama.Baik Anda pergi ke gym, berjalan-jalan, atau hany abersantai, sepatu ini memberi Anda dukungan ringan yang Anda butuhkan untuk terus berjalan sepanjang hari.",
    image:
        "https://www.newbalance.co.id/media/catalog/product/cache/1384ea813c36abc3a773dd6494b9b881/0/1/01-NEW-BALANCE-F34FINEWA-NEWM413GW2-Grey.jpg",
  )
];
