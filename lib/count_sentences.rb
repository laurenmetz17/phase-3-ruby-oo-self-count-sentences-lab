require 'pry'

class String

  def sentence?
    last = self.chars.last
    last == "."
  end

  def question?
    last = self.chars.last
    last == "?"
  end

  def exclamation?
    last = self.chars.last
    last == "!"
  end

  def count_sentences
    sentences = self.split(/[.!?]/)
    sentences = sentences.filter do |sentence|
      sentence !=  ""
    end
    sentences.length
  end
end