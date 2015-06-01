import Html exposing (..)
import Html.Attributes exposing (..)
import Flex exposing (..)
import Signal exposing (..)
import String
import Mouse



main : Signal Html
main = (frame << artifact) <~ Mouse.position


frame : Html -> Html
frame = toList >> layout horizontal center center noWrap >> fullbleed

        
artifact : (Int, Int) -> Html
artifact position =
  flexDiv artifactStyle [] [ position |> formatPosition >> text ]

artifactStyle : List (String, String)
artifactStyle = [
  ("color", "hsl(180, 100%, 50%)"),
  ("font-size", "20px"),
  ("font-family", "monospace"),
  ("width", (toString <| 7 * goldenRatio) ++ "rem"),
  ("height", "7rem"),
  ("background", "hsla(221, 100%, 62%, 1)"),
  ("flex-grow", "0"),
  ("justify-content", "center"),
  ("align-items", "center")]

                
formatPosition : (Int, Int) -> String
formatPosition (x, y) = let fmt = toString
                         in fmt x ++ " ⦚ " ++ fmt y

goldenRatio : Float
goldenRatio = 1.61803398875
              
toList : a -> List a
toList x = [x]
           