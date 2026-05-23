class MenuItemData {
  final String image;
  final String title;
  final String description;
  final String badge;
  final String price;
  final String? salePrice;
  final String category;

  final String shopeeUrl;
  final String grabUrl;
  final String beUrl;
  final String greenUrl;

  MenuItemData({
    required this.image,
    required this.title,
    required this.description,
    required this.badge,
    required this.price,
    this.salePrice,
    required this.category,

    required this.shopeeUrl,
    required this.grabUrl,
    required this.beUrl,
    required this.greenUrl,
  });
}

final List<MenuItemData> allMenus = [
  MenuItemData(
    image: "assets/Comsuonbichachay.jpg",
    title: "Cơm Tấm Sườn Bì Chả Chay",
    description:
        "Chả hấp thơm ngon, Sườn đậm vị, Bì dai dai, mỡ hành beo béo, tóp mỡ giòn tan, đồ chua giòn ngon trên nền gạo tấm hoà quyện với nước mắm vị Sài Gòn đặc trưng... Wao hưởng thôi",
    badge: "Bestseller",
    price: "59.000 VND",
    salePrice: "49.000 VND",
    category: "Hương Vị Sài Gòn",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),
  MenuItemData(
    image: "assets/Comsuon.jpg",
    title: "Cơm Tấm Sườn Bì Chay",
    description:
        "Sườn đậm vị, Bì dai dai, mỡ hành beo béo, tóp mỡ giòn tan, đồ chua giòn giòn, trên nền gạo tấm hoà quyện với nước mắm vị Sài Gòn đặc trưng... Wao hưởng thôi",
    badge: "Popular",
    price: "45.000 VND",
    salePrice: "39.000 VND",
    category: "Hương Vị Sài Gòn",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/Comcha.jpg",
    title: "Cơm Tấm Bì Chả Chay",
    description:
        "Chả hấp thơm ngon, Bì dai dai, mỡ hành beo béo, tóp mỡ giòn tan, đồ chua giòn ngon trên nền gạo tấm hoà quyện với nước mắm vị Sài Gòn đặc trưng... Wao hưởng thôi",
    badge: "Light",
    price: "45.000 VND",
    salePrice: "39.000 VND",
    category: "Hương Vị Sài Gòn",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/bunchagio.jpg",
    title: "Bún Chả Giò Chay",
    description:
        "Chả giò chay giòn rụm, tóp mỡ giòn tan kết hợp với đậu phộng thơm thơm kèm thịt chay trên nền bún tươi và rau sống, tất cả được kết nối bằng nước mắm pha chế riêng, tạo nên một hương vị hoàn hảo",
    badge: "Light",
    price: "45.000 VND",
    salePrice: "40.500 VND",
    category: "Hương Vị Sài Gòn",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/banhmisaigon.jpg",
    title: "Bánh Mì Sài Gòn",
    description:
        "Bánh mì Sài Gòn mang trong mình là thịt chay tẩm vị xá xíu, đồ chua giòn giòn cùng rau ngò và dưa leo thanh mát, tất cả được kết nối với nhau bằng sốt TUTE đặc biệt. Thưởng thức thôi!",
    badge: "Light",
    price: "25.000 VND",
    salePrice: "20.000 VND",
    category: "Hương Vị Sài Gòn Tiện Lợi",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/banhmibi.jpg",
    title: "Bánh Mì Bì Chay",
    description:
        "Bánh mì bì chứa đựng văn hoá ẩm thực Sài Gòn trong đó với topping gồm bì(chay), đồ chua giòn giòn, một ít tóp mỡ(chay), mỡ hành, dưa leo, và không thể thiếu nước mắm huyền thoại đặc trưng",
    badge: "Light",
    price: "25.000 VND",
    salePrice: "20.000 VND",
    category: "Hương Vị Sài Gòn Tiện Lợi",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/banhmichahap.jpg",
    title: "Bánh Mì Chả Hấp Chay",
    description:
        "Bánh mì chả hấp thơm thơm beo béo dùng kèm với bì chay, đồ chua giòn giòn, một ít tóp mỡ (chay), mỡ hành, dưa leo, và tát cả được kết nối lại với nước mắm chay TUTE tạo nên một hương vị hài hoà",
    badge: "Light",
    price: "30.000 VND",
    salePrice: "25.000 VND",
    category: "Hương Vị Sài Gòn Tiện Lợi",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/banhmisaigonhongtra.jpg",
    title: "Combo Bánh Mì SG + Hồng trà tắc xí muội",
    description:
        "Bộ đôi vừa tiện lợi và vừa ngon lành đó là gì? là gì?... là Combo Bánh Mì Sài Gòn +  Hồng Trà Tắc Xí Muội ^_^",
    badge: "Light",
    price: "50.000 VND",
    salePrice: "39.000 VND",
    category: "Combo Sài Gòn Tiết Kiệm",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/comcanh.jpg",
    title: "Cơm canh chay mát lành",
    description:
        "Combo cơm tấm sườn bì chả đậm vị kết hợp với canh rong biển thanh mát, tạo nên một hương vị Sài Gòn khó quên! ^_^",
    badge: "Light",
    price: "74.000 VND",
    salePrice: "59.000 VND",
    category: "Combo Sài Gòn Tiết Kiệm",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/comhongtra.jpg",
    title: "Combo Cơm Tấm Sườn Bì Chả Chay+ Hồng trà tắc xí muội",
    description:
        "Cơm Tấm Sường Bì Chả Chay mà bên cạnh có ly Hồng trà tắc xí muội chua chua mặn mặn nữa trọn bộ ngon lành cành đào ^_^",
    badge: "Light",
    price: "84.000 VND",
    salePrice: "69.000 VND",
    category: "Combo Sài Gòn Tiết Kiệm",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/comtraolong.jpg",
    title: "Combo Trà Ô Long + Cơm Tấm Sườn Bì Chả Chay",
    description: "Nhập PEPSI25KFF giảm ngay 25k",
    badge: "Light",
    price: "79.000 VND",
    salePrice: "65.000 VND",
    category: "Combo Thanh Mát",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/traolongbunchagio.jpg",
    title: "Combo Trà Ô Long + Bún Chả Giò Chay",
    description: "Nhập PEPSI25KFF giảm ngay 25k",
    badge: "Light",
    price: "65.000 VND",
    salePrice: "59.000 VND",
    category: "Combo Thanh Mát",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/olongbanhmisg.jpg",
    title: "Combo Trà Ô Long + Bánh Mì Sài Gòn Chay",
    description: "Nhập PEPSI25KFF giảm ngay 25k",
    badge: "Light",
    price: "45.000 VND",
    salePrice: "39.000 VND",
    category: "Combo Thanh Mát",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/olongbanhmibi.jpg",
    title: "Combo Trà Ô Long + Bánh Mì Bì Chay",
    description: "Nhập PEPSI25KFF giảm ngay 25k",
    badge: "Light",
    price: "45.000 VND",
    salePrice: "39.000 VND",
    category: "Combo Thanh Mát",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/compepsi.jpg",
    title: "Combo Pepsi + Cơm Tấm Sườn Bì Chay",
    description:
        "Cơm Tấm Sườn Bì Chả Chay kết hợp với Pepsi sảng khoái... thiệt đaaaaaaaaaaaaaaaaaã quá điiiiiiiiiiiii!",
    badge: "Light",
    price: "79.000 VND",
    salePrice: "65.000 VND",
    category: "Combo Sảng Khoái",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/bunpepsi.jpg",
    title: "Combo Pepsi + Bún Chả Giò Chay",
    description:
        "Bún Chả Giò Chay kết hợp với Pepsi sảng khoái... thiệt đaaaaaaaaaaaaaaaaaã quá điiiiiiiiiiiii!",
    badge: "Light",
    price: "65.000 VND",
    salePrice: "59.000 VND",
    category: "Combo Sảng Khoái",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/banhmigsaigonpepsi.jpg",
    title: "Combo Pepsi + Bánh Mì Sài Gòn Chay",
    description:
        "Bánh Mì Sài Gòn kết hợp với Pepsi sảng khoái... thiệt đaaaaaaaaaaaaaaaaaã quá điiiiiiiiiiiii!",
    badge: "Light",
    price: "45.000 VND",
    salePrice: "39.000 VND",
    category: "Combo Sảng Khoái",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/olongbanhmibi.jpg",
    title: "Combo Pepsi + Bánh Mì Bì Chay",
    description:
        "Bánh Mì Bì Chay kết hợp với Pepsi sảng khoái... thiệt đaaaaaaaaaaaaaaaaaã quá điiiiiiiiiiiii!",
    badge: "Light",
    price: "45.000 VND",
    salePrice: "39.000 VND",
    category: "Combo Sảng Khoái",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/canhrongbien.jpg",
    title: "Canh Rong Biển",
    description:
        "Sự mát lành đến từ rong biển và nấm rơm khi dùng chung với các món chính sẽ giúp bạn cảm thấy nhẹ nhõm hơn",
    badge: "Light",
    price: "15.000 VND",
    category: "Hương Vị Mát Lành",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/zonzoncaycay.jpg",
    title: "Snack TUTE Zòn Zòn Cay Cay",
    description:
        "Snack TUTE zòn zòn chấm với sốt mát lạnh TUTE Cay Cay được làm từ đạm đậu nành, tương ớt & dầu hạt cải sẽ giúp bạn không còn cảm giác buồn miệng nữa. Ăn Vặt thôi!",
    badge: "Light",
    price: "25.000 VND",
    category: "Ăn Vặt Sài Gòn",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/zonzoncayman.jpg",
    title: "Snack TUTE Zòn Zòn Cay Mặn",
    description:
        "Snack TUTE zòn zòn chấm với sốt mát lạnh Xí muội được làm từ đạm đậu nành, tương ớt & dầu hạt cải sẽ giúp bạn không còn cảm giác buồn miệng nữa. Ăn Vặt thôi!",
    badge: "Light",
    price: "25.000 VND",
    category: "Ăn Vặt Sài Gòn",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/zonzontratac.jpg",
    title: "Combo Snack TUTE Zòn Zòn + Hồng Trà Tắc Xí Muội",
    description:
        "Snack TUTE zòn zòn chấm với sốt TUTE và làm vài ngụm Hồng trà tắc xí muội chua chua mặn mặn thì thật là tuyệt vời",
    badge: "Light",
    price: "50.000 VND",
    salePrice: "45.000 VND",
    category: "Ăn Vặt Sài Gòn",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/hongtratacximuoi.jpg",
    title: "Hồng Trà Tắc Xí Muội",
    description:
        "Xí muội mặn mặn, Tắc thơm thơm chua chua hoà quyện với Hồng trà tạo nên một thức uống mang hương vị rất Sài Gòn. Trải nghiệm ngay bạn nhé!",
    badge: "Light",
    price: "25.000 VND",
    salePrice: "19.000 VND",
    category: "Ăn Vặt Sài Gòn",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/5chagiosotcay.jpg",
    title: "5 Chả giò sốt cay cay",
    description:
        "Chả giò TUTE với nhân gồm các loại khoai nấm và ham chay được bọc trong lớp vỏ zòn tan, chấm kèm với sốt TUTE thì thật là hết nước chấm ^_^",
    badge: "Light",
    price: "60.000 VND",
    salePrice: "49.000 VND",
    category: "Ăn Vặt Sài Gòn",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/chagiotratac.jpg",
    title: "Combo Chả Giò Chấm Sốt TUTE + Hồng Trà Tắc Xí Muội ",
    description:
        "Chả giò chấm sốt TUTE thêm vài ngụm Hồng trà tắc xí muội chua chua mặn mặn thì thật là tuyệt vời!",
    badge: "Light",
    price: "84.000 VND",
    salePrice: "75.600 VND",
    category: "Ăn Vặt Sài Gòn",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/10chagio.jpg",
    title: "10 Chả giò sốt cay cay",
    description:
        "Chả giò TUTE với nhân gồm các loại khoai nấm và ham chay được bọc trong lớp vỏ zòn tan, chấm kèm với sốt TUTE thì thật là hết nước chấm ^_^",
    badge: "Light",
    price: "120.000 VND",
    salePrice: "108.000 VND",
    category: "Ăn Vặt Sài Gòn",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/olong.jpg",
    title: "Trà Ô Long Tea Plus chai 320ml",
    description: "Trà Ô Long Tea Plus + kèm ly đá",
    badge: "Light",
    price: "20.000 VND",
    category: "Ăn Vặt Sài Gòn",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/pepsi.jpg",
    title: "Pepsi chai 390ml",
    description: "Pepsi Chai + kèm ly đá",
    badge: "Light",
    price: "20.000 VND",
    category: "Ăn Vặt Sài Gòn",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/coca.jpg",
    title: "Coca-Cola chai 390ml",
    description: "Coca-Cola Chai + kèm ly đá",
    badge: "Light",
    price: "20.000 VND",
    category: "Ăn Vặt Sài Gòn",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/suon.jpg",
    title: "Sườn chay TUTE",
    description: "Sường chay đậm vị",
    badge: "Light",
    price: "15.000 VND",
    category: "Món Thêm",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/chahap.jpg",
    title: "Chả hấp chay TUTE",
    description: "Chả hấp chay không dùng trứng",
    badge: "Light",
    price: "15.000 VND",
    category: "Món Thêm",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/chagio.jpg",
    title: "Chả giò chay TUTE",
    description:
        "Chả giò nóng giòn khoai lang, khoai môn, cà rốt và các loại nấm",
    badge: "Light",
    price: "10.000 VND",
    salePrice: "9000 VND",
    category: "Món Thêm",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/comthem.jpg",
    title: "Cơm Thêm",
    description: "Cơm trắng kèm mỡ hành",
    badge: "Light",
    price: "5.000 VND",
    category: "Món Thêm",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/bunthem.jpg",
    title: "Bún Thêm",
    description: "Bún tươi kèm mỡ hành",
    badge: "Light",
    price: "5.000 VND",
    category: "Món Thêm",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/sotcayman.jpg",
    title: "Sốt Cay Mặn",
    description: "Sốt mát lạnh cay cay mặn mặn làm từ xí muội và ớt",
    badge: "Light",
    price: "10.000 VND",
    category: "Món Thêm",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/sotcaycay.jpg",
    title: "Sốt Cay Cay",
    description:
        "Sốt mát lạnh TUTE Cay Cay làm từ đạm đậu nành, tương ớt & dầu hạt cải sẽ giúp bạn không còn cảm giác buồn miệng nữa.",
    badge: "Light",
    price: "10.000 VND",
    category: "Món Thêm",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),

  MenuItemData(
    image: "assets/lyda.jpg",
    title: "Ly đá tinh khiết",
    description:
        "Đá tinh khiết kèm ống hút trong chiếc ly trong trẻo sẽ giúp món nước của bạn ngon và mát hơn ^_^",
    badge: "Light",
    price: "5.000 VND",
    category: "Món Thêm",
    shopeeUrl: "https://shopeefood.vn/u/p6L6MVw",
    grabUrl:
        "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
    beUrl: "https://begroup.onelink.me/ZOqn/6r2g5fau",
    greenUrl: "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
  ),
];
