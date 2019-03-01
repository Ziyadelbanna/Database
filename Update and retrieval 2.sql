Create schema library;
Use library;
Create table Book ( Book_id Char (12) Not null, Title varchar(30), Publisher_name varchar(30), 
					constraint pk primary key (Book_id),
                    constraint Book_fk foreign key (Publisher_name) references Publisher( Name)
                    );
Create table Book_Authors ( Book_id Char (12) Not null, Author_name varchar(30) not null,
					constraint pk primary key (Book_id, Author_name),
                    constraint Auth_fk foreign key (Book_id) references Book(Book_id)
                    );
Create table Publisher ( Name varchar(30) not null , Address varchar(50), Phone char(11),
					constraint pk primary key (Name)
                    );
 Create table Book_copies ( Book_id Char (12) Not null, Branch_id Varchar (30) Not null, No_of_copies int(100),
					constraint pk primary key (Book_id, Branch_id),
                    constraint Copies_fk foreign key (Book_id) references Book(Book_id),
                    constraint Copies2_fk foreign key (Branch_id) references Library_branch(Branch_id)
                    );
Create table Book_loans ( Book_id Char (12) Not null, Branch_id Varchar (30) Not null, Card_no int(100) not null, Date_out date not null,
					Due_date date not null,
					constraint pk primary key (Book_id, Branch_id,Card_no),
                    constraint Book_fk foreign key (Book_id) references Book(Book_id),
                    constraint Book_2fk foreign key (Branch_id) references Library_branch(Branch_id),
					constraint Book_3fk foreign key (Card_no) references Borrower(Card_no)
                    );
Create table library_branch ( Branch_id Varchar (30) Not null, Branch_name varchar(30), Address varchar(50),
			     constraint pk primary key (Branch_id)
                    );                  
Create table Borrower (  Card_no int(100) not null , Name varchar(30) not null , Address varchar(50), Phone char(11),
					constraint pk primary key (Card_no)
                    ); 
                    
-- To answer the questions, we will write the following commands
select No_of_copies from Book_copies,book, library_branch,book_loans where Book.title = 'The lost tribe' And library_branch.Branch_name ='Sharpstown';
select No_of_copies from Book_copies,book, library_branch,book_loans where Book.title = 'The lost tribe';


                    

