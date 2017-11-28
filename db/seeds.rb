# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(id: 0, email: "michelle@berkeley.edu", name:"Michelle", year: 2020, password: "password")
User.create!(id: 1, email: "isabelle@berkeley.edu", name:"Isabelle", year: 2020, password: "password")
User.create!(id: 2, email: "anastasia@berkeley.edu", name:"Anastasia", year: 2020, password: "password")
User.create!(id: 3, email: "allen@berkeley.edu", name:"Allen", year: 2020, password: "password")

#User.create(email: , name:, year: )

Department.create!(id: 0, name: "Computer Science", abbreviation: "COMPSCI (CS)")
Department.create!(id: 1, name: "Physics", abbreviation: "PHYS")
Department.create!(id: 2, name: "Linguistics", abbreviation: "LINGUIS")
Department.create!(id: 3, name: "Electrical Engineering", abbreviation: "EE")
Department.create!(id: 4, name: "College Writing Programs", abbreviation: "COLWRIT")
Department.create!(id: 5, name: "Psychology", abbreviation: "PSYCH")
Department.create!(id: 6, name: "Music", abbreviation: "MUSIC")
Department.create!(id: 7, name: "Ethnic Studies", abbreviation: "ETH STD")
Department.create!(id: 8, name: "Economics", abbreviation: "ECON")
Department.create!(id: 9, name: "German", abbreviation: "GERMAN")
#Department.create!(id: , name: , abbreviation: )

Course.create!(id: 0, name: "Computer Science 170", department_id: 0)
Course.create!(id: 1, name: "Computer Science 61C", department_id: 0)
Course.create!(id: 2, name: "Physics 7A", department_id: 1)
Course.create!(id: 3, name: "Linguistics 100", department_id: 2)
Course.create!(id: 4, name: "Computer Science 195", department_id: 0)
Course.create!(id: 5, name: "Computer Science 61A", department_id: 0)
Course.create!(id: 6, name: "Electrical Engineering 16A", department_id: 3)
Course.create!(id: 7, name: "College Writing R4B", department_id: 4)
Course.create!(id: 8, name: "Computer Science 61B", department_id: 0)
Course.create!(id: 9, name: "Electrical Engineering 16B", department_id: 3)
Course.create!(id: 10, name: "Psychology 1", department_id: 5)
Course.create!(id: 11, name: "Music 29", department_id: 6)
Course.create!(id: 12, name: "Computer Science 70", department_id: 0)
Course.create!(id: 13, name: "Ethnic Studies 10AC", department_id: 7)
Course.create!(id: 14, name: "Economics 139", department_id: 8)
Course.create!(id: 15, name: "Economics 138", department_id: 8)
Course.create!(id: 16, name: "Economics 140", department_id: 8)
Course.create!(id: 17, name: "Economics 182", department_id: 8)
Course.create!(id: 18, name: "Economics 136", department_id: 8)
Course.create!(id: 19, name: "Economics 100B", department_id: 8)
Course.create!(id: 20, name: "Economics 131", department_id: 8)
Course.create!(id: 21, name: "German 2", department_id: 9)
#Course.create!(id: , name: , department_id: )


ScheduleReview.create!(id: 0, user_id: 0, difficulty: 7, review: "Overall not too bad and pretty rewarding. Would suggest this combo if you're looking for a decently heavy semester that's bearable. Ling 100 is a great breadth!")

ScheduleReview.create!(id: 1, user_id: 3, difficulty: 6, review: "Manageable first-semester schedule that leaves time for other pursuits/fun/getting used to college. Personally spent the most time/energy on EE 16A, may be different for people who are familiar with/good at linear algebra and circuits. Would not really recommend taking a COLWRIT class unless you have to.")
ScheduleReview.create!(id: 2, user_id: 3, difficulty: 8, review: "Highly recommend Josh Hug for CS 61B. Again, spent the most time/energy on EE 16B because I'm absolutely terrible at circuits, but would still recommend the class for its very cool hands-on/practical nature. Psych and music are super easy breadths depending on how much you enjoy the material.")
ScheduleReview.create!(id: 3, user_id: 3, difficulty: 7, review: "Decent combination, 61C is a project-based class and 70 is a problem set class so they complement each other nicely. 61B a soft pre/co-requisite for both classes. ETH STD 10AC (History of Race in the West) can be interesting, but would not recommend if you're looking for a low-workload breadth/AC class.")

ScheduleReview.create!(id: 4, user_id: 2, difficulty: 6, review: "All three classes are problem-set oriented classes. Office hours are a must for Econ 138 and Econ 140. Econ 140 problems sets take on average 15-20 hours per week. Econ 138 problems sets ~ 5-8 Hours per week. Econ 139 problem sets ~7 hours per week.")
ScheduleReview.create!(id: 5, user_id: 2, difficulty: 7, review: "Econ 182 - must go to office hours to complete problems sets. Econ 136  together with CS 61A take 80-90% of the time. ")
ScheduleReview.create!(id: 6, user_id: 2, difficulty: 7, review: "German 2 was meeting 5 times a week with daily homework that took on average two hours; conceptually easy. Econ 131 had weekly problem sets that took on average 8 hours. Econ 100B and Econ 131 took on approximately 80% of the time.")
#ScheduleReview.create!(id: , user_id: , difficulty: , review: )

