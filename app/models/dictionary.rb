class Dictionary < ActiveRecord::Base
  default_scope { order(word: :asc) }
  validates :word, :meaning, presence: true, allow_blank: false, :uniqueness => {case_sensitive: false}
end
