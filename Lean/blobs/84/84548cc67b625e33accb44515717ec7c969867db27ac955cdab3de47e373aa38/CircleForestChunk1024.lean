import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1546140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 206 else (if j.val < 4 then 163 else 172)))
def hex_1546140 : String := "41404206444106070642440841064308064441430806084143400608064308400608400742074407430807"
theorem cover_1546140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546140 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1546140)
  decide +kernel
#print axioms cover_1546140

def state_1546184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 206 else (if j.val < 4 then 162 else 173)))
def hex_1546184 : String := "41404244430A0606440A06424443084106084305064443054105400A054305054042440A0A0A424408430841400A080844080A"
theorem cover_1546184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546184 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_1546184)
  decide +kernel
#print axioms cover_1546184

def state_1546236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 238) else (if j.val < 3 then 206 else (if j.val < 4 then 163 else 173)))
def hex_1546236 : String := "40064206444106434006080606"
theorem cover_1546236 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546236 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1546236)
  decide +kernel
#print axioms cover_1546236

def state_1546250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 398 else 239) else (if j.val < 3 then 206 else (if j.val < 4 then 163 else 173)))
def hex_1546250 : String := "424443410607060644434106070606"
theorem cover_1546250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546250 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1546250)
  decide +kernel
#print axioms cover_1546250

def state_1546265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 399 else 239) else (if j.val < 3 then 206 else (if j.val < 4 then 163 else 173)))
def hex_1546265 : String := "42444308074341064042060608064443414042080A080841400642060807434140064244080689400A08410640064244070689"
theorem cover_1546265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546265 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_1546265)
  decide +kernel
#print axioms cover_1546265

def state_1546318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 207 else (if j.val < 4 then 162 else 172)))
def hex_1546318 : String := "41404244090A0942440889054009420808"
theorem cover_1546318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546318 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1546318)
  decide +kernel
#print axioms cover_1546318

def state_1546336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 238) else (if j.val < 3 then 207 else (if j.val < 4 then 163 else 172)))
def hex_1546336 : String := "404244414340064206440805060789444143050609894244414308400608088944414305404244070505054308404207070889"
theorem cover_1546336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546336 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1546336)
  decide +kernel
#print axioms cover_1546336
end Mub6.Numerical.CircleFullD0.Forest
