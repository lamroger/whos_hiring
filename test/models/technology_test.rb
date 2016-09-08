require 'test_helper'

class TechnologyTest < ActiveSupport::TestCase
  def setup
    @technology = Technology.new(
      name: 'PHP'
    )
  end

  test 'should be valid' do
    assert @technology.valid?
  end

  test 'name should be present' do
    @technology.name = ''
    assert_not @technology.valid?
  end
end
