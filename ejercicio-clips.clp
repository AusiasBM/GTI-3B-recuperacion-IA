
(deffacts hechos
    ( estadoInicial pila 
        bloque A debajo B     encima nada
        bloque B debajo C     encima A
        bloque C debajo mesa  encima B
        pila
        bloque E debajo D     encima nada
        bloque D debajo mesa  encima E
        estadoBrazo vacio
    )
    ( estado final
        bloque A debajo mesa  encima E
        bloque B debajo E     encima D
        bloque C debajo mesa  encima nada
        bloque D debajo B     encima nada
        bloque E debajo A     encima B
    )  
)

(defrule desapilar
    ( declare (salience 1) )
    ( estadoInicial $?pila1 pila bloque ?B1 debajo ?Bd encima ?Be $?pila2 estadoBrazo ?Ebrazo )
    ( test ( and ( <> ?Be nada ) ( = ?Ebrazo vacio ) ) )
    =>
    (assert ( estadoInicial $?pila1 pila bloque ?B1 debajo ?Bd encima nada  ))
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
