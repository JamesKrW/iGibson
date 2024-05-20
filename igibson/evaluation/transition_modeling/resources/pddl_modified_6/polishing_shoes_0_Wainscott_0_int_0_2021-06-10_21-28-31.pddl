(define (problem polishing_shoes)
    (:domain igibson)
    (:objects agent_n_01_1 - agent floor_n_01_1 - floor_n_01 rag_n_01_1 - rag_n_01 shoe_n_01_1 shoe_n_01_2 - shoe_n_01 sink_n_01_1 - sink_n_01)
    (:init (not (soaked rag_n_01_1)) (onfloor rag_n_01_1 floor_n_01_1) (onfloor shoe_n_01_1 floor_n_01_1) (onfloor shoe_n_01_2 floor_n_01_1) (stained shoe_n_01_1) (stained shoe_n_01_2))
    (:goal (and (not (stained shoe_n_01_2)) (nextto rag_n_01_1 sink_n_01_1) (soaked rag_n_01_1) (not (stained shoe_n_01_1))))
)