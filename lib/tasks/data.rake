require 'csv'

namespace :data do
  desc "seed the db with real companies and positions"
  task seed: :environment do
    csv_file = Rails.root.join('lib', 'assets', 'seed.csv')
 
    CSV.foreach(csv_file) do |row|
      company = Company.find_by(name: row[0])
      # Create role if the company exists
      if company
        puts "#{row[0]} already exists"
      else
        Company.create(
          name: row[0], 
          website: row[1],
          description: row[2]
        )
        puts "created #{row[0]}"
      end
    end
  end
end
