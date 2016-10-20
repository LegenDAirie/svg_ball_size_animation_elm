module Model exposing (Model, init)

import Animation
import Msg exposing (..)


type alias Model =
    { style : Animation.State }


init : ( Model, Cmd Msg )
init =
    ( { style =
            Animation.style
                [ Animation.radius 1.0
                ]
      }
    , Cmd.none
    )
