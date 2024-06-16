

import 'package:baseproject/globals/core/path/file_path.dart';

class BuildColorPicker extends StatelessWidget {
  final Color color;
  final Color selectedColor;
  final VoidCallback onTap;

  const BuildColorPicker({
    super.key,
    required this.color,
    required this.selectedColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(
            color: selectedColor == color ? Colors.black : Colors.transparent,
            width: 2,
          ),
        ),
      ),
    );
  }
}
