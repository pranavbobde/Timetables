room_list = [
  [ "101", 1 ],
  [ "102", 1 ],
  [ "103", 1 ],
  [ "104", 1 ],
  [ "201", 2 ],
  [ "202", 2 ],
  [ "203", 2 ],
  [ "204", 2 ],
  [ "301", 3 ],
  [ "302", 3 ],
  [ "303", 3 ],
  [ "304", 3 ],
  ["316",3]
]

name_list = [
    
    
    ["Joe", "Bloggs"],
    ["James", "Daly"],
    ["Amy", "Kelly"],
    ["Lee", "Walsh"],
    ["Liz", "Windsor"],
    ["Jack", "Kinsella"]


]


course_list = [
    "BSHC1",
    "BSHC2",
    "BSHC3",
    "BSHC4",
    "BSHCE1",
    "BSHCE2",
    "BSHCE3",
    "BSHCE4"
]


subject_list = [
    "Web App Dev",
    "Web Design",
    "Intro To HTML",
    "Intro To Programming",
    "OOP",
    "Advanced Programming",
    "Computing Architecture",
    "Software Engineering",
    "Software Project",
    "Final Year Project",
    "Intro To Digital Multimedia",
    "Intro to Databases",
    "Advanced Databases"
]


subject_list.each do |s|
    classname = s
    course = Course.all.sample
    faculty = Faculty.all.sample
    
    if !Subject.exists?(classname: classname)
        Subject.create(classname: classname, course: course, faculty: faculty)
    end
end


course_list.each do |c|
    coursename = c
    faculty = Faculty.all.sample
    if !Course.exists?(coursename: coursename)
        
        Course.create(coursename: coursename, faculty: faculty)
    end
end



name_list.each do |f,l|
    name = f + " " + l 
    school = "School of Computing"
    phonenumber = 4498500
    email = f+"."+l+"@ncirl.ie"
    room = Room.all.sample
    type = 1
    if !Faculty.exists?(name: name)
        Faculty.create(name: name, school: school, phonenumber: phonenumber, email: email, room: room, stafftype: type )
    end
end




room_list.each do |name, floor|
    if !Room.exists?(name: name)
        Room.create( name: name, floor: floor, seating: 30 )
    end
end
