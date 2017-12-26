class Bob
  def self.hey(phrase)
    case
      when shout?(phrase)
        'Whoa, chill out!'
      when silence?(phrase)
        'Fine. Be that way!'
      when question?(phrase)
        'Sure.'
      else
        'Whatever.'
    end
  end

  def self.question?(phrase)
    phrase.strip.end_with?('?')
  end

  def self.shout?(phrase)
    phrase.upcase == phrase && phrase.match?(/[A-Z]/)
  end

  def self.silence?(phrase)
    phrase.strip.empty?
  end
end

module BookKeeping
  VERSION = 1
end