ClassReview.create!(id: 0, difficulty: 7, workload: 8, professor: "Sanjam Garg, Prasad Raghavendra", course_id: 0, user_id: 0, schedule_review_id: 0, prereqs: ['CS 61B', 'CS 70'])
ClassReview.create!(id: 1, difficulty: 7, workload: 8, professor: "Randy Katz, Krste Asanovic", course_id: 1, user_id: 0, schedule_review_id: 0, prereqs: ['CS61B'])
ClassReview.create!(id: 2, difficulty: 5, workload: 5, professor: "Michael DeWeese", course_id: 2, user_id: 0, schedule_review_id: 0, prereqs: [])
ClassReview.create!(id: 3, difficulty: 5, workload: 4, professor: "Peter Jenks", course_id: 3, user_id: 0, schedule_review_id: 0, prereqs: [])
ClassReview.create!(id: 4, difficulty: 3, workload: 3, professor: "Joshua Hug", course_id: 4, user_id: 0, schedule_review_id: 0, prereqs: [])

ClassReview.create!(id: 5, difficulty: 5, workload: 6, professor: "John Denero", course_id: 5, user_id: 3, schedule_review_id: 1, prereqs: [])
ClassReview.create!(id: 6, difficulty: 8, workload: 8, professor: "Babak Ayazifar, Vladimir Stojanovic", course_id: 6, user_id: 3, schedule_review_id: 1, prereqs: [])
ClassReview.create!(id: 7, difficulty: 3, workload: 7, professor: "Margi Wald", course_id: 7, user_id: 3, schedule_review_id: 1, prereqs: [])

ClassReview.create!(id: 8, difficulty: 7, workload: 7, professor: "Josh Hug", course_id: 8, user_id: 3, schedule_review_id: 2, prereqs: ["CS 61A"])
ClassReview.create!(id: 9, difficulty: 9, workload: 9, professor: "Murat Arcak, Michel Maharbiz", course_id: 9, user_id: 3, schedule_review_id: 2, prereqs: ["EE 16A"])
ClassReview.create!(id: 10, difficulty: 2, workload: 4, professor: "Chrisopher Gade", course_id: 10, user_id: 3, schedule_review_id: 2, prereqs: [])
ClassReview.create!(id: 11, difficulty: 1, workload: 2, professor: "Edmund Campion", course_id: 11, user_id: 3, schedule_review_id: 2, prereqs: [])

ClassReview.create!(id: 12, difficulty: 7, workload: 7, professor: "Randy Katz, Krste Asanovic", course_id: 1, user_id: 3, schedule_review_id: 3, prereqs: ["CS 61B"])
ClassReview.create!(id: 13, difficulty: 8, workload: 8, professor: "Kannan Ramchandran, Satish Rao", course_id: 12, user_id: 3, schedule_review_id: 3, prereqs: ["CS 61B"])
ClassReview.create!(id: 14, difficulty: 2, workload: 7, professor: "Christian Paiz", course_id: 13 , user_id: 3, schedule_review_id: 3, prereqs: [])

ClassReview.create!(id: 15, difficulty: 4, workload: 3, professor: "Stephen Bianchi", course_id: 14, user_id: 2, schedule_review_id: 4, prereqs: ["Econ 136"])
ClassReview.create!(id: 16, difficulty: 3, workload: 4, professor: "Raymond Hawkins", course_id: 15, user_id: 2, schedule_review_id: 4, prereqs: ["Econ 136"])
ClassReview.create!(id: 17, difficulty: 5, workload: 5, professor: "Israel Romem", course_id: 16, user_id: 2, schedule_review_id: 4, prereqs: ["Stats 20"])

ClassReview.create!(id: 18, difficulty: 2, workload: 3, professor: "Galina Hale", course_id: 17, user_id: 2, schedule_review_id: 5, prereqs: ["Econ 100B"])
ClassReview.create!(id: 19, difficulty: 5, workload: 5, professor: "Raymond Hawkins", course_id: 18, user_id: 2, schedule_review_id: 5, prereqs: ["Econ 100A"])
ClassReview.create!(id: 20, difficulty: 7, workload: 8, professor: "John Denero", course_id: 5, user_id: 2, schedule_review_id: 5, prereqs: [])

ClassReview.create!(id: 21, difficulty: 4, workload: 5, professor: "Woods", course_id: 19, user_id: 2, schedule_review_id: 6, prereqs: [])
ClassReview.create!(id: 22, difficulty: 5, workload: 5, professor: "Alan Auerbach", course_id: 20, user_id: 2, schedule_review_id: 6, prereqs: ["Econ 100A", "Math 1B"])
ClassReview.create!(id: 23, difficulty: 2, workload: 4, professor: "Sarah Harris", course_id: 21, user_id: 2, schedule_review_id: 6, prereqs: ["German 1"])
#ClassReview.create!(id: , difficulty: , workload: , professor: , course_id: , user_id: , schedule_review_id: , prereqs: )
