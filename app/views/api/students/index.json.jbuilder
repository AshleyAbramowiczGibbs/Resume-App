json.array! @students.each do |student|
  json.partial! "students.json.jbuilder", student: student
end

