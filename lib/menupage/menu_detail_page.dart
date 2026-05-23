import 'package:flutter/material.dart';

import 'package:flutterweb/menupage/menuitemdata.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuDetailPage extends StatelessWidget {
  final MenuItemData item;

  const MenuDetailPage({super.key, required this.item});

  // Future<void> openOrderLink(String url) async {
  //   final uri = Uri.parse(url);

  //   if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
  //     throw Exception("Không mở được link");
  //   }
  // }

  Future<void> openOrderLink(String url) async {
    final uri = Uri.parse(url);
    final success = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!success) {
      await launchUrl(uri, mode: LaunchMode.platformDefault);
    }
  }

  Future<void> openAfterClose(BuildContext sheetContext, String url) async {
    Navigator.pop(sheetContext);
    await Future.delayed(const Duration(milliseconds: 250));
    await openOrderLink(url);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFFFF7FF),

      // appBar: AppBar(
      //   title: Text(item.title),
      //   backgroundColor: Colors.white,
      //   foregroundColor: Colors.green,
      //   elevation: 0,
      // ),
      child: SafeArea(
        bottom: false,
        left: true,
        right: true,

        child: SingleChildScrollView(
          //body
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context); // đóng dialog
                      },
                      icon: const Icon(Icons.arrow_back, color: Colors.green),
                    ),

                    Expanded(
                      child: Text(
                        item.title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ),

                    const SizedBox(width: 48),
                  ],
                ),

                const SizedBox(height: 12),

                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    item.image,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(height: 24),

                Row(
                  children: [
                    Expanded(
                      child: Text(
                        item.title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    // Text(
                    //   item.price,
                    //   style: const TextStyle(
                    //     fontSize: 20,
                    //     fontWeight: FontWeight.bold,
                    //     color: Colors.black,
                    //   ),
                    // ),
                    item.salePrice == null
                        ? Text(
                            item.price,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                item.price,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.shade500,
                                  decoration: TextDecoration.lineThrough,
                                  decorationThickness: 2,
                                ),
                              ),
                              Text(
                                item.salePrice!,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                  ],
                ),

                const SizedBox(height: 12),

                Chip(
                  label: Text(item.badge),
                  backgroundColor: Colors.green.withValues(alpha: 0.12),
                  labelStyle: const TextStyle(color: Colors.green),
                ),

                const SizedBox(height: 16),

                Text(
                  item.description,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                    color: Colors.grey.shade700,
                  ),
                ),

                const SizedBox(height: 25),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(24),
                          ),
                        ),
                        backgroundColor: Colors.white,
                        builder: (sheetContext) {
                          final height = MediaQuery.of(
                            sheetContext,
                          ).size.height;
                          return SafeArea(
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                maxHeight: height * 0.85,
                              ),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.all(24),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Text(
                                        "Chọn nền tảng đặt món",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      ListTile(
                                        title: const Text("ShopeeFood"),
                                        // onTap: () async {
                                        //   Navigator.pop(sheetContext);
                                        //   await openOrderLink(item.shopeeUrl);
                                        // },
                                        onTap: () => openAfterClose(
                                          sheetContext,
                                          item.shopeeUrl,
                                        ),
                                      ),
                                      Divider(),
                                      ListTile(
                                        title: const Text("GrabFood"),
                                        // onTap: () async {
                                        //   Navigator.pop(sheetContext);
                                        //   await openOrderLink(item.grabUrl);
                                        // },
                                        onTap: () => openAfterClose(
                                          sheetContext,
                                          item.grabUrl,
                                        ),
                                      ),
                                      Divider(),
                                      ListTile(
                                        title: const Text("BeFood"),
                                        // onTap: () async {
                                        //   Navigator.pop(sheetContext);
                                        //   await openOrderLink(item.beUrl);
                                        // },
                                        onTap: () => openAfterClose(
                                          sheetContext,
                                          item.beUrl,
                                        ),
                                      ),
                                      Divider(),
                                      ListTile(
                                        title: const Text("GreenXanh"),
                                        // onTap: () async {
                                        //   Navigator.pop(sheetContext);
                                        //   await openOrderLink(item.greenUrl);
                                        // },
                                        onTap: () => openAfterClose(
                                          sheetContext,
                                          item.greenUrl,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }, //builder
                      );
                    },
                    child: const Text(
                      "Đặt ngay",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
