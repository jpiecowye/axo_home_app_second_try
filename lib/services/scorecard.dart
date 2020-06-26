class GetScore {
  String getScore(int score) {
    if (score < .95) {
      return 'A+';
    } else if (score < .9) {
      return 'A';
    } else if (score < .85) {
      return 'A-';
    } else if (score < .8) {
      return 'B+';
    } else if (score < .75) {
      return 'B';
    } else if (score < .7) {
      return 'B-';
    } else if (score < .65) {
      return 'C+';
    } else if (score < .6) {
      return 'C';
    } else if (score < .55) {
      return 'C-';
    } else if (score < .5) {
      return 'D';
    } else {
      return 'F‍';
    }
  }
}

//This is the score card system for creating the grade for at three sets.
