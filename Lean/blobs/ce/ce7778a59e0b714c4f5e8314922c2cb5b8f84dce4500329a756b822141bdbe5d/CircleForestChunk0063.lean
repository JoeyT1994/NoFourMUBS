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
def state_14998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
def hex_14998 : String := "434441064340060540064205064106054441400742430608430608404243440706070742434407070707414406404243070806420506444007420506400705"
theorem cover_14998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_14998 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 63) (hex := hex_14998)
  decide +kernel
#print axioms cover_14998

def state_15063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_15063 : String := "4243070743074440444142070607074441424309080642074306080907"
theorem cover_15063 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15063 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_15063)
  decide +kernel
#print axioms cover_15063

def state_15092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_15092 : String := "424344404107050540410A420A0A410A42050744074041074243060607074344074041074309070744074041070707"
theorem cover_15092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15092 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_15092)
  decide +kernel
#print axioms cover_15092

def state_15141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
def hex_15141 : String := "434442050A0744424440070507444041430A440A4207090A4143054442400A0506424041430544060705050905400741090707"
theorem cover_15141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15141 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 51) (hex := hex_15141)
  decide +kernel
#print axioms cover_15141

def state_15192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_15192 : String := "43094444404109420A0941060A0909"
theorem cover_15192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15192 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_15192)
  decide +kernel
#print axioms cover_15192

def state_15207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_15207 : String := "424344050A074307444144404207430744084109074205430544060A40070A444007050707"
theorem cover_15207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15207 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 37) (hex := hex_15207)
  decide +kernel
#print axioms cover_15207
end Mub6.Numerical.CircleFullPrototype.Forest
