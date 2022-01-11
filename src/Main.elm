module Main exposing (main)

import Html

-- main = Html.div [] (List.map (\person -> Html.p [] [Html.text (greet person.name person.number)]) people)

main = Html.div []
    (people
        |> List.sortBy (\person -> person.number)
        -- |> List.reverse
        |> List.map (\person -> Html.p [] [Html.text (greet person.name person.number)])
    )

greet name favoriteNumber = "Hello " ++ name ++ (
    if favoriteNumber == 17 then "That's my favorite number, too!"
    else "That's a pretty cool number, friend."
    )

people = [{name = "Lindsay", number = 17}, {name = "Ben", number = 14}]