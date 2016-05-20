module RandomData

  def self.random_paragraph
    sentences = []
    rand(4..6).times do
      sentences << self.random_sentence
    end

    sentences.join(" ")
  end

  def self.random_sentence
    strings = []
    rand(3..8).times do
      strings << self.random_word
    end

    sentence = strings.join(" ")
    sentence.capitalize << (".")
  end

  def self.random_word
    letters = ('a'..'z').to_a
    letters.shuffle!
    letters[0,rand(8..9)].join
  end

  def self.random_password
    letters = ('a'..'z').to_a
    letters.shuffle!
    numbers = ('0'..'9').to_a
    numbers.shuffle!
    letters[0,rand(4..6)].join.concat(numbers[0,rand(4..6)].join)
  end

  def self.random_name
    first_name = random_word.capitalize
    last_name = random_word.capitalize
    "#{first_name} #{last_name}"
  end

  def self.random_email
    "#{random_word}@#{random_word}.com"
  end

  def self.random_number
    numbers = ('a'..'z').to_a
    numbers.shuffle!
    numbers[0,rand(1..9)].join
  end

end
