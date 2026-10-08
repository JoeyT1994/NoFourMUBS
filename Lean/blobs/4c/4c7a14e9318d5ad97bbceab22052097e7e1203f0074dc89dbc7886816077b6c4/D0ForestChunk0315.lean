import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1013012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 10)))
def hex_1013012 : String := "4407414243070643404407414243400A070643400544054142070505400A074206430507074044064142064340060706060707"
theorem cover_1013012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013012 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 51) (hex := hex_1013012)
  decide +kernel
#print axioms cover_1013012

def state_1013063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 10)))
def hex_1013063 : String := "40064406414206434006060606"
theorem cover_1013063 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013063 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1013063)
  decide +kernel
#print axioms cover_1013063

def state_1013076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 10)))
def hex_1013076 : String := "42064340060706"
theorem cover_1013076 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013076 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1013076)
  decide +kernel
#print axioms cover_1013076

def state_1013085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 7 else 11)))
def hex_1013085 : String := "43400A444108060805"
theorem cover_1013085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013085 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1013085)
  decide +kernel
#print axioms cover_1013085

def state_1013096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
def hex_1013096 : String := "0A"
theorem cover_1013096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013096 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1013096)
  decide +kernel
#print axioms cover_1013096

def state_1013100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 22)))
def hex_1013100 : String := "43400A44070808"
theorem cover_1013100 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013100 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1013100)
  decide +kernel
#print axioms cover_1013100

def state_1013109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 22)))
def hex_1013109 : String := "4441420A43400A44414243050A0542070541420A43050A0A0A0A0A"
theorem cover_1013109 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013109 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 27) (hex := hex_1013109)
  decide +kernel
#print axioms cover_1013109

def state_1013137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 44)))
def hex_1013137 : String := "414243404407080707434044414207430507074142084305064207430505440741060740440708074207430707"
theorem cover_1013137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013137 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1013137)
  decide +kernel
#print axioms cover_1013137

def state_1013182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 45)))
def hex_1013182 : String := "414208434044410842084305060806084243400A070843404441420A0A090A4407410609400A08"
theorem cover_1013182 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013182 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1013182)
  decide +kernel
#print axioms cover_1013182

def state_1013221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 22)))
def hex_1013221 : String := "400A4441080708"
theorem cover_1013221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013221 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1013221)
  decide +kernel
#print axioms cover_1013221

def state_1013228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 22)))
def hex_1013228 : String := "420A43400A440742074309070A"
theorem cover_1013228 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013228 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1013228)
  decide +kernel
#print axioms cover_1013228

def state_1013241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 23)))
def hex_1013241 : String := "41420843400A444108420843400A080808080A"
theorem cover_1013241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013241 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_1013241)
  decide +kernel
#print axioms cover_1013241

def state_1013260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 11)))
def hex_1013260 : String := "400A4441420543400A08050A08"
theorem cover_1013260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013260 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1013260)
  decide +kernel
#print axioms cover_1013260
end Mub6.Numerical.CircleFullD0.Forest
