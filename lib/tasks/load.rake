namespace :load do
  task :vin_numbers => :environment do
    vins = []
    existing_vins = Vin.all
    File.open('lib/vins.txt', 'r') do |f|
      f.each_line do |vin|
        unless existing_vins.include? vin
          vins << {value: vin}
        end
      end
    end
    Vin.create(vins)
  end
end
