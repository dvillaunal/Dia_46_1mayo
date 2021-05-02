"__Protocolo:__

+ Daniel Felipe Villa Rengifo

+ Lenguaje: R

+ Tema: Manejo de strings en R

+ Fuentes:
    
  1. [R documentation](https://www.rdocumentation.org/packages/stringr/versions/1.4.0)
  2. [TutorialPoint](https://www.tutorialspoint.com/r/r_strings.htm)"



## ------------------------------------------------------------------------
# Como definir un string en R:
message("# Como definir un string en R:")

print(paste("Hola Mundo", "<=", "Asi se define un string común en R con (comillas dobles)"))

cadena = "Muy lejos, más allá de las montañas de palabras"

print(paste(cadena, "<=", "Asi se ve como sale esta cadena definida en comillas dobles o simples (sale solo el texto)"))



## ------------------------------------------------------------------------
# Ejemplo Concatenación de cadenas:
message("\n# Ejemplo Concatenación de cadenas:")

c1 = "Soy"
c2 = "Una"
c3 = "Cadena"

cat(c1, "\n")
cat(c2, "\n")
cat(c3, "\n")

## Concatenamos nuestro strings:
message("\n## Cocatenenos nuestro strings:")
print(paste(c1, c2, c3))

## un Ejemplo de concatenar con diferentes items:
"Haremos concatenar "
# Definamos dos vectores cadenas
vec_str1 <- c(".EPUB", ".PDF", " Fisico")

vec_str2 <- c("Libro")

print(paste(vec_str2,vec_str1,sep="",collapse=" - "))


## ------------------------------------------------------------------------
# Consideremos un ejemplo Paste0():
## Ejemplo con paste0():
message("\n## Ejemplo con paste0():")

"Nota: `paste0()` toma un argumento como sep =, '' es decir, sin espacio y se usa para su eficiencia."

message("\nNota: `paste0()` toma un argumento como sep =, '' es decir, sin espacio y se usa para su eficiencia.")

# Definimos nuestr lista a unir sin espacios:
Pelicula_2021 <- paste0("Mor","tal"," ","Kom","bat")

print(Pelicula_2021)


## ------------------------------------------------------------------------
# Ejemplo simple sobre nzchar:
message("\n# Ejemplo simple sobre nzchar:")

print(nzchar("")) # <- Como la cadena esta vacia, devolvera FALSE

# Contiene algo:
message("\n# Contiene algo:")

print(nzchar("Contiene")) # <- Como  Contiene algo devolvera TRUE

# En paralelo, un espacio cuenta como que la cadena no esta vacia:
message("\n# En paralelo, un espacio cuenta como que la cadena no esta vacia:")

print(nzchar(" "))


## ------------------------------------------------------------------------
# Retomemos algunas cadenas de texto:
message("\n# Retomemos algunas cadenas de texto:")
print(cadena)
len = nchar(cadena)
cat("nchar() devuelve un numero entero", "\n", "El valor de len es =",len)


## ------------------------------------------------------------------------
# Cambiemos los caracteres:
message("\n# Cambiemos los caracteres:")

Don_Quijote = "Y, viéndole don Quijote de aquella manera, con muestras de tanta tristeza, le dijo: Sábete, Sancho, que no es un hombre más que otro si no hace más que otro. Todas estas borrascas que nos suceden son señales de que presto ha de serenar el tiempo y han de sucedernos bien las cosas; porque no es posible que el mal ni el bien sean durables, y de aquí se sigue que, habiendo durado mucho el mal, el bien está ya cerca. Así que, no debes congojarte por las desgracias que a mí me suceden, pues a ti no te cabe parte dellas. Y, viéndole don Quijote de aquella manera, con muestras de tanta tristeza, le dijo: Sábete, Sancho, que no es un hombre más que otro si no hace más que otro. Todas estas borrascas que nos suceden son señales de que presto ha de serenar el tiempo y han de sucedernos bien las cosas; porque no es posible que el mal ni el bien sean durables, y de aquí se sigue que, habiendo durado mucho el mal, el bien está ya cerca. Así que, no debes congojarte por las desgracias que a mí me suceden, pues a ti no te cabe parte dellas.Y, viéndole don Quijote de aquella manera"

# Volvamos el siguiente texto en Mayúscula:
message("\n# Volvamos el siguiente texto en Mayúscula:")

print(Don_Quijote)

# Ahora en Mayúscula:
message("'\n# Ahora en Mayúscula:")
print(toupper(Don_Quijote))

# Ahora en minúscula:
message("\n# Ahora en minúscula:")

print(tolower(Don_Quijote))





## ------------------------------------------------------------------------
# Un ejemplo simple substr:
message("\n# Un ejemplo simple substr:")
"Extraigamos de ~Procreando~ la palabra ~creando~"
message("\nExtraigamos de ~Procreando~ la palabra ~creando~")

fe <- substr("Procreando", 4, 10)
cat("Extraimos de Procreando la palabra:", fe)

# Extraigamos una cadena de caracteres:
message("\n# Extraigamos una cadena de caracteres:")

"Tomando el texto anterior y extraemos los primeros 1000 terminos"
message("\nTomando el texto anterior y extraemos los primeros 1000 terminos")

print(Don_Quijote)

# Extraemos los primeros 1000 caracteres:
message("\n# Extraemos los primeros 1000 caracteres:")

print(substr(Don_Quijote, 1, 1000))


## ------------------------------------------------------------------------
# Tomemos un ejemplo de formateo de cadenas para notación científica.
message("\n# Tomemos un ejemplo de formateo de cadenas para notación científica.")

# Cambiamos el vector a forma cientifica:
message("\n# Cambiamos el vector a forma cientifica:")

formateo <- format(c(14L, 21.3131), scientific = TRUE)
# Vemmos el resultado:
message("\n# Vemmos el resultado:")

print(formateo)

