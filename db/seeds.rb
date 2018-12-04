# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.create!(first_name: "string", last_name: "string", email: "string", password_digest: "string", phone_number: "string", short_bio: "text" , linkedin_url:"string", twitter_handle:"string", website_url:"string", online_resume_url:"string", github_url:"string", photo:"string")

Experience.create!(student_id: 1, start_date: 2016, end_date: 2018, job_title: "Rails Developer", company_name: "Actualize Company", details: "This was a job where I did stuff")
Experience.create!(student_id: 1, start_date: 2019, end_date: 2019, job_title: "Software Developer", company_name: "Another Company", details: "This was a job where I did stuff")

Education.create!(student_id: 1, start_date: 2013, end_date: 2016, degree: "Bachelor of Science", university_name: "University of Illinois", details: "Dean's List")
Education.create!(student_id: 1, start_date: 2018, end_date: 2018, degree: "Completion", university_name: "Actualize Coding Bootcamp", details: "Coding Bootcamp")

Skill.create!(student_id: 1, skill_name: "coding")
Skill.create!(student_id: 1, skill_name: "dancing")
Skill.create!(student_id: 1, skill_name: "axios")
Skill.create!(student_id: 1, skill_name: "running")

Capstone.create!(student_id: 1, name: "Resume-App", description:"app with rails backend and vuejs fontend", url: "www.app.come", screenshot: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKQOyUcauvGU7AXaQ4csn9qgovudRj8HBclj57nq-DgamOP3EQ")





  
