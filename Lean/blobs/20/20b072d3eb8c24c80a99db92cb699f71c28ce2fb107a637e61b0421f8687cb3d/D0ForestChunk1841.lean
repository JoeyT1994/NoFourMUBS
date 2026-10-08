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
def state_2314991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 21)))
def hex_2314991 : String := "40424406064406064244410543404205050540060541054340440606054006440506444105430540060541054340060506"
theorem cover_2314991 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2314991 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_2314991)
  decide +kernel
#print axioms cover_2314991

def state_2315044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 22)))
def hex_2315044 : String := "4243404441054342400A050542060641074307420606440507400644410543420605064106434240060706064307400607"
theorem cover_2315044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315044 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2315044)
  decide +kernel
#print axioms cover_2315044

def state_2315097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 44)))
def hex_2315097 : String := "4341424044090A44054342090542410509090A0941424044060644434209050643424106080A060A4240090909"
theorem cover_2315097 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315097 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_2315097)
  decide +kernel
#print axioms cover_2315097

def state_2315142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 45)))
def hex_2315142 : String := "43414244400A4342410708074208074008430707074244090844090841424440064308080808420808"
theorem cover_2315142 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315142 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_2315142)
  decide +kernel
#print axioms cover_2315142

def state_2315185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 56 else 44)))
def hex_2315185 : String := "41424044050505054240094405430509400905"
theorem cover_2315185 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315185 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_2315185)
  decide +kernel
#print axioms cover_2315185

def state_2315205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 20 else (if j.val < 4 then 57 else 44)))
def hex_2315205 : String := "4240444305424105090543424105400905054241064008440508410540064405054405430542050540440543050705"
theorem cover_2315205 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2315205 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_2315205)
  decide +kernel
#print axioms cover_2315205
end Mub6.Numerical.CircleFullD0.Forest
