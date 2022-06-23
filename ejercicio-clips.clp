

(deffacts hechos
    ( estadoInicial 
        bloque A debajo B    encima nada
        bloque B debajo C    encima A
        bloque C debajo mesa encima B
        bloque E debajo D    encima nada
        bloque D debajo mesa encima E
      estado final
        bloque A debajo mesa encima E
        bloque B debajo E    encima D
        bloque C debajo mesa encima nada
        bloque D debajo B    encima nada
        bloque E debajo A    encima B)
    (  )
    
)