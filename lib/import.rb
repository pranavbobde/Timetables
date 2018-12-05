require 'csv'

CSV.foreach('./lib/sample.csv', headers: true) do |row|
   Room.create(row.to_h)
end
