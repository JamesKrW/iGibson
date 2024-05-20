(define (problem brushing_lint_off_clothing)
    (:domain igibson)
    (:objects agent_n_01_1 - agent bed_n_01_1 - bed_n_01 floor_n_01_1 - floor_n_01 scrub_brush_n_01_1 - scrub_brush_n_01 sweater_n_01_1 sweater_n_01_2 sweater_n_01_3 sweater_n_01_4 - sweater_n_01)
    (:init (dusty sweater_n_01_1) (dusty sweater_n_01_2) (dusty sweater_n_01_3) (dusty sweater_n_01_4) (not (dusty scrub_brush_n_01_1)) (onfloor scrub_brush_n_01_1 floor_n_01_1) (onfloor sweater_n_01_1 floor_n_01_1) (onfloor sweater_n_01_2 floor_n_01_1) (ontop sweater_n_01_3 bed_n_01_1) (ontop sweater_n_01_4 bed_n_01_1))
    (:goal (and (ontop sweater_n_01_1 bed_n_01_1) (not (dusty sweater_n_01_1)) (ontop sweater_n_01_4 bed_n_01_1) (ontop sweater_n_01_3 bed_n_01_1) (ontop sweater_n_01_2 bed_n_01_1) (not (dusty sweater_n_01_3)) (not (dusty sweater_n_01_2)) (not (dusty sweater_n_01_4))))
)