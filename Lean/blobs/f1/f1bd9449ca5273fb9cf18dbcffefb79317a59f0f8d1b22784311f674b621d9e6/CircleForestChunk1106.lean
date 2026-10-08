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
def state_1565783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 45)))
def hex_1565783 : String := "414008444305080840444342080808084443424140080A40440A080A4105404443080808440A050A43424107444008070707420808"
theorem cover_1565783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565783 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1565783)
  decide +kernel
#print axioms cover_1565783

def state_1565836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 55 else (if j.val < 4 then 43 else 45)))
def hex_1565836 : String := "4105404443080808444305420A0505"
theorem cover_1565836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565836 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1565836)
  decide +kernel
#print axioms cover_1565836

def state_1565851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 30) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 22)))
def hex_1565851 : String := "444342410540440643054206050605424140440A0A0A40440A43420A0A0A44060A410540440A43050A0643420705424105444043420A050A0A404307090705"
theorem cover_1565851 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565851 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1565851)
  decide +kernel
#print axioms cover_1565851

def state_1565917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 42 else 44)))
def hex_1565917 : String := "42414044094309424140094409430942414008440608050909094406430642060640090609"
theorem cover_1565917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565917 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 37) (hex := hex_1565917)
  decide +kernel
#print axioms cover_1565917

def state_1565957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 62) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 44)))
def hex_1565957 : String := "44434205090743424140440508444342050905434205080A0541400944094309080942054140070A05"
theorem cover_1565957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565957 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1565957)
  decide +kernel
#print axioms cover_1565957

def state_1565998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 62) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 44)))
def hex_1565998 : String := "444342060642050743424140440A43420A060A0A4005064140440643060A0606420A0A"
theorem cover_1565998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565998 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1565998)
  decide +kernel
#print axioms cover_1565998

def state_1566033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 63) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 44)))
def hex_1566033 : String := "40054405430605"
theorem cover_1566033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566033 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1566033)
  decide +kernel
#print axioms cover_1566033
end Mub6.Numerical.CircleFullD0.Forest
