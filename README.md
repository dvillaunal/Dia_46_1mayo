__Protocolo:__

+ Daniel Felipe Villa Rengifo

+ Lenguaje: R

+ Tema: Manejo de strings en R

+ Fuentes:
    
  1. [R documentation](https://www.rdocumentation.org/packages/stringr/versions/1.4.0)
  2. [TutorialPoint](https://www.tutorialspoint.com/r/r_strings.htm)

# Strings:

Una cadena es un carácter que está formado por un carácter o contiene una colección de caracteres. Se encierra dentro de las comillas simples (`'Esto es una cadena'`) o dentro de las comillas dobles (`"Esto también es una cadena"`). Pero en la representación interna de R las cadenas se representan entre comillas dobles.

# Reglas para escribir `strings` en R:

Las siguientes son las reglas para escribir una cadena válida en el lenguaje de programación R:

+ Se deben usar comillas simples o dobles para encerrar un valor de cadena.

> `str1 = 'Hola Mundo' Ó str1 = "Hola Mundo"`

```{r}
# Comó definir un string en R:
message("# Como definir un string en R:")

print(paste("Hola Mundo", "<=", "Así se define un string común en R con (comillas dobles)"))

cadena = "Muy lejos, más allá de las montañas de palabras"

print(paste(cadena, "<=", "Asi se ve como sale esta cadena definida en comillas dobles o simples (sale solo el texto)"))

```


+ Como solo las comillas simples o las comillas dobles son los caracteres especiales que se utilizan para representar una cadena R, incluirlos en una cadena requiere un cuidado especial.


+ Para incluir una comilla simple dentro de un valor de cadena, rodee la comilla simple con comillas dobles.

+ Para incluir una comilla doble dentro de un valor de cadena, rodee la comilla doble con comillas simples.

+ Se pueden incluir comillas simples o dobles al principio o al final del valor de la cadena tal cual.

# Concatenar cadenas:

La concatenación de cadenas hace que las cadenas se unan o fusionen.

La sintaxis para concatenar cadenas en R se realiza mediante:

> `paste(..., sep= "", collapse = NULL)`
>
> `paste0(..., collapse = NULL)`

El argumento anterior recibe:

1. '...' : indica uno o más caracteres u objetos que se convierten en vectores de caracteres.

2. 'sep' : indica un carácter de separación

3. 'colapso' : indica un carácter de separación opcional.

```{r}
# Ejemplo Concatenación de cadenas:
message("\n# Ejemplo Concatenación de cadenas:")

c1 = "Soy"
c2 = "Una"
c3 = "Cadena"

cat(c1, "\n")
cat(c2, "\n")
cat(c3, "\n")

## Concatenamos nuestro strings:
message("\n## Concatenenos nuestro strings:")
print(paste(c1, c2, c3))

## un Ejemplo de concatenar con diferentes items:
"Haremos concatenar.."
# Definamos dos vectores cadenas
vec_str1 <- c(".EPUB", ".PDF", " Fisico")

vec_str2 <- c("Libro")

print(paste(vec_str2,vec_str1,sep="",collapse=" - "))
```
+ Nota: `paste0()` toma un argumento como sep =, '' es decir, sin espacio y se usa para su eficiencia.


```{r}
# Consideremos un ejemplo Paste0():
## Ejemplo con paste0():
message("\n## Ejemplo con paste0():")

"Nota: `paste0()` toma un argumento como sep =, '' es decir, sin espacio y se usa para su eficiencia."

message("\nNota: `paste0()` toma un argumento como sep =, '' es decir, sin espacio y se usa para su eficiencia.")

# Definimos nuestr lista a unir sin espacios:
Pelicula_2021 <- paste0("Mor","tal"," ","Kom","bat")

print(Pelicula_2021)
```

# Encontrar Longitud:

+ `nchar(char, type, allowNA, keepNA)`: encontrar el número total de caracteres en un vector dado.

+ `nzchar(char)`: devuelve VERDADERO si la x no está vacía y FALSO si contiene alguna cadena.

```{r}
# Ejemplo simple sobre nzchar:
message("\n# Ejemplo simple sobre nzchar:")

print(nzchar("")) # <- Como la cadena esta vacia, devolvera FALSE

# Contiene algo:
message("\n# Contiene algo:")

print(nzchar("Contiene")) # <- Como  Contiene algo devolvera TRUE

# En paralelo, un espacio cuenta como que la cadena no esta vacia:
message("\n# En paralelo, un espacio cuenta como que la cadena no esta vacia:")

print(nzchar(" "))
```


El argumento anterior recibe:

1. `char`: indica un vector de cracteres

2. `type`: Indica uno de los tres tipos, es decir, "width", "chars", "bytes".

3. `allowNA`: Indica un valor lógico por defecto como FALSE y en caso de que el resultado no pueda ser calculado no será un error sino que retornará NA.

4. `keepNA`: Indica un valor lógico por defecto como FALSE donde se asignará el valor faltante a 2 y nzchar() dará TRUE, pero ambos se asignarán a TRUE también en el caso de los valores faltantes.

```{r}
# Retomemos algunas cadenas de texto:
message("\n# Retomemos algunas cadenas de texto:")
print(cadena)
len = nchar(cadena)
cat("nchar() devuelve un numero entero", "\n", "El valor de len es =",len)
```
# Cambiar a mayúsculas y minúsculas:

+ `toupper (char)`: cambia todos los caracteres presentes a mayúsculas.

+ `tolower (char)`: cambia todos los caracteres presentes a minúsculas.


```{r}
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



```

# Extraer y remplazar una cadena de caracteres:

`substr(char, start, stop)`: extracción y sustitución de una cadena de caracteres.

Explicando los items que reciben `substr`:

1. `char`: indica una cadena de caracteres.

2. `start`: indica un número entero que especifica el valor inicial correspondiente que se devolverá.

3. `stop`: indica un número entero que especifica el valor de detención correspondiente que se devolverá.

```{r}
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
```

# Formatting String:

`format(char,width,scientific,justify,nsmall,digits)`: Convierte un vector de enteros y caracteres a un formato de uso común.


El argumento anterior establece que:

1. `char`: puede ser un vector de números enteros o caracteres.

2. `width`: indica un ancho mínimo de cadena producida.

3. `scientific`: el valor predeterminado es FALSO, pero use VERDADERO para la notación científica.

4. `justify`: predeterminado a ninguno, pero puede mostrar cadenas a "derecha", "izquierda" y "centro".

5. `nsmall`: indica el número total después del lugar decimal.

6. `digits`: indica el número total antes y después del lugar decimal.


```{r}
# Tomemos un ejemplo de formateo de cadenas para notación científica.
message("\n# Tomemos un ejemplo de formateo de cadenas para notación científica.")

# Cambiamos el vector a forma cientifica:
message("\n# Cambiamos el vector a forma cientifica:")

formateo <- format(c(14L, 21.3131), scientific = TRUE)
# Veamos el resultado:
message("\n# Vemmos el resultado:")

print(formateo)
```