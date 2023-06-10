module Pages.Home_ exposing (page)

import Html exposing (..)
import Html.Attributes exposing (..)
import View exposing (View)


page : View msg
page =
    { title = "Homepage"
    , body = body
    }


body : List (Html.Html msg)
body =
    [ div [ class "relative flex min-h-screen flex-col justify-center overflow-hidden bg-gray-50 py-6 sm:py-12" ]
        [ img [ src "https://play.tailwindcss.com/img/beams.jpg", alt "", class "absolute top-1/2 left-1/2 max-w-none -translate-x-1/2 -translate-y-1/2", width 1308 ]
            []
        , div [ class "absolute inset-0 bg-[url(https://play.tailwindcss.com/img/grid.svg)] bg-center [mask-image:linear-gradient(180deg,white,rgba(255,255,255,0))]" ]
            []
        , div [ class "relative bg-white px-6 pt-10 pb-8 shadow-xl ring-1 ring-gray-900/5 sm:mx-auto sm:max-w-lg sm:rounded-lg sm:px-10" ]
            [ div [ class "mx-auto max-w-md" ]
                [ img [ src "https://play.tailwindcss.com/img/logo.svg", class "h-6", alt "Tailwind Play" ]
                    []
                , div [ class "divide-y divide-gray-300/50" ]
                    [ div [ class "space-y-6 py-8 text-base leading-7 text-gray-600" ]
                        [ p []
                            [ text "An advanced online playground for Tailwind CSS, including support for things like:" ]
                        , ul [ class "space-y-4" ]
                            [ li [ class "flex items-center" ]
                                [ p [ class "ml-4" ]
                                    [ text "Customizing your"
                                    , code
                                        [ class "text-sm font-bold text-gray-900" ]
                                        [ text " tailwind.config.js" ]
                                    , text
                                        "file"
                                    ]
                                ]
                            , li [ class "flex items-center" ]
                                [ p [ class "ml-4" ]
                                    [ text "Extracting classes with"
                                    , code
                                        [ class "text-sm font-bold text-gray-900" ]
                                        [ text " @apply" ]
                                    ]
                                ]
                            , li [ class "flex items-center" ]
                                [ p [ class "ml-4" ]
                                    [ text "Code completion with instant preview" ]
                                ]
                            ]
                        , p []
                            [ text "Perfect for learning how the framework works, prototyping a new idea, or creating a demo to share online." ]
                        ]
                    , div [ class "pt-8 text-base font-semibold leading-7" ]
                        [ p [ class "text-gray-900" ]
                            [ text "Want to dig deeper into Tailwind?" ]
                        , p []
                            [ a [ href "https://tailwindcss.com/docs", class "text-sky-500 hover:text-sky-600" ]
                                [ text "Read the docs", text "→" ]
                            ]
                        ]
                    ]
                ]
            ]
        ]
    ]
