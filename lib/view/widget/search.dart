import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: const Row(
        children: [
          Expanded(
            child: Text(
              'ابحث عن مسابقة أو مشروع...',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFB0B0B0),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(width: 8),
          Text('🔎', style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
