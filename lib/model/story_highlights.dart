import 'package:instagram_ui/constants/text_constants.dart';

class StoryHighlights{
  final String thumbnail;
  final String title;

  StoryHighlights({
    required this.thumbnail,
    required this.title
});


}  List<StoryHighlights> highlightsItem=[
  StoryHighlights(thumbnail: 'assets/santorini.png', title: TextConstants.santorini),
  StoryHighlights(thumbnail: 'assets/budapest.png', title: TextConstants.rome),
  StoryHighlights(thumbnail: 'assets/rome_1.png', title: TextConstants.rome),
  StoryHighlights(thumbnail: 'assets/prague.png', title: TextConstants.prague),
  StoryHighlights(thumbnail: 'assets/paris.png', title: TextConstants.paris),
  StoryHighlights(thumbnail: 'assets/h_6.png', title: TextConstants.highlight),
  StoryHighlights(thumbnail: 'assets/h_7.png', title: TextConstants.highlight),
  StoryHighlights(thumbnail: 'assets/h_8.png', title: TextConstants.highlight),
  StoryHighlights(thumbnail: 'assets/h_9.png', title: TextConstants.highlight),
  StoryHighlights(thumbnail: 'assets/h_10.png', title: TextConstants.highlight),
];