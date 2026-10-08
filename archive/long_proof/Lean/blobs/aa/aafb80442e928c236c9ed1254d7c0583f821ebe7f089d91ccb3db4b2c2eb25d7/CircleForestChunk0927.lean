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
def state_1523085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 46 else (if j.val < 4 then 35 else 43)))
def hex_1523085 : String := "4042440741434005420505050544070A424407414340420744070A08400508434005080544084143400A0840424405050A08430A400508"
theorem cover_1523085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523085 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1523085)
  decide +kernel
#print axioms cover_1523085

def state_1523140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 17 else 21)))
def hex_1523140 : String := "44414308400A080841430A400A4244080A0A430A400A4244080A0A"
theorem cover_1523140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523140 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1523140)
  decide +kernel
#print axioms cover_1523140

def state_1523167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 17 else 21)))
def hex_1523167 : String := "4244084143084042080808084408410808"
theorem cover_1523167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523167 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1523167)
  decide +kernel
#print axioms cover_1523167

def state_1523184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 10)))
def hex_1523184 : String := "4244084143084042090808084408410808"
theorem cover_1523184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523184 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1523184)
  decide +kernel
#print axioms cover_1523184

def state_1523203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 10)))
def hex_1523203 : String := "444143400742070807074143404209444106070609094340420744074143400742074407090707420744074109434007080707"
theorem cover_1523203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523203 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_1523203)
  decide +kernel
#print axioms cover_1523203

def state_1523255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 9 else 20)))
def hex_1523255 : String := "414340424143440706060741434408064406064308440740060808404207410607420941094308074340070807"
theorem cover_1523255 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523255 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1523255)
  decide +kernel
#print axioms cover_1523255
end Mub6.Numerical.CircleFullD0.Forest
