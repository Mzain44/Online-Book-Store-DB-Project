CREATE TABLE customers ( 
    customer_id SERIAL,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(100),
    CONSTRAINT customers_pkey PRIMARY KEY (customer_id)
);


CREATE TABLE books (
    book_id SERIAL,
    title VARCHAR(150),
    author VARCHAR(100),
    genre VARCHAR(100),
    published_year INT,
    price NUMERIC(10,3),
    stock INT,
    CONSTRAINT books_pkey PRIMARY KEY (book_id)
);

CREATE TABLE orders( 
    order_id SERIAL PRIMARY KEY, 
    customer_id INT REFERENCES customers(customer_id), 
    book_id INT REFERENCES books(book_id), 
    order_date DATE, 
    quantity INT, 
    total_amount NUMERIC(10,3)
);






1)--- rerieve all books in the 'fiction' genre 
select * from books 
where genre = 'fiction' ;

2)--- find books published after the year 1950 .
select * from books 
where published_year > 1950 ;

3)---list all customers from the canada .
select * from customers 
where country = 'candada' ;

4)--- show order placed in November 2023.
select * from orders 
where order_date between '2023-11-01' and '2023-11-30';

5)---retrieve the total stock of books available.
select sum(stock) from books ; 

6)--- find the details of the most expensive books 
select * from books 
order by price desc 
limit 1 ; 

7)--- show all customers who ordered more than 1 quantity of a book 
select * from orders 
where quantity >1 ; 

8)--- retrieve all orders where the total amount exceeds 20 .
select * from orders
where total_amount > 20 ; 

9)--- list all genres available in the books table .
select distinct(genre) from books ;

10)--- find the books with the lowest stock .
select * from books 
order by stock ; 

11)--- calculate the total revenue generated from all orders. 
select sum(total_amount) as revenue  from orders ; 

12)---retrive the total number of books sold for each genre . 
select b.genre , sum(o.quantity) 
from books b 
join orders o 
on b.book_id = o.book_id 
group by b.genre ;

13)--- find the average price of books in the 'fantasy' genre.
select avg(price) from books 
where genre = 'Fantasy';

14)--- list customers who have placed at least 2 orders .
select customer_id , count(order_id) as order_count from orders 
group by Customer_id 
having count(order_id)>2;

15)--- find the most frequently ordered book ; 
select book_id , count(order_id ) as order_count  from orders 
group by book_id
order by order_count desc ; 

16)--- show the top 3 most expensive books of 'fantasy' genre .
select * from books
where genre = 'Fantasy'
order by price desc 
limit 3 ;

17)--- retrieve the total quantity of books sold by each author .

select b.author , sum(o.quantity) 
from books b
join orders o 
on b.book_id = o.book_id 
group by b.author;

18)--- list the cities where customers who spent over 30 are located .
select distinct c.city  , c.customer_id ,o.total_amount  from orders o 
join customers c 
on c.customer_id = o.customer_id
where total_amount > 30 ;

19)--- find the customer who spent the most on orders .
select c.customer_id , c.name ,sum(o.total_amount) as total_spent
from orders o 
join customers c on 
c.customer_id = o.customer_id
group by c.customer_id 
order by total_spent desc ; 

20)--- calcualte the stock remaining after fulfilling all orders .
select b.book_id ,b.title , b.stock ,coalesce(sum(o.quantity),0) as order_quantity ,
b.stock - coalesce(sum(o.quantity),0) as remaining_quantity 
from books b 
left join orders o on 
b.book_id = o.book_id 
group by b.book_id;