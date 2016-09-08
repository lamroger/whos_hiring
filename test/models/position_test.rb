require 'test_helper'

class PositionTest < ActiveSupport::TestCase
  def setup
    @company = companies(:quizlet)
    @position = Position.new(
      title: 'Software Engineer',
      location: 'San Francisco',
      company_id: @company.id
    )
  end

  test "should be valid" do
    assert @position.valid?
  end

  test "company id should be present" do
    @position.company_id = nil
    assert_not @position.valid?
  end
end
