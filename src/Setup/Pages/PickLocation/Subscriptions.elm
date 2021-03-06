module Setup.Pages.PickLocation.Subscriptions exposing (subscriptions)

import Utils.Ports.Map exposing (mapClick)
import Utils.Ports.Geolocation exposing (geoLocResp, geoRevResp)
import Setup.Pages.PickLocation.Models exposing (..)
import Setup.Pages.PickLocation.Messages exposing (..)
import Setup.Pages.PickLocation.Config exposing (..)


subscriptions : Config msg -> Model -> Sub msg
subscriptions { toMsg } model =
    Sub.batch
        [ mapClick <| MapClick >> toMsg
        , geoLocResp <| GeoLocResp >> toMsg
        , geoRevResp <| GeoRevResp >> toMsg
        ]
