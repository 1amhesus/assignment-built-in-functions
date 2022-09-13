
;; tuple
;; Work with tuples and its functions

;; Tuple Example for this exercise is fixed
(define-constant TUPLE_INPUT {
        id: u1, 
        employee: {
            name: "Stacker", 
            city: "Windy City", 
            language: "Python", 
            clubs: (list {id: u10, name: "Club 1"}
                            {id: u20, name: "Club 2"} 
                            {id: u30, name: "Club 3"}
                    )
        }
    }
)

(define-public (get-employee-2nd-club-name-from-tuple)
    (ok (unwrap-panic (get name (element-at (get clubs (get employee TUPLE_INPUT)) u1))))   
)

(define-public (set-new-language-in-tuple) 
    (ok (merge (get employee TUPLE_INPUT) {language: "PythonBuidl"}))
)
