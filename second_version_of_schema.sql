TABLE Student {
  Student_id int [pk]
  Name varchar
  Second_name varchar
  Personal_id varchar
  Email varchar
  Address varchar
  D_O_B date
  Gender varchar
  Faculty_id int
  Subj_id int
  Course_id int
  Manager int
}

TABLE student_not_mandatory_info {
  Student_id int 
  Second_address varchar
  Apartment_address varchar
}

TABLE Lecturer {
  Lecturer_id int [pk]
  Name varchar
  Second_name varchar
  Personal_id varchar
  Email varchar
  Address varchar
  D_O_B date
  Gender varchar
  Account_number varchar
  Rank_position varchar
  Sub_id int
}

TABLE lecturer_not_mandatory_info {
  Lecturer_id int 
  Second_address varchar
  Apartment_address varchar
}


TABLE Assistant_manager {
  Manager_id int [pk]
  Name varchar
  Second_name varchar
  Personal_id varchar
  Email varchar
  Address varchar
  Date_of_birth date
  Student int
}

TABLE Course {
  Course_id int [pk]
  Num_of_course varchar
  Subject int
  St int
  Lecture_id int
}

TABLE Subject {
  id int [pk]
  Subject_name varchar 
  Lecturer_id int
  Stude int
  Course_id int
  
}

TABLE Lections {
  id int [pk]
  Timetable datetime 
  St_id int
  Subject_id varchar
}

TABLE Faculty {
  Id int [pk]
  Faculty_name varchar
  Academic_degree varchar 
  Course_id int
  Student_id int
}


TABLE Timetable {
  id int [pk]
  Subject_time datetime
  Subject_id int
  Lection_id int
  Student_id int
}






Ref: "Student"."Student_id" < "student_not_mandatory_info"."Student_id"


Ref: "Faculty"."Student_id" < "Student"."Student_id"

Ref: "Student"."Faculty_id" < "Faculty"."Id"

Ref: "Faculty"."Course_id" < "Course"."Course_id"

Ref: "Student"."Subj_id" < "Subject"."id"

Ref: "Subject"."Stude" < "Student"."Student_id"

Ref: "Course"."Subject" < "Subject"."id"

Ref: "Student"."Course_id" < "Course"."Course_id"

Ref: "Lecturer"."Sub_id" < "Subject"."id"

Ref: "Lecturer"."Lecturer_id" < "lecturer_not_mandatory_info"."Lecturer_id"

Ref: "Course"."St" < "Student"."Student_id"

Ref: "Course"."Lecture_id" < "Lecturer"."Lecturer_id"

Ref: "Lections"."St_id" < "Student"."Student_id"

Ref: "Lections"."Subject_id" < "Subject"."id"

Ref: "Subject"."id" < "Timetable"."Subject_id"

Ref: "Lections"."id" < "Timetable"."Lection_id"

Ref: "Student"."Student_id" < "Timetable"."Student_id"

Ref: "Student"."Student_id" < "Assistant_manager"."Student"

Ref: "Assistant_manager"."Manager_id" < "Student"."Manager"

Ref: "Course"."Course_id" < "Subject"."Course_id"