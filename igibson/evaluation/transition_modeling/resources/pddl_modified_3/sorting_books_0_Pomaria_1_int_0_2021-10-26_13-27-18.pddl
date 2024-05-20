(define (problem sorting_books)
    (:domain igibson)
    (:objects agent_n_01_1 - agent book_n_02_1 - book_n_02 floor_n_01_1 - floor_n_01 hardback_n_01_1 hardback_n_01_2 - hardback_n_01 shelf_n_01_1 - shelf_n_01 table_n_02_1 - table_n_02)
    (:init (onfloor book_n_02_1 floor_n_01_1) (onfloor hardback_n_01_2 floor_n_01_1) (ontop hardback_n_01_1 table_n_02_1))
    (:goal (and (ontop book_n_02_1 shelf_n_01_1) (ontop hardback_n_01_2 shelf_n_01_1) (ontop hardback_n_01_1 shelf_n_01_1)))
)