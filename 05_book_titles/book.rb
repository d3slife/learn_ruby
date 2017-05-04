class Book
  attr_accessor :title

  def title= book_name
    conjunctions = ["for", "and", "nor", "but", "or", "yet", "so"]
    prepositions = ["on", "in", "at", "since", "for", "ago", "before", "to", "past", "to", "till", "until", "by", "of"]
    artiles = ["a", "an", "the"]
    reply = book_name.split
    reply.each_with_index do |word, index|
      if index == 0
        reply[index] = word.capitalize
      else
        if (not conjunctions.include?(word)) && (not prepositions.include?(word)) && (not artiles.include?(word))
            reply[index] = word.capitalize
        end
      end
    end
    @title = reply.join(" ")
  end
end
