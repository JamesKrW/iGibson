(define (problem setting_mousetraps)
    (:domain igibson)
    (:objects agent_n_01_1 - agent bed_n_01_1 - bed_n_01 floor_n_01_1 - floor_n_01 mousetrap_n_01_1 mousetrap_n_01_2 mousetrap_n_01_3 mousetrap_n_01_4 - mousetrap_n_01 toilet_n_02_1 - toilet_n_02)
    (:init (ontop mousetrap_n_01_1 bed_n_01_1) (ontop mousetrap_n_01_2 bed_n_01_1) (ontop mousetrap_n_01_3 bed_n_01_1) (ontop mousetrap_n_01_4 bed_n_01_1))
    (:goal (and (onfloor mousetrap_n_01_2 floor_n_01_1) (onfloor mousetrap_n_01_1 floor_n_01_1) (nextto mousetrap_n_01_4 toilet_n_02_1) (nextto mousetrap_n_01_3 toilet_n_02_1)))
)