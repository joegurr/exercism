module LuciansLusciousLasagna (elapsedTimeInMinutes, expectedMinutesInOven, preparationTimeInMinutes) where

-- TODO: define the expectedMinutesInOven constant
expectedMinutesInOven = 40
-- TODO: define the preparationTimeInMinutes function
preparationTimeInMinutes layers = 2 * layers
-- TODO: define the elapsedTimeInMinutes function
elapsedTimeInMinutes layers mins_in_oven = mins_in_oven + preparationTimeInMinutes layers