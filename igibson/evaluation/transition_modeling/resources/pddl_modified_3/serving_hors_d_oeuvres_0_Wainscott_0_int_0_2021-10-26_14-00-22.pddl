(define (problem serving_hors_d_oeuvres)
    (:domain igibson)
    (:objects agent_n_01_1 - agent cheese_n_01_4 - cheese_n_01 cracker_n_01_1 cracker_n_01_2 cracker_n_01_3 cracker_n_01_4 - cracker_n_01 electric_refrigerator_n_01_1 - electric_refrigerator_n_01 parsley_n_02_2 - parsley_n_02 table_n_02_1 - table_n_02)
    (:init (inside cheese_n_01_4 electric_refrigerator_n_01_1) (inside parsley_n_02_2 electric_refrigerator_n_01_1) (ontop cracker_n_01_1 table_n_02_1) (ontop cracker_n_01_2 table_n_02_1) (ontop cracker_n_01_3 table_n_02_1) (ontop cracker_n_01_4 table_n_02_1))
    (:goal (and (ontop cracker_n_01_4 table_n_02_1) (ontop cracker_n_01_2 table_n_02_1) (ontop parsley_n_02_2 cheese_n_01_4)))
)