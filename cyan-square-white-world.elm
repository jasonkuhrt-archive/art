module App where

import Html exposing (..)
import Html.Attributes exposing (..)
import Flex exposing (..)



main : Html
main = fullbleed <| layout horizontal center center noWrap [view]

view : Html
view = div [ style [("width", "10rem"), ("height", "10rem"), ( "background", "cyan" )] ] []

