# Your code goes here!
class Anagram
    def initialize(word)
      @word = word.downcase
    end
  
    def match(words)
      words.select { |w| anagram?(w.downcase) }
    end
  
    private
  
    def anagram?(other_word)
      return false if @word == other_word
      sort_characters(@word) == sort_characters(other_word)
    end
  
    def sort_characters(word)
      word.chars.sort.join
    end
  end