namespace :load do
  task :vin_numbers => :environment do
    vins = []
    File.open('lib/vins.txt', 'r') do |f|
      f.each_line do |vin|
        vins << {value: vin}
      end
    end
    Vin.create(vins)
  end
end
