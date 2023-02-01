module Pages.NotFound_ exposing (page)

import Html
import Html.Attributes exposing (..)
import View exposing (View)


page : View msg
page =
    { title = "Homepage"
    , body = body
    }


body : List (Html.Html msg)
body =
    [ Html.h1 [ class "text-3xl font-bold underline" ] [ Html.text "Not found, it's complicated!" ] ]
