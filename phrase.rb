class Phrase 


	attr_reader :word_count
	attr_accessor :words

	def initialize(words)
		@words = words
		sort_to_hash()
	end

	def sort_to_hash()
		splitted_words = @words.split(/\W/)
    @word_count = Hash.new(0)
		splitted_words.each do |word|
			formate_word(word)
			if !word.empty? 
				@word_count[word] += 1 
			end
		end
	end

	def formate_word(word)
		word.downcase!
		word.strip!
	end


end
