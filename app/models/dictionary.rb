class Dictionary < ActiveRecord::Base
  default_scope { order(word: :asc) }

  validates_presence_of :word, :meaning
end
