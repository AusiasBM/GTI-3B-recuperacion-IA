
(deffacts hechos
    ( estadoInicial torre A B C mesa torre E D mesa estadoBrazo vacio )
    ( estadoFinal torre D B E A mesa torre C mesa estadoBrazo vacio)
)

(defrule desapilarBloqueArriba
    ( declare (salience 1) )
    ( estadoInicial $?torreInicial torre ?BloqueArriba $?bloqueAbajo $?torreFinal estadoBrazo vacio )
    ( test (<> (length$ $?bloqueAbajo) 0) )
    =>
    (assert ( estadoInicial $?torreInicial torre $?bloqueAbajo $?torreFinal estadoBrazo ?BloqueArriba ))
)

(defrule apilar
    ( declare (salience 1) )
    ( estadoInicial $?torreInicial torre $?bloques $?torreFinal estadoBrazo ?bloqueBrazo )
    (test (and (neq ?bloqueBrazo vacio) (<> (length$ $?bloques) 0) ))
    =>
    (assert ( estadoInicial $?torreInicial torre ?bloqueBrazo $?bloques $?torreFinal estadoBrazo vacio ))
)

(defrule cogerMesa
    ( declare (salience 1) )
    ( estadoInicial $?torreInicial torre ?BloqueArriba mesa $?torreFinal estadoBrazo vacio )
    =>
    (assert ( estadoInicial $?torreInicial $?torreFinal estadoBrazo ?BloqueArriba ))
)

(defrule degarMesa
    ( declare (salience 1) )
    ( estadoInicial $?torreInicial $?torreFinal estadoBrazo ?bloqueBrazo )
    (test (neq ?bloqueBrazo vacio))
    =>
    (assert ( estadoInicial $?torreInicial torre ?bloqueBrazo mesa $?torreFinal estadoBrazo vacio ))
)

(defrule comprobarFinal
    ( declare (salience 10) )
    ( estadoInicial $?torres estadoBrazo vacio )
    ( estadoFinal $?torres estadoBrazo vacio )
    =>
    (printout t "Terminado" crlf)
    (halt)
)