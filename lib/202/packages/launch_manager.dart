import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin {
  void launchURL(String url) async {
    final Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}
