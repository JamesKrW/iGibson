(define (problem washing_cars_or_other_vehicles)
    (:domain igibson)
    (:objects agent_n_01_1 - agent bucket_n_01_1 - bucket_n_01 car_n_01_1 - car_n_01 floor_n_01_1 - floor_n_01 rag_n_01_1 - rag_n_01 soap_n_01_1 - soap_n_01)
    (:init (dusty car_n_01_1) (onfloor car_n_01_1 floor_n_01_1) (ontop bucket_n_01_1 car_n_01_1) (ontop rag_n_01_1 car_n_01_1) (ontop soap_n_01_1 car_n_01_1) (stained car_n_01_1))
    (:goal (and (not (stained car_n_01_1)) (not (dusty car_n_01_1))))
)