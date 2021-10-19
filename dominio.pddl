(define (domain ambulancia)
    (:predicates
        (Hospital ?h)
        (Ambulancia ?a)
        (Localizacion ?l ?l2)
        (Paciente ?px)
        (Libre ?a)
        (Ocupada ?a ?px)
        (at-ambulancia ?amb ?l)
        (at-paciente ?px ?l)

    )

    (:action Conducir
        :parameters (?de ?para ?ambulancia)
        :precondition (and (Localizacion ?de ?para) (at-ambulancia ?ambulancia ?de))
        :effect (and (at-ambulancia ?ambulancia ?para)
            (not (at-ambulancia ?ambulancia ?de)))
    )

    (:action subirPaciente
        :parameters (?paciente ?l1 ?ambulancia)
        :precondition (and (Paciente ?paciente) (Localizacion ?l1 ?l1) (Ambulancia ?ambulancia)
            (at-paciente ?paciente ?l1) (at-ambulancia ?ambulancia ?l1) (Libre ?ambulancia))
        :effect (and (Ocupada ?paciente ?ambulancia)
            (not (at-paciente ?paciente ?l1))
            (not (Libre ?ambulancia)))
    )

    (:action bajarPaciente
        :parameters (?paciente ?l1 ?ambulancia)
        :precondition (and (Paciente ?paciente) (Localizacion ?l1 ?l1) (Ambulancia ?ambulancia)
            (Ocupada ?paciente ?ambulancia) (at-ambulancia ?ambulancia ?l1))
        :effect (and (at-paciente ?paciente ?l1)
            (Libre ?ambulancia)
            (not (Ocupada ?paciente ?ambulancia)))
    )
)