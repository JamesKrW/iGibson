(define (problem watering_houseplants)
    (:domain igibson)
    (:objects agent_n_01_1 - agent floor_n_01_1 floor_n_01_2 - floor_n_01 pot_plant_n_01_1 pot_plant_n_01_2 pot_plant_n_01_3 - pot_plant_n_01 sink_n_01_1 - sink_n_01)
    (:init (not (soaked pot_plant_n_01_1)) (not (soaked pot_plant_n_01_2)) (not (soaked pot_plant_n_01_3)) (onfloor pot_plant_n_01_1 floor_n_01_1) (onfloor pot_plant_n_01_2 floor_n_01_1) (onfloor pot_plant_n_01_3 floor_n_01_2))
    (:goal (and (soaked pot_plant_n_01_3) (soaked pot_plant_n_01_1) (soaked pot_plant_n_01_2)))
)