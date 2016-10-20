module Main exposing (..)

import Html.App as App
import Update exposing (update)
import Model exposing (init)
import View exposing (view)
import Subscriptions exposing (subscriptions)


main : Program Never
main =
    App.program
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }
