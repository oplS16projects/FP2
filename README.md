## My Library: (fra) Functional Relational Algebra
My name: Adam Melle

I used the Functional Relational Algebra library to create a database and then demonstrate some queries on the database. I created a simple database for subscriptions. The database has 3 tables, Subscribers, Subscriptions, and Prices. The Subscribers
table contains information about the subscribers like, their name, address, and their ID number. The Subscriptions table contains a subscribers ID number, their subscription type, and how long they are subscribed for. The Prices table contains the subscription type and the price of that type.

This is the code defining a database, named SubscriptionDB, and the three tables. I also added some test entries into each table so I could later demonstrate the queries.

```racket
(define SubscriptionDB
  (Database
  [Subscribers
   [Sub-ID FirstName LastName Address]
   (112 "Matt" "Jones" "82 Elm Street")
   (128 "Taylor" "Wilson" "45 Strong Avenue")
   (126 "Jeff" "Miller" "22 Holmes Road")
   (102 "Mark" "Hawkins" "78 Bull Road")
   (117 "Wes" "Hauch" "108 Sampson Avenue")]
  [Subscriptions
   [Sub-ID Type Length]
   (112 "Platinum" "1 year")
   (128 "Gold" "2 year")
   (128 "Platinum" "3 year")
   (126 "Silver" ".5 year")
   (102 "Silver" "2 year")
   (102 "Gold" "2 year")
   (117 "Platinum" "1 year")
   (117 "Gold" "1 year")
   (117 "Silver" "1 year")]
  [Prices
   [Type Price]
   ("Platinum" "$60")
   ("Gold" "$35")
   ("Silver" "$15")]))
```   
Next is a procedure that is used to print out the queries. It also formats them a little nicer so they are easier to read.

```racket
   (define (print-relation r)
  (for ([c (in-list (relation-schema r))])
    (printf "~a\t" c))
  (printf "~n")
  (for ([t (in-set (relation-tuples r))])
    (for ([i (in-range 0 (tuple-length t))])
      (printf "~a\t" (tuple-ref t i)))
    (printf "~n"))(printf "~n"))
```
Here are three simple queries that just print out each table in the databse.
```racket
 (with-database SubscriptionDB
   (print-relation
    (execute-query
     (query-relation 'Subscribers))))
```
OUTPUT: 
![](https://raw.githubusercontent.com/adam-melle/FP2/master/q1.JPG)

```racket
(with-database SubscriptionDB
   (print-relation
    (execute-query
     (query-relation 'Subscriptions))))
```
OUTPUT:
![](https://raw.githubusercontent.com/adam-melle/FP2/master/q2.JPG)

```racket
(with-database SubscriptionDB
   (print-relation
    (execute-query
     (query-relation 'Prices))))
```

OUTPUT:  
![](https://raw.githubusercontent.com/adam-melle/FP2/master/q3.JPG)
     
And lastly, a query that does something useful. This query will natural join the three tables together into a table that has
all the subscriber information that you'd need to know. It then projects the fields '(Sub-ID FirstName LastName Address Type Length Price).

```racket
(with-database SubscriptionDB
   (print-relation
    (execute-query
      (query-projection
       '(Sub-ID FirstName LastName Address Type Length Price)
       (query-natural-join
        (query-relation 'Subscribers)
        (query-natural-join
         (query-relation 'Subscriptions)
         (query-relation 'Prices)))))))
```

OUTPUT:
![](https://raw.githubusercontent.com/adam-melle/FP2/master/q4.JPG)

As you can see, some subscribers have multiple subscriptions with different types. It is much easier to see this now instead of trying to look up the ID of each person in the subscriptions table.
