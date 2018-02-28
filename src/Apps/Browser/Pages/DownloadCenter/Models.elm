module Apps.Browser.Pages.DownloadCenter.Models exposing (..)

import Game.Meta.Types.Network.Site as Site
import Apps.Browser.Widgets.HackingToolkit.Model as HackingToolkit
import Apps.Browser.Widgets.PublicFiles.Model as PublicFiles


type alias Model =
    { toolkit : HackingToolkit.Model
    , publicFiles : PublicFiles.Model
    , showingPanel : Bool
    , loginFailed : Bool
    , title : String
    }


initialModel : Site.DownloadCenterContent -> Site.Meta -> Model
initialModel { title } meta =
    { toolkit =
        { password = meta.password
        , target = meta.nip
        }
    , publicFiles = meta.publicFiles
    , showingPanel = True
    , loginFailed = False
    , title = title
    }


getTitle : Model -> String
getTitle { toolkit } =
    "Accessing " ++ (Tuple.second toolkit.target)


setShowingPanel : Bool -> Model -> Model
setShowingPanel value model =
    { model | showingPanel = value }


setLoginFailed : Bool -> Model -> Model
setLoginFailed value model =
    { model | loginFailed = value }


setToolkit : HackingToolkit.Model -> Model -> Model
setToolkit value model =
    { model | toolkit = value }
