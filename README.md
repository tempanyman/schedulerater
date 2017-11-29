Title: Schedule Rater

Team Members: Michelle Hwang, Isabelle Ju, Allen Tong, Anastasia Gorovaya

Demo Link:

Idea: We are creating a website where students can come and rate their class schedules in terms of difficulty and can read other students’ reviews to plan their class schedules.

Models and Description:
- User
    - Standard User class with name, email, password, etc. using devise gem
    - Has many ScheduleReviews and ClassReviews through ScheduleReviews
- Department
    - Represents UC Berkeley departments - have names and abbreviations
    - Has many courses
- Course
    - Represents UC Berkeley course - has a name and belongs to a department
- ScheduleReview
    - Represents a single schedule review
- Belongs to a user and has many course reviews
    - Has a difficulty rating and review text
- CourseReview
    - Represents a single review of a course
    - Belongs to a user and schedule review and a course
    - Has a difficulty rating, workload rating, professor name, created at and updated at time, and a list of prereqs

- Features
    - Users can log in
    - Users can create reviews
    - Users can see other users’ reviews
    - Users can search for a class or review

- Division of labor
    - Michelle - viewing class reviews / pages and search
    - Allen - implementing users and user pages
    - Isabelle - creating reviews
    - Anastasia - homepage
