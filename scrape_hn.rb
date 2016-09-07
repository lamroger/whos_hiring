require 'mechanize'
require 'date'
require 'json'
require 'csv'

HN_URL = 'https://news.ycombinator.com/item?id=12202865'

agent = Mechanize.new
page = agent.get(HN_URL)

comments = page.search('div.comment')

CSV.open("scraped_#{Time.now.to_s}.csv", "w") do |csv|
  comments.each do |comment| 
    csv << [comment.text] if comment.text =~ /(\.com|@)/
  end
end