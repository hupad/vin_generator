namespace :load_vins do
  task :read_vin_file => :environment do
    File.open('lib/vins.txt', 'r') do |f|
      f.each_line do |line|
        v = Vin.create(value: line)
        puts v.inspect
      end
    end
  end
end
