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
def state_1009723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 11)))
def hex_1009723 : String := "44414240080A0608410A08"
theorem cover_1009723 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009723 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1009723)
  decide +kernel
#print axioms cover_1009723

def state_1009739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 22)))
def hex_1009739 : String := "440841424008060608"
theorem cover_1009739 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009739 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1009739)
  decide +kernel
#print axioms cover_1009739

def state_1009748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 22)))
def hex_1009748 : String := "4441424008430809080841424044430841424008090808430841424044430707070606424008090844430641060943064106094008064240080908"
theorem cover_1009748 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009748 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_1009748)
  decide +kernel
#print axioms cover_1009748

def state_1009807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 22)))
def hex_1009807 : String := "430A444142090609410609"
theorem cover_1009807 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009807 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1009807)
  decide +kernel
#print axioms cover_1009807

def state_1009818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 22)))
def hex_1009818 : String := "400806"
theorem cover_1009818 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009818 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1009818)
  decide +kernel
#print axioms cover_1009818

def state_1009821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 22)))
def hex_1009821 : String := "4240080908"
theorem cover_1009821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009821 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1009821)
  decide +kernel
#print axioms cover_1009821

def state_1009831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 46)))
def hex_1009831 : String := "410608"
theorem cover_1009831 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009831 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1009831)
  decide +kernel
#print axioms cover_1009831

def state_1009835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 46)))
def hex_1009835 : String := "42404443074107424007444308090707070606"
theorem cover_1009835 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009835 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_1009835)
  decide +kernel
#print axioms cover_1009835

def state_1009854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 46)))
def hex_1009854 : String := "4240444308414240080908084308414244400743070907074244084008090844430809434106084142404409430606060609400806"
theorem cover_1009854 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009854 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_1009854)
  decide +kernel
#print axioms cover_1009854

def state_1009907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 47)))
def hex_1009907 : String := "434106424440070607064107424440430741074244400743070707074341064244094007050641064244094043050505064007430741064205064440070607"
theorem cover_1009907 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009907 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_1009907)
  decide +kernel
#print axioms cover_1009907

def state_1009970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 23)))
def hex_1009970 : String := "44430641064240440906060606"
theorem cover_1009970 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009970 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1009970)
  decide +kernel
#print axioms cover_1009970

def state_1009983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 23)))
def hex_1009983 : String := "06"
theorem cover_1009983 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009983 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1009983)
  decide +kernel
#print axioms cover_1009983
end Mub6.Numerical.CircleFullD0.Forest
