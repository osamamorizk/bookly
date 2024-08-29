import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

customUrlLuncher(context, {required url}) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('cant lunch url'),
      ),
    );
  }
}
