module Events.Server.Handlers.ProcessesRecalcado exposing (..)

import Json.Decode exposing (decodeValue)
import Events.Shared exposing (Handler)
import Game.Servers.Processes.Models exposing (..)
import Decoders.Processes exposing (processDict)


type alias Data =
    Processes


handler : Handler Data msg
handler toMsg =
    decodeValue processDict >> Result.map toMsg
