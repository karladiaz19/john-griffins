class TextAnalyzer
  
  def initialize(text)
    @text = text
  end

  def count_of_words
    words = @text.split(" ")
    words.count
  end

  def count_of_vowels
    @text.scan(/[aeoui]/).count
  end

  def count_of_consonants
    @text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

  def most_used_letter
    s1 = @text.downcase.gsub(/[^a-z]/, '')
    arr = s1.split('')
    arr1 = arr.uniq
    arr2 = arr1.map { |c| [c, arr.count(c)] }
    arr2.max_by { |c, count| count }
    #returns an array with most used letter and count, e.g. ["e", 5]
  end
end