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
def state_1559579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 44)))
def hex_1559579 : String := "404442430805090844424341400844424309050942080840054405054140054405080543094108074243410840084442050808084341080908"
theorem cover_1559579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559579 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1559579)
  decide +kernel
#print axioms cover_1559579

def state_1559636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 43 else 44)))
def hex_1559636 : String := "410640064407430806"
theorem cover_1559636 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559636 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1559636)
  decide +kernel
#print axioms cover_1559636

def state_1559645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 45)))
def hex_1559645 : String := "4243410640064442050806064341084008444208080806"
theorem cover_1559645 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559645 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1559645)
  decide +kernel
#print axioms cover_1559645

def state_1559668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 22)))
def hex_1559668 : String := "4044420507420543080544420543414044054205094442050942054309050505420543414044420508084442054309084208080505"
theorem cover_1559668 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559668 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_1559668)
  decide +kernel
#print axioms cover_1559668

def state_1559722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 27 else (if j.val < 4 then 20 else 22)))
def hex_1559722 : String := "41400944094243074108090909"
theorem cover_1559722 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559722 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1559722)
  decide +kernel
#print axioms cover_1559722

def state_1559736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 22)))
def hex_1559736 : String := "404443090808444342414008444309080840094409430942080809424108400844434208080743080841084008440908434241084008444308080808420808"
theorem cover_1559736 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559736 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1559736)
  decide +kernel
#print axioms cover_1559736
end Mub6.Numerical.CircleFullD0.Forest
