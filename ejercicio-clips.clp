
(deffacts hechos
    ( estadoInicial 
        bloque A debajo B     encima nada
        bloque B debajo C     encima A
        bloque C debajo mesa  encima B
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
    ( estadoInicial )
    =>
    (assert (  ))
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
