module Routing exposing (..)

import Navigation exposing (Location)
import Models exposing (Route(..))
import UrlParser exposing (..)

matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map Introduction top
        , map Introduction (s "introduction")
        , map EmployerInformation (s "employer-information")
        , map Goals (s "goals")
        , map JobDescription (s "job-description")
        , map Conclusion (s "conclusion")
        , map Acknowledgements (s "acknowledgements")
        ]

parseLocation : Location -> Route
parseLocation location =
    case (parseHash matchers location) of
        Just route ->
            route

        Nothing ->
            NotFoundRoute

introductionPath : String
introductionPath =
    "#introduction"

employerInformationPath : String
employerInformationPath =
    "#employer-information"

goalsPath : String
goalsPath =
    "#goals"

jobDescriptionPath : String
jobDescriptionPath =
    "#job-description"

conclusionPath : String
conclusionPath =
    "#conclusion"

acknowledgementsPath : String
acknowledgementsPath =
    "#acknowledgements"

pageNames : List String
pageNames =
    ["Introduction", "Employer Information", "Goals", "Job Description", "Conclusion", "Acknowledgements", "Not Found"]
    
pagePaths : List String
pagePaths =
    [introductionPath, employerInformationPath, goalsPath, jobDescriptionPath, conclusionPath, acknowledgementsPath]