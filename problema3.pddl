(define (problem mundo2)
    (:domain ambulancia)
    (:objects
        localizacion1
        localizacion2
        localizacion3
        localizacion4
        localizacion5
        localizacion6
        localizacion7
        localizacion8
        localizacion9
        localizacion10
        localizacion11
        localizacion12
        localizacion13
        localizacion14
        localizacion15
        localizacion16
        ambulancia1
        ambulancia2
        paciente1
        paciente2
        paciente3
        paciente4
        hospital
    )
    (:init
        (Hospital localizacion1)
        (Ambulancia ambulancia1)
        (Ambulancia ambulancia2)
        (Localizacion localizacion1 localizacion2)
        (Localizacion localizacion2 localizacion3)
        (Localizacion localizacion3 localizacion4)
        (Localizacion localizacion8 localizacion7)
        (Localizacion localizacion7 localizacion6)
        (Localizacion localizacion6 localizacion5)
        (Localizacion localizacion9 localizacion10)
        (Localizacion localizacion10 localizacion11)
        (Localizacion localizacion11 localizacion12)
        (Localizacion localizacion16 localizacion15)
        (Localizacion localizacion15 localizacion14)
        (Localizacion localizacion14 localizacion13)
        (Localizacion localizacion1 localizacion5)
        (Localizacion localizacion5 localizacion9)
        (Localizacion localizacion9 localizacion13)
        (Localizacion localizacion13 localizacion9)
        (Localizacion localizacion9 localizacion5)
        (Localizacion localizacion5 localizacion1)
        (Localizacion localizacion2 localizacion6)
        (Localizacion localizacion6 localizacion10)
        (Localizacion localizacion10 localizacion14)
        (Localizacion localizacion14 localizacion10)
        (Localizacion localizacion10 localizacion6)
        (Localizacion localizacion6 localizacion2)
        (Localizacion localizacion3 localizacion7)
        (Localizacion localizacion7 localizacion11)
        (Localizacion localizacion11 localizacion15)
        (Localizacion localizacion15 localizacion11)
        (Localizacion localizacion11 localizacion7)
        (Localizacion localizacion7 localizacion3)
        (Localizacion localizacion4 localizacion8)
        (Localizacion localizacion8 localizacion12)
        (Localizacion localizacion12 localizacion16)
        (Localizacion localizacion16 localizacion12)
        (Localizacion localizacion12 localizacion8)
        (Localizacion localizacion8 localizacion4)
        (Paciente paciente1)
        (Paciente paciente2)
        (Paciente paciente3)
        (Paciente paciente4)
        (Libre ambulancia1)
        (Libre ambulancia2)
        (at-ambulancia ambulancia1 localizacion16)
        (at-ambulancia ambulancia2 localizacion1)
        (at-paciente paciente1 localizacion3)
        (at-paciente paciente2 localizacion13)
        (at-paciente paciente3 localizacion8)
        (at-paciente paciente4 localizacion15)
    )
    (:goal
        (and (at-paciente paciente1 localizacion1) (at-paciente paciente2 localizacion1) (at-paciente paciente3 localizacion1) (at-paciente paciente4 localizacion1))
    )
)