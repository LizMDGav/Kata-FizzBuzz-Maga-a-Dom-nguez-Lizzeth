-- Realizado por Lizzeth Magaña Domínguez

module FizzBuzz where
-- | Función que recibe un número entero y devuelve la cadena correspondiente
fizzBuzz :: Int -> String
fizzBuzz n
    | n `mod` 15 == 0 = "FizzBuzz!"  
    | n `mod` 3 == 0 = "Fizz!"      
    | n `mod` 5 == 0 = "Buzz!"      
    | otherwise = numberToWords n   

-- | Función para convertir números a palabras
numberToWords :: Int -> String
numberToWords n
    | n == 0 = "Zero"
    | n < 20 = numIniciales !! n
    | n < 100 = decenas !! (n `div` 10) ++ rest (n `mod` 10)
    | n < 1000 = numIniciales !! (n `div` 100) ++ " Hundred" ++ rest (n `mod` 100)
    | otherwise = "Numero fuera de rango"

-- | Función para convertir los numeros restantes a palabras
rest :: Int -> String
rest n
    | n < 20 = numIniciales !! n
    | otherwise = decenas !! (n `div` 10) ++ " " ++ numIniciales !! (n `mod` 10)

-- | Listas con las palabras para los números pequeños
numIniciales :: [String]
numIniciales = ["", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten",
                "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]

-- | Listas con las palabras para las decenas
decenas :: [String]
decenas = ["", "", "Twenty ", "Thirty ", "Forty ", "Fifty ", "Sixty ", "Seventy ", "Eighty ", "Ninety "]

