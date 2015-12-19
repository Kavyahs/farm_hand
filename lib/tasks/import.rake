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

  desc "Import Districts"
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

  desc "Import Categories"
  task 'categories' => :environment do
    Category.destroy_all
    Category.connection.execute("truncate categories RESTART IDENTITY")
    
    path = File.join(Rails.root, "db", "csv_data", "categories.csv")
    csv_table = CSV.table(path, {:headers => true, :converters => nil, :header_converters => :symbol})
    headers = csv_table.headers
    csv_table.each_with_index do|row, index|
      row.headers.each{ |cell| row[cell] = row[cell].to_s.strip }
      next if row[:name].blank?
      category = Category.new
      category.name = row[:name]
      if category.valid?
        category.save
        puts "#{category.name} is created"
      else
        p "Error! #{category.errors.full_messages.to_sentence}"
      end
    end
  end

  desc "Import SubCategories"
  task 'sub_categories' => :environment do
    SubCategory.destroy_all
    SubCategory.connection.execute("truncate sub_categories RESTART IDENTITY")
    
    path = File.join(Rails.root, "db", "csv_data", "sub_categories.csv")
    csv_table = CSV.table(path, {:headers => true, :converters => nil, :header_converters => :symbol})
    headers = csv_table.headers
    csv_table.each_with_index do|row, index|
      row.headers.each{ |cell| row[cell] = row[cell].to_s.strip }
      next if row[:name].blank?
      sub_category = SubCategory.new
      sub_category.name = row[:name]
      category = Category.find_by_name row[:category_name]
      sub_category.category_id = category.id
      if sub_category.valid?
        sub_category.save
        puts "#{sub_category.name} is created"
      else
        p "Error! #{sub_category.errors.full_messages.to_sentence}"
      end
    end
  end
end