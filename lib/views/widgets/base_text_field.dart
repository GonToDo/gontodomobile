import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BaseTextField extends StatelessWidget {
  BaseTextField({
    super.key,
    required this.title,
    required this.hintText,
    this.errorText,
  });

  String title;
  String hintText;
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.sp, vertical: 8.sp),
          child: Text(title),
        ),
        TextFormField(
          style: Theme.of(context).textTheme.titleMedium,
          decoration: InputDecoration(
            hintText: hintText,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 4.sp),
          child: Text(
            errorText ?? '',
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(color: Theme.of(context).colorScheme.error),
          ),
        ),
      ],
    );
  }
}
