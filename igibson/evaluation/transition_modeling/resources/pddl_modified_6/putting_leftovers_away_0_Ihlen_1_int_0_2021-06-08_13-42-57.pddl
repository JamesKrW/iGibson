(define (problem putting_leftovers_away)
    (:domain igibson)
    (:objects agent_n_01_1 - agent countertop_n_01_1 - countertop_n_01 electric_refrigerator_n_01_1 - electric_refrigerator_n_01 pasta_n_02_1 pasta_n_02_2 pasta_n_02_3 pasta_n_02_4 - pasta_n_02 sauce_n_01_3 sauce_n_01_4 - sauce_n_01)
    (:init (ontop pasta_n_02_1 countertop_n_01_1) (ontop pasta_n_02_2 countertop_n_01_1) (ontop pasta_n_02_3 countertop_n_01_1) (ontop pasta_n_02_4 countertop_n_01_1) (ontop sauce_n_01_3 countertop_n_01_1) (ontop sauce_n_01_4 countertop_n_01_1))
    (:goal (and (inside pasta_n_02_3 electric_refrigerator_n_01_1) (inside pasta_n_02_1 electric_refrigerator_n_01_1) (inside sauce_n_01_4 electric_refrigerator_n_01_1) (inside sauce_n_01_3 electric_refrigerator_n_01_1) (inside pasta_n_02_4 electric_refrigerator_n_01_1) (inside pasta_n_02_2 electric_refrigerator_n_01_1)))
)