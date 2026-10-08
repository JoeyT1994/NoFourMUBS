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
def state_287555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 9)))
def hex_287555 : String := "42410808414043440808080840434442410840430A080841400508404305440505430A084208410A090808"
theorem cover_287555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287555 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 43) (hex := hex_287555)
  decide +kernel
#print axioms cover_287555

def state_287598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 4)))
def hex_287598 : String := "08"
theorem cover_287598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287598 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_287598)
  decide +kernel
#print axioms cover_287598

def state_287599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 4)))
def hex_287599 : String := "08"
theorem cover_287599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287599 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_287599)
  decide +kernel
#print axioms cover_287599

def state_287601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 4)))
def hex_287601 : String := "404344054108050505"
theorem cover_287601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287601 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_287601)
  decide +kernel
#print axioms cover_287601

def state_287615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 14 else 8)))
def hex_287615 : String := "4043440941420540430A0808420540060544050809"
theorem cover_287615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287615 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_287615)
  decide +kernel
#print axioms cover_287615

def state_287639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 28 else 16)))
def hex_287639 : String := "4241094043094407070941404344074207050706404344094209414005094008094407420741070A09"
theorem cover_287639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287639 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_287639)
  decide +kernel
#print axioms cover_287639

def state_287681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 46 else (if j.val < 4 then 28 else 17)))
def hex_287681 : String := "41404344420941074043090709420A410A0A440742084107434006070743090840434442094140430944070609090644420541070506430944054205410805"
theorem cover_287681 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287681 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_287681)
  decide +kernel
#print axioms cover_287681

def state_287745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 44) else (if j.val < 3 then 47 else (if j.val < 4 then 28 else 17)))
def hex_287745 : String := "4043444241054005090542410540054305444207050A0544074241074340074407070741054305074344094241080A4105400506440808"
theorem cover_287745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287745 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_287745)
  decide +kernel
#print axioms cover_287745
end Mub6.Numerical.CircleFullPrototype.Forest
