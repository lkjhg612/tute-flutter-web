import "package:flutter/material.dart";

class HeaderItem extends StatefulWidget {
  final String title;
  final VoidCallback? onTap;
  HeaderItem({
    super.key,
    required this.title,
    this.onTap, //bỏ required thì khi gọi bên header thì không cần phải onTap(){}
  });

  @override
  State<HeaderItem> createState() => _HeaderItemState();
}

class _HeaderItemState extends State<HeaderItem> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) {
          setState(() {
            _isHovering = true;
          });
        },
        onExit: (_) {
          setState(() {
            _isHovering = false;
          });
        },
        child: GestureDetector(
          onTap: widget.onTap,
          child: AnimatedDefaultTextStyle(
            curve: Curves.easeInOut,//  chuyển dộng từ từ nhanh dần 
            style: TextStyle(
              fontSize: 16, 
              fontWeight: FontWeight.w500,
              color: _isHovering
                  ?Colors.green
                  //:Colors.greenAccent.shade700,
                  :Colors.white,
              decoration: _isHovering
                  ? TextDecoration.underline
                  : TextDecoration.none
              ),
            duration: Duration(milliseconds: 200),
            child: Text(widget.title),
          ),
        ),
      ),
    );
  }
}

// MouseRegion

// → bắt sự kiện hover

// onEnter

// → chuột đi vào

// onExit

// → chuột rời khỏi

// setState

// → rebuild để đổi màu

// GestureDetector

// → để xử lý click
