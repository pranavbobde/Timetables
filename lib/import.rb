require 'csv'
class FileUploader
    
    def self.upload(file, type)
        @uploaded = file    
        File.open("fromimporter.csv", 'wb') do |file|
            file.write(@uploaded.read)
        end
        
        if type == "Room"
            CSV.foreach('fromimporter.csv', headers: true) do |row|
               Room.create(row.to_h)
            end
        end
        if type == "Course"
            CSV.foreach('fromimporter.csv', headers: true) do |row|
               Course.create(row.to_h)
            end
        end
        
        if type == "Subject"
            CSV.foreach('fromimporter.csv', headers: true) do |row|
               Subject.create(row.to_h)
            end
        end
    end
end