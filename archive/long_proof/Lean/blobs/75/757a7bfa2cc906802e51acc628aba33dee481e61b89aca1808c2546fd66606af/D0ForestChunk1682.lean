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
def state_2276903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 21 else 29)))
def hex_2276903 : String := "43414440070A0707414440420A430A410508420A4305410508400742430A41440A0A0A4341050A4144054042070505440A0A440A40070A"
theorem cover_2276903 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276903 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_2276903)
  decide +kernel
#print axioms cover_2276903

def state_2276958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 21 else 29)))
def hex_2276958 : String := "43414405400505440807414440050540094243054105440540050505440840074243070808"
theorem cover_2276958 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276958 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_2276958)
  decide +kernel
#print axioms cover_2276958

def state_2276995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 14)))
def hex_2276995 : String := "44084243070A430708"
theorem cover_2276995 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276995 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2276995)
  decide +kernel
#print axioms cover_2276995

def state_2277005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 20 else 14)))
def hex_2277005 : String := "4144420A05424041440506070A40060644080A"
theorem cover_2277005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277005 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2277005)
  decide +kernel
#print axioms cover_2277005

def state_2277026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 28)))
def hex_2277026 : String := "424043050A0A400505"
theorem cover_2277026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277026 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2277026)
  decide +kernel
#print axioms cover_2277026

def state_2277035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 29)))
def hex_2277035 : String := "4240434144050A0A4144420A05420A43054041050A050A430A4144054209050A4043410544050641054408420A08430541054405420A05"
theorem cover_2277035 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277035 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_2277035)
  decide +kernel
#print axioms cover_2277035

def state_2277090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 14)))
def hex_2277090 : String := "4408420A400808"
theorem cover_2277090 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277090 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2277090)
  decide +kernel
#print axioms cover_2277090

def state_2277098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 15)))
def hex_2277098 : String := "4007430741444240070940430741444209430A0A42074307080743094109094207400743074108074442070A07"
theorem cover_2277098 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277098 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 45) (hex := hex_2277098)
  decide +kernel
#print axioms cover_2277098

def state_2277145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 20 else 15)))
def hex_2277145 : String := "07"
theorem cover_2277145 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277145 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2277145)
  decide +kernel
#print axioms cover_2277145
end Mub6.Numerical.CircleFullD0.Forest
