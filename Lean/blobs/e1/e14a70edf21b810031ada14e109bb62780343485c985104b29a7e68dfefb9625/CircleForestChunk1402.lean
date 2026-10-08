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
def state_1637208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 57 else (if j.val < 4 then 50 else 39)))
def hex_1637208 : String := "40434107070A434142050705414244400A4305410505400A054440074305414407070540070542054440060505"
theorem cover_1637208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637208 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1637208)
  decide +kernel
#print axioms cover_1637208

def state_1637255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 56 else (if j.val < 4 then 51 else 38)))
def hex_1637255 : String := "40410A06414344420940060842400809400841080944080843444209400609420A0A44090A"
theorem cover_1637255 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637255 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1637255)
  decide +kernel
#print axioms cover_1637255

def state_1637292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 56 else (if j.val < 4 then 51 else 39)))
def hex_1637292 : String := "400A41434244400A41430507050A44400A41430A080A0A420A0A43420A0A0A"
theorem cover_1637292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637292 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1637292)
  decide +kernel
#print axioms cover_1637292

def state_1637323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 57 else (if j.val < 4 then 51 else 19)))
def hex_1637323 : String := "44400641434244400608400641080A060606400641434244400A410A0A0A440A0A420A0A43420A0A0A"
theorem cover_1637323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637323 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1637323)
  decide +kernel
#print axioms cover_1637323

def state_1637365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 18)))
def hex_1637365 : String := "4143424440050840064108430706060506"
theorem cover_1637365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637365 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1637365)
  decide +kernel
#print axioms cover_1637365

def state_1637384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 50 else 19)))
def hex_1637384 : String := "444240410706414307440808430744064240060706400607424007414307444240070707074307440707400607"
theorem cover_1637384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637384 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1637384)
  decide +kernel
#print axioms cover_1637384

def state_1637429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 19)))
def hex_1637429 : String := "444240054105060642400641434408420808054344424006080642400641080A060606"
theorem cover_1637429 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637429 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_1637429)
  decide +kernel
#print axioms cover_1637429
end Mub6.Numerical.CircleFullD0.Forest
