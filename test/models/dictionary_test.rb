require 'test_helper'

class DictionaryTest < ActiveSupport::TestCase
  test "default order by word" do
    Dictionary.delete_all
    z = Dictionary.create!(word: "zzz")
    a = Dictionary.create!(word: "aaa")
    c = Dictionary.create!(word: "ccc")

    result = Dictionary.all
    assert_equal a, result[0]
    assert_equal c, result[1]
    assert_equal z, result[2]
  end
end
