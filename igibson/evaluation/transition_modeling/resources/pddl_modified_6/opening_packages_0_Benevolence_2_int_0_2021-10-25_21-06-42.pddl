(define (problem opening_packages)
    (:domain igibson)
    (:objects agent_n_01_1 - agent floor_n_01_1 - floor_n_01 package_n_02_1 package_n_02_2 - package_n_02)
    (:init (not (open package_n_02_1)) (not (open package_n_02_2)) (onfloor package_n_02_1 floor_n_01_1) (onfloor package_n_02_2 floor_n_01_1))
    (:goal (and (open package_n_02_1) (open package_n_02_2)))
)