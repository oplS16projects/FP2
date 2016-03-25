#lang racket
(require fra)
(require racket/set)


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


(define (print-relation r)
  (for ([c (in-list (relation-schema r))])
    (printf "~a\t" c))
  (printf "~n")
  (for ([t (in-set (relation-tuples r))])
    (for ([i (in-range 0 (tuple-length t))])
      (printf "~a\t" (tuple-ref t i)))
    (printf "~n"))(printf "~n"))
 
(with-database SubscriptionDB
   (print-relation
    (execute-query
     (query-relation 'Subscribers))))

(with-database SubscriptionDB
   (print-relation
    (execute-query
     (query-relation 'Subscriptions))))

(with-database SubscriptionDB
   (print-relation
    (execute-query
     (query-relation 'Prices))))

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
