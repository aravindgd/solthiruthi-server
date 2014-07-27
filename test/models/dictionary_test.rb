require 'test_helper'

class DictionaryTest < ActiveSupport::TestCase
  test "default order by word" do
    Dictionary.delete_all
    z = Dictionary.create!(word: "zzz", meaning: "aasd")
    a = Dictionary.create!(word: "aaa", meaning: "cswelrjl")
    c = Dictionary.create!(word: "ccc", meaning: "sdqwrs")

    result = Dictionary.all
    assert_equal a, result[0]
    assert_equal c, result[1]
    assert_equal z, result[2]
  end

  #TODO: All these can be combined if we use the shoulda-style matchers - but that gem seems to be incompativle @ this point
  test "should validate presence of word for nil value" do
    d = Dictionary.new
    assert_equal false, d.valid?
    assert d.errors[:word].include?("can't be blank")
  end

  test "should validate presence of word for a blank value" do
    d = Dictionary.new(word: "  ")
    assert_equal false, d.valid?
    assert d.errors[:word].include?("can't be blank")
  end

  test "should validate presence of meaning for nil value" do
    d = Dictionary.new
    assert_equal false, d.valid?
    assert d.errors[:meaning].include?("can't be blank")
  end

  test "should validate presence of meaning for a blank value" do
    d = Dictionary.new(meaning: "  ")
    assert_equal false, d.valid?
    assert d.errors[:meaning].include?("can't be blank")
  end
end
