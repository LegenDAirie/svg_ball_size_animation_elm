module Update exposing (update)

import Model exposing (Model)
import Msg exposing (..)
import Animation


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Resize ->
            ( { model
                | style =
                    Animation.interrupt
                        [ Animation.to
                            [ Animation.radius 2
                            ]
                        , Animation.to
                            [ Animation.radius 0.5
                            ]
                        , Animation.to
                            [ Animation.radius 1.5
                            ]
                        , Animation.to
                            [ Animation.radius 0.1
                            ]
                        , Animation.to
                            [ Animation.radius 3
                            ]
                        , Animation.to
                            [ Animation.radius 1
                            ]
                        ]
                        model.style
              }
            , Cmd.none
            )

        Animate animMsg ->
            ( { model
                | style = Animation.update animMsg model.style
              }
            , Cmd.none
            )
