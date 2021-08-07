require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test 'creates a random number on create' do
    user = User.create(email: "user@example.com", password: "12345678")
    order = Order.create(user_id: user.id)
    assert !order.number.nil?
  end

  test 'number must be unique' do
    user = User.create(email: "user@example.com", password: "12345678")
    order = Order.create(user_id: user.id)
    duplicated_order = order.dup
    assert_not duplicated_order.valid?
  end
end
