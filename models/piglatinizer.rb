# Make a pig latin sentence
class PigLatinizer
  def initialize; end

  def piglatinize(string)
    words = string.split

    new_words = words.map do |word|
      # split into array
      letters = word.split('')

      # check for punctuation, store
      punc = letters.pop if letters.last.match(/[^a-zA-Z]/)

      if vowel?(letters.first)
        letters << %w[w a y]
      else
        first_vowel = word.index(/[aAeEiIoOuU]/)
        letters = (letters.rotate(first_vowel) << %w[a y]).flatten
      end

      letters << punc if punc
      out = letters.join('')
      out
    end
    new_words.join(' ')
  end

  def vowel?(char)
    !!char.downcase.match(/[aeiou]/)
  end
end
