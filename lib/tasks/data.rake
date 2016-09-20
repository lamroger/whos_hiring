require 'csv'

namespace :data do
  desc "seed the db with real companies and positions"
  task seed: :environment do
    csv_file = Rails.root.join('lib', 'assets', 'seed.csv')

    CSV.foreach(csv_file) do |row|
      company = Company.find_by(
        name: row[0]
      )

      if !company
        company = Company.new(
          name: row[0],
          website: row[1],
          description: row[2]
        )

        company.save!
      end

      puts company.id

      puts "title: #{row[3]}"
      position = Position.find_by(
        title: row[3], 
        location: row[4], 
        description: row[5]
      )

      if position
        puts 'position found'
      else
        puts 'position not found'
        technologies = row[6]
        unless technologies.nil?
          tech_array = []
          technologies.split(/\s*,\s*/).each do |technology|
            tech_array << Technology.find_or_create_by(name: technology)
          end
          technologies = tech_array
        else 
          technologies = []
        end
        position = Position.new(
          company_id: company.id,
          title: row[3], 
          location: row[4], 
          description: row[5],
          technologies: technologies,
          contact: row[7]
        )

        puts position.save!
      end
    end
  end
end
