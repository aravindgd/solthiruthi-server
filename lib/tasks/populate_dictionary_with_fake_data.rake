namespace :populate_dictionary_with_fake_data do
  require 'faker'

  desc "Populate dictionary!"

  task :all => :environment do
	populate_db_with_words_and_meanings
  end

  def populate_db_with_words_and_meanings
	puts "Populate dictionary!"
	1000.times do |iter|	
	  word = Faker::Lorem.word
	  meaning = Faker::Lorem.sentence
	  Dictionary.create(word: word,meaning: meaning)
	end
  end
end
