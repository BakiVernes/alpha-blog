require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  
  def setup
    @category = Category.new(name: "sports")
  end
  
  test "category should be valid" do
    assert @category.valid?
  end
  
  test "should be present" do
    @category.name = " "
    assert_not @category.valid?
  end
  
  test "unique name" do
    @category.save
    category1 = Category.new(name: "sports")
    assert_not category1.valid?
  end
  
  test "name shouldn't be too long" do
    @category.name = "a" * 25
    assert_not @category.valid?
  end
  
  test "name should not be too short" do
    @category.name = "a"
    assert_not @category.valid?
  end
  
end