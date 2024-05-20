(define (problem cleaning_toilet)
    (:domain igibson)
    (:objects agent_n_01_1 - agent detergent_n_02_1 - detergent_n_02 floor_n_01_1 - floor_n_01 scrub_brush_n_01_1 - scrub_brush_n_01 sink_n_01_1 - sink_n_01 toilet_n_02_1 - toilet_n_02)
    (:init (onfloor agent_n_01_1 floor_n_01_1) (onfloor detergent_n_02_1 floor_n_01_1) (onfloor scrub_brush_n_01_1 floor_n_01_1) (stained toilet_n_02_1))
    (:goal (and (not (stained toilet_n_02_1)) (onfloor scrub_brush_n_01_1 floor_n_01_1) (onfloor detergent_n_02_1 floor_n_01_1)))
)