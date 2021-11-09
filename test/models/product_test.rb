require "test_helper"

class ProductTest < ActiveSupport::TestCase
  def setup
    @product = Product.new(name: "Empty Bottle", ingredient: "Plastic")
  end

  test "a product should be valid" do
    assert @product.valid?
  end

  test "product name should be present" do
    @product.name = ""
    assert_not @product.valid?
  end

  test "product ingredient should be present" do
    @product.ingredient = ""
    assert_not @product.valid?
  end

  test "product name cannot be longer than 40 chars" do
    @product.name = "ARMandHAMMER_Cloud_Control_Platinum_Clumping_Cat_Litter_37LB"
    assert_not @product.valid?
  end

  test "product name should be unique" do
    duplicate_product = @product.dup
    duplicate_product.name = @product.name.upcase
    @product.save
    assert_not duplicate_product.valid?
  end
end
