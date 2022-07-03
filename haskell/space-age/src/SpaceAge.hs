module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

ageOn :: Planet -> Float -> Float
secondsPerYear = 60 * 60 * 24 * 365.25
ageOn Mercury s = s / 0.2408467 / secondsPerYear
ageOn Venus s = s / 0.61519726 / secondsPerYear
ageOn Earth s = s / 1.0 / secondsPerYear
ageOn Mars s = s / 1.8808158 / secondsPerYear
ageOn Jupiter s = s / 11.86261 / secondsPerYear
ageOn Saturn s = s / 29.447498 / secondsPerYear
ageOn Uranus s = s / 84.016846 / secondsPerYear
ageOn Neptune s = s / 164.79132 / secondsPerYear