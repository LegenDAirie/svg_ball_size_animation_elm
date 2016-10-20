module Subscriptions exposing (subscriptions)

import Animation
import Model exposing (Model)
import Msg exposing (..)


subscriptions : Model -> Sub Msg
subscriptions model =
    Animation.subscription Animate [ model.style ]
