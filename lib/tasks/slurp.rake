namespace :slurp do
  desc "TODO"
  task snacks: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "FoodData.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      snack = Snack.new
      snack.snack_class = row["Class"]
      snack.snack_type = row["Type"]
      snack.group = row["Group"]
      snack.name = row["Food"] 
      snack.allergy = row["Allergy"] 
      snack.save
      puts "#{snack.name} saved"
    end
    
    puts "There are now #{Snack.count} rows in the snacks table"
  end

end
