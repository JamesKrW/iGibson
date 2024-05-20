(define (problem preserving_food)
    (:domain igibson)
    (:objects agent_n_01_1 - agent beef_n_02_1 - beef_n_02 carving_knife_n_01_1 - carving_knife_n_01 countertop_n_01_1 - countertop_n_01 electric_refrigerator_n_01_1 - electric_refrigerator_n_01 jar_n_01_1 - jar_n_01 pan_n_01_1 - pan_n_01 strawberry_n_01_1 strawberry_n_01_2 - strawberry_n_01)
    (:init (ontop beef_n_02_1 countertop_n_01_1) (ontop carving_knife_n_01_1 countertop_n_01_1) (ontop jar_n_01_1 countertop_n_01_1) (ontop pan_n_01_1 countertop_n_01_1) (ontop strawberry_n_01_1 countertop_n_01_1) (ontop strawberry_n_01_2 countertop_n_01_1) (open jar_n_01_1))
    (:goal (and (not (open jar_n_01_1)) (cooked strawberry_n_01_2) (cooked strawberry_n_01_1) (inside strawberry_n_01_1 jar_n_01_1) (inside strawberry_n_01_2 jar_n_01_1) (inside beef_n_02_1 electric_refrigerator_n_01_1) (sliced strawberry_n_01_2) (frozen beef_n_02_1)))
)