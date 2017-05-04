#write your code here
def translate question
  reply = question.split
  reply.each_with_index do |phrase, position|
    reply[position] = pig_latin(phrase)
  end
  reply.join(" ")
end

def pig_latin phrase
  vowels = ["a", "e", "i", "o", "u"]
  if vowels.include?(phrase[0])
    phrase + "ay"
  else
    index = 0
    while not vowels.include?(phrase[index])
      index += 1
    end
    # Treating "qu" as a single phoneme
    if phrase[index-1, 2] == "qu"
      phrase[index+1..-1] + phrase[0..index] + "ay"
    else
      phrase[index..-1] + phrase[0..index-1] + "ay"
    end
  end
end
