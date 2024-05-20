(define (problem cleaning_out_drawers)
    (:domain igibson)
    (:objects agent_n_01_1 - agent bowl_n_01_1 bowl_n_01_2 - bowl_n_01 cabinet_n_01_1 cabinet_n_01_2 - cabinet_n_01 piece_of_cloth_n_01_1 - piece_of_cloth_n_01 sink_n_01_1 - sink_n_01 spoon_n_01_1 spoon_n_01_2 - spoon_n_01)
    (:init (inside bowl_n_01_1 cabinet_n_01_1) (inside bowl_n_01_2 cabinet_n_01_1) (inside piece_of_cloth_n_01_1 cabinet_n_01_1) (inside spoon_n_01_1 cabinet_n_01_2) (inside spoon_n_01_2 cabinet_n_01_2))
    (:goal (and (nextto spoon_n_01_2 sink_n_01_1) (nextto bowl_n_01_2 sink_n_01_1) (nextto piece_of_cloth_n_01_1 sink_n_01_1) (nextto spoon_n_01_1 sink_n_01_1) (nextto bowl_n_01_1 sink_n_01_1)))
)