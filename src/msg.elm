module Msg exposing (..)

import Animation


type Msg
    = Resize
    | Animate Animation.Msg
