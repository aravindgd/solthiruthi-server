class Dictionary < ActiveRecord::Base
  default_scope { order(word: :asc) }
end
