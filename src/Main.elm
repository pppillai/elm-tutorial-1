module Main exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)



-- Main


main =
    Browser.sandbox { init = init, update = update, view = view }


type alias Model =
    Int


init : Model
init =
    0


type Msg
    = Increment
    | Decrement
    | Reset
    | Step10


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1

        Reset ->
            0

        Step10 ->
            model + 10


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Decrement ] [ text "-" ]
        , div []
            [ text (String.fromInt model) ]
        , button [ onClick Increment ] [ text "+" ]
        , div []
            [ button [ onClick Reset ] [ text "Reset" ]
            ]
        , div []
            [ button [ onClick Step10 ] [ text "Step Add 10" ]
            ]
        ]
