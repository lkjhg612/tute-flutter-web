//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/app_drawer.dart';
import 'package:flutterweb/footer.dart';
import 'package:flutterweb/headerblurupgrade.dart';
import 'package:flutterweb/menuitemupgrade.dart';
import 'package:flutterweb/menupage/cta_menu.dart';
import 'package:flutterweb/menupage/menuherosectionpage.dart';
import 'package:flutterweb/menupage/menuitemdata.dart';

import 'package:flutterweb/menupage/menu_detail_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String selectedCategory = "All";
  int selectedIndex = 0;
  int? hoverIndex;
  final controller = ScrollController();

  final ScrollController mobileTabsController = ScrollController();
  bool isTabsHover = false;

  double get tabAlignX {
    if (categories.length == 1) return 0;
    return -1 + (2 * selectedIndex / (categories.length - 1));
  }

  List<MenuItemData> get filteredMenus {
    //trả về toàn bộ món
    //lọc ra những món có category == "Bowls" hoặc là cái khác

    //Ý nghĩa:
    // •	tab đầu = -1
    // •	tab cuối = 1
    // •	mấy tab giữa nằm ở giữa
    if (selectedCategory == "All") {
      return allMenus;
    }
    //duyệt từng item
    //giữ lại item nào có category trùng với tab đang chọn
    return allMenus.where((item) => item.category == selectedCategory).toList();
  }

  final List<String> categories = [
    "All",
    "Hương Vị Sài Gòn",
    "Hương Vị Sài Gòn Tiện Lợi",
    "Combo Sài Gòn Tiết Kiệm",
    "Combo Sảng Khoái",
    "Combo Thanh Mát",
    "Hương Vị Mát Lành",
    "Ăn Vặt Sài Gòn",
    "Món Thêm",
  ];

  //widget riêng nằm trong class
  Widget buildWrapTabs() {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallMobile = screenWidth < 430;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16), //24
      child: Wrap(
        spacing: 8, //khoảng cách ngang giữa các con cũ: 10
        runSpacing: 10, //khoảng cách dọc giữa các dòng //12
        alignment: WrapAlignment.center,
        children: categories.map((category) {
          final isSelected = selectedCategory == category;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedCategory = category;
                selectedIndex = categories.indexOf(category);
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: EdgeInsets.symmetric(
                //horizontal: 18,
                horizontal: isSmallMobile ? 10 : 12, //12 14
                vertical: isSmallMobile ? 8 : 10, //10
              ),
              decoration: BoxDecoration(
                color: isSelected ? Colors.white : const Color(0xFFEAEAF0),
                borderRadius: BorderRadius.circular(22), //24
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: isSmallMobile ? 140 : 160, //150 /170
                ),
                child: Text(
                  category,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: isSmallMobile ? 12.5 : 13.5, //13 14
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                    color: isSelected ? Colors.black87 : Colors.grey.shade700,
                    height: 1.2,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget buildSlidingTabs() {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1000),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: const Color(0xFFEAEAF0),
              borderRadius: BorderRadius.circular(30),
            ),
            child: SizedBox(
              height: 48,
              child: Stack(
                children: [
                  AnimatedAlign(
                    alignment: Alignment(tabAlignX, 0),
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeInOut,
                    child: FractionallySizedBox(
                      widthFactor: 1 / categories.length,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.05),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: List.generate(categories.length, (index) {
                      final category = categories[index];
                      final isSelected = selectedIndex == index;
                      final isHover = hoverIndex == index;

                      // return Expanded(
                      //   child: GestureDetector(
                      //     onTap: () {
                      //       setState(() {
                      //         selectedIndex = index;
                      //         selectedCategory = category;
                      //       });
                      //     },
                      //     child: Center(
                      //       child: Text(
                      //         category,
                      //         style: TextStyle(
                      //           fontWeight: isSelected
                      //               ? FontWeight.bold
                      //               : FontWeight.w500,
                      //           color: isSelected
                      //               ? Colors.black
                      //               : Colors.grey.shade700,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // );

                      return Expanded(
                        child: MouseRegion(
                          onEnter: (_) {
                            setState(() {
                              hoverIndex = index;
                            });
                          },
                          onExit: (_) {
                            setState(() {
                              hoverIndex = null;
                            });
                          },
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                                selectedCategory = category;
                              });
                            },
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 150),
                              alignment: Alignment.center,
                              child: Text(
                                category,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  //fontSize: 14,
                                  fontWeight: isSelected
                                      ? FontWeight.bold
                                      : isHover
                                      ? FontWeight.w600
                                      : FontWeight.w500,

                                  color: isSelected
                                      ? Colors.black
                                      : isHover
                                      ? Colors.black87
                                      : Colors.grey.shade700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMobileTabs() {
    final screenWidth = MediaQuery.of(context).size.width;

    // final isDesktopLike = screenWidth >= 700; //này chỉ là mobile thôi nên tablet vẫn còn bị hiện scroll bar bởi vì bị tính là desktop nên là tăng điều kiện của width ra
    final isDesktopLike = screenWidth >= 1100;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: MouseRegion(
        onEnter: (_) {
          if (isDesktopLike) {
            setState(() {
              isTabsHover = true;
            });
          }
        },

        onExit: (_) {
          if (isDesktopLike) {
            setState(() {
              isTabsHover = false;
            });
          }
        },

        child: Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: const Color(0xFFEAEAF0),
            borderRadius: BorderRadius.circular(28),
          ),

          // child: Scrollbar(
          //   controller: mobileTabsController,
          //   thumbVisibility: isDesktopLike ? isTabsHover : false,
          //   trackVisibility: false,
          //   thickness: isDesktopLike ? 3 : 2,
          //   radius: const Radius.circular(999),

          //   child: SingleChildScrollView(
          //     controller: mobileTabsController,
          //     scrollDirection: Axis.horizontal,
          //     physics: const BouncingScrollPhysics(),
          //     child: Row(
          //       children: buildTabItems(),
          //     ),
          //   ),
          // ),
          child: isDesktopLike
              ? Scrollbar(
                  controller: mobileTabsController,
                  thumbVisibility: isTabsHover,
                  trackVisibility: false,
                  thickness: 2,
                  radius: const Radius.circular(999),

                  child: SingleChildScrollView(
                    controller: mobileTabsController,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(children: buildTabItems()),
                  ),
                )
              : SingleChildScrollView(
                  controller: mobileTabsController,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(children: buildTabItems()),
                ),
        ),
      ),
    );
  }

  List<Widget> buildTabItems() {
    return List.generate(categories.length, (index) {
      final category = categories[index];
      final isSelected = selectedIndex == index;

      return Padding(
        // padding: const EdgeInsetsGeometry.only(right: 8),
        padding: EdgeInsets.only(right: index == categories.length - 1 ? 0 : 8),
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
              selectedCategory = category;
            });
          },

          child: AnimatedContainer(
            duration: Duration(milliseconds: 100),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              color: isSelected ? Colors.white : const Color(0xFFEAEAF0),
              borderRadius: BorderRadius.circular(22),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Text(
              category,
              style: TextStyle(
                fontSize: 13,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                color: isSelected ? Colors.black87 : Colors.grey.shade700,
              ),
            ),
          ),
        ),
      );
    });
  }

  @override
  void dispose() {
    mobileTabsController.dispose();
    super.dispose();
  } //kết thúc vòng đời

  //dùng lại widget menuitemupgrade
  //menuitemdata.dart = dữ liệu món
  // MenuPage = lọc dữ liệu
  // MenuItemUpgrade = hiển thị dữ liệu thành card

  void openMenuDetail(MenuItemData item) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 700;

    if (isMobile) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => MenuDetailPage(item: item)),
      );
    } else {
      showDialog(
        context: context,
        builder: (_) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            // child: SizedBox(
            //   width: 520,
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(24),
            //     child: MenuDetailPage(item: item),
            //   ),
            // ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 520,
                maxHeight: MediaQuery.of(context).size.height * 0.88,
              ),

              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: MenuDetailPage(item: item),
              ),
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 700;
    final isTablet = screenWidth >= 700 && screenWidth < 1100;
    //final useWrapTabs = screenWidth < 1200;
    final double cardWidth = screenWidth < 700 ? screenWidth - 32 : 320;
    final padding = MediaQuery.of(context).padding;
    final isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final sidePadding = isLandScape ? padding.left + 12.0 : 16.0;

    return Scaffold(
      key: scaffoldKey,
      endDrawer: const AppDrawer(),
      body: SafeArea(
        bottom: false,
        left: true,
        right: true,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                 const SizedBox(height: 82),
                  const HeroSectionMenu(),

                  // Center(
                  //   child: Text(
                  //     "Selected: $selectedCategory",
                  //     style: TextStyle(fontSize: 20),
                  //   ),
                  // ),
                  SizedBox(height: 24),

                  // thanh trắng demo thử
                  // Wrap(
                  //   spacing: 12,
                  //   children: categories.map((category) {
                  //     // return ElevatedButton(
                  //     //   onPressed: () {
                  //     //     setState(() {
                  //     //       selectedCategory = category;
                  //     //     });
                  //     //   },
                  //     //   child: Text(category),
                  //     // );

                  //     final isSelected = selectedCategory == category;
                  //     return GestureDetector(
                  //       onTap: () {
                  //         setState(() {
                  //           selectedCategory = category;
                  //         });
                  //       },
                  //       child: AnimatedContainer(
                  //         duration: const Duration(milliseconds: 200),
                  //         padding: const EdgeInsets.symmetric(
                  //           horizontal: 18,
                  //           vertical: 10,
                  //         ),
                  //         decoration: BoxDecoration(
                  //           color: isSelected
                  //               ? Colors.white
                  //               : const Color(0xFFEAEAF0),
                  //           borderRadius: BorderRadius.circular(24),
                  //           border: Border.all(color: Colors.grey.shade300),
                  //         ),
                  //         child: Text(
                  //           category,
                  //           style: TextStyle(
                  //             fontWeight: isSelected
                  //                 ? FontWeight.bold
                  //                 : FontWeight.w500,
                  //             color: isSelected
                  //                 ? Colors.black87
                  //                 : Colors.grey.shade700,
                  //           ),
                  //         ),
                  //       ),
                  //     );
                  //   }).toList(),
                  // ),
                  (isMobile || isTablet)
                      ? buildMobileTabs()
                      : buildSlidingTabs(),

                  SizedBox(height: 24),

                  // // demo trước cho hiểu
                  // Column(
                  //   children: filteredMenus.map((item) {
                  //     return Padding(
                  //       //demo trước cho hiểu
                  //       padding: const EdgeInsets.symmetric(vertical: 8),
                  //       child: Text(
                  //         item.title,
                  //         style: const TextStyle(fontSize: 18),

                  //         // bấm Bowls → chỉ hiện món Bowls
                  //         // bấm Burgers → chỉ hiện món Burgers
                  //         // bấm All → hiện tất cả
                  //       ),
                  //     );
                  //   }).toList(),
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 24,
                    ),

                    // padding:  EdgeInsets.only(
                    //   left: sidePadding,
                    //   right: isLandScape ? padding.right + 12 : 16,

                    // ),
                    child: Wrap(
                      spacing: 24,
                      runSpacing: 24,
                      alignment: WrapAlignment.start, //wrap hiển thị menu
                      children: filteredMenus.map((item) {
                        return SizedBox(
                          //width: 320,
                          width: cardWidth, //hình hơi bè ra tí

                          child: GestureDetector(
                            onTap: () => openMenuDetail(item),
                            child: MenuItemUpgrade(
                              image: item.image,
                              title: item.title,
                              description: item.description,
                              badge: item.badge,
                              price: item.price,
                        
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),

                  SizedBox(height: 24),

                  const CtaMenu(),

                  const Footer(),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: HeaderBlur(scaffoldKey: scaffoldKey),
            ),
          ],
        ),
      ),
    );
  }
}


// categories
// → chọn 1 category
// → selectedCategory đổi
// → filteredMenus lọc lại
// → UI render danh sách mới