

class QuestionModel {
  final String question;
  final String answer;
  final List<String> options;

  QuestionModel(this.question, this.answer, this.options);

  static List<QuestionModel> fetchAll() {
    return [
      QuestionModel('Anita eats lunch at her desk at work. It saves time so she can finish her work while eating.',
          'Good',
          [
            'Good',
            'Bad',
            'I don’t know',
            'Still thinking'
          ]
      ),
      QuestionModel('Diego is lying in bed but having a hard time falling asleep. What should he do?',
          'Get out of bed and read a book in another room',
          [
            'Scroll through social media apps on his phone',
            'Read a book in bed',
            'Get out of bed and read a book in another room',
            'Lie in bed till he falls asleep'
          ]
      ),
      QuestionModel('Which of the following options is the healthiest way to lose weight?',
          'Setting realistic goals and preparing a suitable fitness plan',
          [
            'Following crash diets',
            'Taking weight loss pills',
            'Extreme fasting',
            'Setting realistic goals and preparing a suitable fitness plan'
          ]
      ),
      QuestionModel('Identify some of the prescription drugs for high blood pressure.',
          'All of the above',
          [
            'Diuretics',
            'Beta-blockers',
            'ACE inhibitors',
            'All of the above'
          ]
      ),
      QuestionModel('What should you do to ensure your heart remains healthy and strong?',
          'All of the above',
          [
            'Maintain a healthy weight',
            'Control your blood pressure levels',
            'Stay active',
            'All of the above'
          ]
      ),
      QuestionModel('How do you define a calorie?',
          'A calorie is a unit of energy',
          [
            'A calorie is a unit of energy',
            'Speed of light',
          ]
      ),
      QuestionModel('Which of the following form an important part of effective hypertension management practices?',
          'Taking your medicines on time',
          [
            'Eating junk food',
            'Smoking',
            'Taking your medicines on time',
            'Drinking alcohol'
          ]
      ),
      QuestionModel('What should you do in case of a slip?',
          'Forgive yourself and move on',
          [
            'Forgive yourself and move on',
            'Brood over it and self-criticise',
          ]
      ),
    ];
  }

}
