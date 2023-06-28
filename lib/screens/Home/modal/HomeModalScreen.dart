/// response_code : 0
/// results : [{"category":"Animals","type":"multiple","difficulty":"easy","question":"What is the fastest  land animal?","correct_answer":"Cheetah","incorrect_answers":["Lion","Thomson&rsquo;s Gazelle","Pronghorn Antelope"]},{"category":"Animals","type":"multiple","difficulty":"easy","question":"What is the scientific name for modern day humans?","correct_answer":"Homo Sapiens","incorrect_answers":["Homo Ergaster","Homo Erectus","Homo Neanderthalensis"]},{"category":"Animals","type":"multiple","difficulty":"easy","question":"The Kākāpō is a large, flightless, nocturnal parrot native to which country?","correct_answer":"New Zealand","incorrect_answers":["South Africa","Australia","Madagascar"]},{"category":"Animals","type":"multiple","difficulty":"easy","question":"Hippocampus is the Latin name for which marine creature?","correct_answer":"Seahorse","incorrect_answers":["Dolphin","Whale","Octopus"]},{"category":"Animals","type":"multiple","difficulty":"easy","question":"What do you call a baby bat?","correct_answer":"Pup","incorrect_answers":["Cub","Chick","Kid"]},{"category":"Animals","type":"multiple","difficulty":"easy","question":"What is Grumpy Cat&#039;s real name?","correct_answer":"Tardar Sauce","incorrect_answers":["Sauce","Minnie","Broccoli"]},{"category":"Animals","type":"multiple","difficulty":"easy","question":"Which class of animals are newts members of?","correct_answer":"Amphibian","incorrect_answers":["Fish","Reptiles","Mammals"]},{"category":"Animals","type":"multiple","difficulty":"easy","question":"What is the collective noun for a group of crows?","correct_answer":"Murder","incorrect_answers":["Pack","Gaggle","Herd"]},{"category":"Animals","type":"multiple","difficulty":"easy","question":"By definition, where does an abyssopelagic animal live?","correct_answer":"At the bottom of the ocean","incorrect_answers":["In the desert","On top of a mountain","Inside a tree"]},{"category":"Animals","type":"multiple","difficulty":"easy","question":"What is the name of a rabbit&#039;s abode?","correct_answer":"Burrow","incorrect_answers":["Nest","Den","Dray"]}]

class QuizModel {
  QuizModel({
    num? responseCode,
    List<Results>? results,}){
    _responseCode = responseCode;
    _results = results;
  }

  QuizModel.fromJson(dynamic json) {
    _responseCode = json['response_code'];
    if (json['results'] != null) {
      _results = [];
      json['results'].forEach((v) {
        _results?.add(Results.fromJson(v));
      });
    }
  }
  num? _responseCode;
  List<Results>? _results;
  QuizModel copyWith({  num? responseCode,
    List<Results>? results,
  }) => QuizModel(  responseCode: responseCode ?? _responseCode,
    results: results ?? _results,
  );
  num? get responseCode => _responseCode;
  List<Results>? get results => _results;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['response_code'] = _responseCode;
    if (_results != null) {
      map['results'] = _results?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// category : "Animals"
/// type : "multiple"
/// difficulty : "easy"
/// question : "What is the fastest  land animal?"
/// correct_answer : "Cheetah"
/// incorrect_answers : ["Lion","Thomson&rsquo;s Gazelle","Pronghorn Antelope"]

class Results {
  Results({
    String? category,
    String? type,
    String? difficulty,
    String? question,
    String? correctAnswer,
    List<String>? incorrectAnswers,}){
    _category = category;
    _type = type;
    _difficulty = difficulty;
    _question = question;
    _correctAnswer = correctAnswer;
    _incorrectAnswers = incorrectAnswers;
  }

  Results.fromJson(dynamic json) {
    _category = json['category'];
    _type = json['type'];
    _difficulty = json['difficulty'];
    _question = json['question'];
    _correctAnswer = json['correct_answer'];
    _incorrectAnswers = json['incorrect_answers'] != null ? json['incorrect_answers'].cast<String>() : [];
  }
  String? _category;
  String? _type;
  String? _difficulty;
  String? _question;
  String? _correctAnswer;
  List<String>? _incorrectAnswers;
  Results copyWith({  String? category,
    String? type,
    String? difficulty,
    String? question,
    String? correctAnswer,
    List<String>? incorrectAnswers,
  }) => Results(  category: category ?? _category,
    type: type ?? _type,
    difficulty: difficulty ?? _difficulty,
    question: question ?? _question,
    correctAnswer: correctAnswer ?? _correctAnswer,
    incorrectAnswers: incorrectAnswers ?? _incorrectAnswers,
  );
  String? get category => _category;
  String? get type => _type;
  String? get difficulty => _difficulty;
  String? get question => _question;
  String? get correctAnswer => _correctAnswer;
  List<String>? get incorrectAnswers => _incorrectAnswers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['category'] = _category;
    map['type'] = _type;
    map['difficulty'] = _difficulty;
    map['question'] = _question;
    map['correct_answer'] = _correctAnswer;
    map['incorrect_answers'] = _incorrectAnswers;
    return map;
  }

}