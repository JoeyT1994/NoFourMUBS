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
def state_60977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 17)))
def hex_60977 : String := "40410942084408434009410908084142060A420844084340410A080A08"
theorem cover_60977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60977 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_60977)
  decide +kernel
#print axioms cover_60977

def state_61006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 8)))
def hex_61006 : String := "420809"
theorem cover_61006 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61006 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_61006)
  decide +kernel
#print axioms cover_61006

def state_61012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 9)))
def hex_61012 : String := "41054443420A41050A42410508410540050805"
theorem cover_61012 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61012 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_61012)
  decide +kernel
#print axioms cover_61012

def state_61032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 9)))
def hex_61032 : String := "444342064005060605"
theorem cover_61032 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61032 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_61032)
  decide +kernel
#print axioms cover_61032

def state_61042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 18)))
def hex_61042 : String := "43424041060A06404144434240050640054105440605060544430A084309420A400541050941440606444342064041060806060942064041060806"
theorem cover_61042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61042 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_61042)
  decide +kernel
#print axioms cover_61042

def state_61101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 19)))
def hex_61101 : String := "43420940050906"
theorem cover_61101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61101 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_61101)
  decide +kernel
#print axioms cover_61101

def state_61109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 9)))
def hex_61109 : String := "4105444341400544420505054044070544424341400544420507050A41054007440707070741054007444208070705"
theorem cover_61109 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61109 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 47) (hex := hex_61109)
  decide +kernel
#print axioms cover_61109

def state_61157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 9)))
def hex_61157 : String := "44434041054442050505410844424340410544060506060842060840050A05"
theorem cover_61157 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61157 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_61157)
  decide +kernel
#print axioms cover_61157

def state_61196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 38) else (if j.val < 3 then 54 else (if j.val < 4 then 96 else 36)))
def hex_61196 : String := "410544420543050505"
theorem cover_61196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61196 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_61196)
  decide +kernel
#print axioms cover_61196

def state_61206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 76) else (if j.val < 3 then 54 else (if j.val < 4 then 96 else 36)))
def hex_61206 : String := "44420543050505"
theorem cover_61206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61206 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_61206)
  decide +kernel
#print axioms cover_61206
end Mub6.Numerical.CircleFullPrototype.Forest
