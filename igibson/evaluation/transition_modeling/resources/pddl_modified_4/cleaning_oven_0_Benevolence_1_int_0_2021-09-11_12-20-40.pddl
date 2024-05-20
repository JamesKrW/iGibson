(define (problem cleaning_oven)
    (:domain igibson)
    (:objects agent_n_01_1 - agent cabinet_n_01_1 - cabinet_n_01 oven_n_01_1 - oven_n_01 rag_n_01_1 rag_n_01_2 - rag_n_01 scrub_brush_n_01_1 - scrub_brush_n_01 sink_n_01_1 - sink_n_01)
    (:init (inside rag_n_01_1 cabinet_n_01_1) (inside rag_n_01_2 cabinet_n_01_1) (inside scrub_brush_n_01_1 cabinet_n_01_1) (not (soaked rag_n_01_1)) (not (soaked rag_n_01_2)) (not (soaked scrub_brush_n_01_1)) (stained oven_n_01_1))
    (:goal (and (soaked rag_n_01_2) (soaked scrub_brush_n_01_1) (not (stained oven_n_01_1)) (soaked rag_n_01_1)))
)