require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  def setup
    @company = Company.new(
      name: 'Quizlet', 
      website: 'https://quizlet.com',
      description: 
        <<-DESC
Quizlet makes simple learning tools that let you study anything. 
Start learning today with flashcards, games and learning tools — all for free.
        DESC
    )
  end

  test 'should be valid' do
    assert @company.valid?
  end

  test 'name should be present' do
    @company.name = ''
    assert_not @company.valid?
  end

  test 'website should be present' do
    @company.website = '     '
    assert_not @company.valid?
  end

  test 'description' do
    @company.description = '  '
    assert_not @company.valid?
  end
end
