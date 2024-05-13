extension TimeAgo on DateTime {
  ///Get time format as 1m ago or 1d ago.
  ///It will return in seconds, minuts, hours, days, weeks, months and years.
  ///[showFullLabels] means it will return hour instead of h.
  String timeElasped({bool showFullLabels = false}) {
    final now = DateTime.now();
    final difference = now.difference(this);

    if (difference.inSeconds < 60) {
      return '${difference.inSeconds}${showFullLabels ? "second" : 's'} ago';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes}${showFullLabels ? "minute" : 'm'} ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours}${showFullLabels ? "hour" : 'h'} ago';
    } else if (difference.inDays > 7 && difference.inDays < 365) {
      return '${difference.inDays}${showFullLabels ? "week" : 'w'} ago';
    } else {
      return "${(difference.inDays / 365).toStringAsFixed(0)}${showFullLabels ? "year" : 'y'} ago";
    }
  }
}
