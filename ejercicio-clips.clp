
(deffacts hechos
    ( estadoInicial torre A B C torre E D estadoBrazo vacio )
    ( estado final torre1 D B E A torre2 C)
)

(defrule desapilarBloqueArriba
    ( declare (salience 1) )
    ( estadoInicial $?torreInicial torre ?BloqueArriba $?bloqueAbajo $?torreFinal estadoBrazo vacio )
    =>
    (assert ( estadoInicial $?torreInicial torre $?bloqueAbajo $?torreFinal estadoBrazo ?BloqueArriba ))
)

(defrule apilar
    ( declare (salience 1) )

    =>
    (assert (  ))
)

(defrule cogerMesa
    ( declare (salience 1) )

    =>
    (assert (  ))
)

(defrule dejarMesa
    ( declare (salience 1) )

    =>
    (assert (  ))
)


(defrule comprobarEstado
    ( declare (salience 1) )

    =>
    (assert (  ))
)
