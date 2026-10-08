import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_20125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 21)))
def hex_20125 : String := "404107424440410743074206074107430742444041074307060707070707410742444041074307420507070707"
theorem cover_20125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20125 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 45) (hex := hex_20125)
  decide +kernel
#print axioms cover_20125

def state_20173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 28) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 20)))
def hex_20173 : String := "4243404106440906410544090540060543400A090A"
theorem cover_20173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20173 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_20173)
  decide +kernel
#print axioms cover_20173

def state_20197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 29) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 20)))
def hex_20197 : String := "4144424309060A06444243400A440741090A0A0A42060A"
theorem cover_20197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20197 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_20197)
  decide +kernel
#print axioms cover_20197

def state_20220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 29) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 20)))
def hex_20220 : String := "4144094205434041050A050A4442430909430909424340414442050905444243400605050A0641054405054006054340410A0A41440905440942430505070A"
theorem cover_20220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20220 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_20220)
  decide +kernel
#print axioms cover_20220

def state_20283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 29) else (if j.val < 3 then 30 else (if j.val < 4 then 43 else 20)))
def hex_20283 : String := "4041060A41440905440A42050A"
theorem cover_20283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20283 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_20283)
  decide +kernel
#print axioms cover_20283

def state_20296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 29) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 20)))
def hex_20296 : String := "43400A41440907440A0A0A"
theorem cover_20296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20296 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_20296)
  decide +kernel
#print axioms cover_20296

def state_20307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 20)))
def hex_20307 : String := "4142050942434041440905440942054340410544090505404105440505054105440905404105440805054340410944094243070907094041090A09"
theorem cover_20307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20307 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_20307)
  decide +kernel
#print axioms cover_20307
end Mub6.Numerical.CircleFullPrototype.Forest
