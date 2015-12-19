require 'csv'

namespace 'import' do
  desc "Import State"
  task 'states' => :environment do
    State.destroy_all
    State.connection.execute("truncate states RESTART IDENTITY")

    path = File.join(Rails.root, "db", "csv_data", "states.csv")
    csv_table = CSV.table(path, {:headers => true, :converters => nil, :header_converters => :symbol})
    headers = csv_table.headers
    csv_table.each_with_index do|row, index|
      row.headers.each{ |cell| row[cell] = row[cell].to_s.strip }
      next if row[:name].blank?
      state = State.new
      state.name = row[:name]
      if state.valid?
        state.save
        puts "#{state.name} is created"
      else
        p "Error! #{state.errors.full_messages.to_sentence}"
      end
    end
  end

  desc "Import State"
  task 'districts' => :environment do
    District.destroy_all
    District.connection.execute("truncate districts RESTART IDENTITY")
    
    path = File.join(Rails.root, "db", "csv_data", "districts.csv")
    csv_table = CSV.table(path, {:headers => true, :converters => nil, :header_converters => :symbol})
    headers = csv_table.headers
    csv_table.each_with_index do|row, index|
      row.headers.each{ |cell| row[cell] = row[cell].to_s.strip }
      next if row[:name].blank?
      district = District.new
      district.name = row[:name]
      district.state_id = row[:state_id]
      if district.valid?
        district.save
        puts "#{district.name} is created"
      else
        p "Error! #{district.errors.full_messages.to_sentence}"
      end
    end
  end
end