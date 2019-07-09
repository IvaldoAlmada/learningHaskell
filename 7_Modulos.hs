--import Data.List
--import Data.List (nub, sort)
--import Data.List hiding (sort)
import qualified Data.List as L
import qualified Data.Map as M
import qualified Data.Set as S

import qualified Geometry.Sphere as Sphere
import qualified Geometry.Cuboid as Cuboid
import qualified Geometry.Cube as Cube

numUniques :: (Eq a) => [a] -> Int
numUniques = length . L.nub

