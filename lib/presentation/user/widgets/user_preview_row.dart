import 'package:flutter/material.dart';

import '../../common.dart';

class UserPreviewRow extends StatelessWidget {
  const UserPreviewRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: Colors.grey.withOpacity(0.2),
          width: 1.25,
        ),
      ),
      elevation: 0,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListTile(
            // crossAxisAlignment: CrossAxisAlignment.start,
            leading: const CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 36,
            ),
            title: Text(
              'Nguyen Van A',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            subtitle: Text(
              'example@email.com',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(),
            ),
            trailing: Icon(
              Icons.navigate_next,
              size: 32,
              color: Theme.of(context).buttonTheme.colorScheme?.onSurface,
            ),
          ),
        ),
      ),
    );
  }
}
