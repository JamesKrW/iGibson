(define (problem cleaning_carpets)
    (:domain igibson)
    (:objects agent_n_01_1 - agent floor_n_01_1 floor_n_01_2 - floor_n_01 hand_towel_n_01_1 - hand_towel_n_01)
    (:init (onfloor agent_n_01_1 floor_n_01_1) (onfloor hand_towel_n_01_1 floor_n_01_2) (stained floor_n_01_1))
    (:goal (not (stained floor_n_01_1)))
)