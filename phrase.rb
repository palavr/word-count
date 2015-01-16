class Phrase 


	attr_reader :word_count

	def initialize(words)
		sort_to_hash(split_phrase(words))
	end

	def split_phrase(words)
		words.split(/\W/)
	end

	def sort_to_hash(splitted_words)
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