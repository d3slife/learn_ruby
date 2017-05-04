def echo phrase
  phrase
end

def shout phrase
  phrase.upcase
end

def repeat phrase, repeat = 2
  reply = []
  repeat.times do
    reply.push(phrase)
  end
  reply.join(" ")
end

def start_of_word phrase, number_of_letters
  phrase[0, number_of_letters]
end

def first_word phrase
  phrase.split[0]
end

def titleize phrase
  reply = phrase.split
  reply.each_with_index do |word, i|
    if i == 0
      reply[i] = word.capitalize
    else
      if (word.length > 3) && (word != "over")
        reply[i] = word.capitalize
      end
    end

  end
  reply.join(" ")
end
