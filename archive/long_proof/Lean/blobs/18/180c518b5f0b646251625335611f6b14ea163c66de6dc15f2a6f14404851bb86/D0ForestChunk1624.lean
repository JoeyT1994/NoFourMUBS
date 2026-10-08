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
def state_2262961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 92 else 55)))
def hex_2262961 : String := "4440434241BE0509420508434241BE0541440809084205414408060540434205090543420541060505"
theorem cover_2262961 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2262961 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 41) (hex := hex_2262961)
  decide +kernel
#print axioms cover_2262961

def state_2263002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 89 else (if j.val < 4 then 92 else 55)))
def hex_2263002 : String := "414440094342410709070740430942410909094342410A440909090A44094009430909"
theorem cover_2263002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263002 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_2263002)
  decide +kernel
#print axioms cover_2263002

def state_2263037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 93 else 55)))
def hex_2263037 : String := "42414440434205410A050543424107050A0A4005060541444043080707400A0A440840084342050805"
theorem cover_2263037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263037 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_2263037)
  decide +kernel
#print axioms cover_2263037

def state_2263078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 27)))
def hex_2263078 : String := "44084043420508054342414440054308050505410908420508"
theorem cover_2263078 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263078 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_2263078)
  decide +kernel
#print axioms cover_2263078

def state_2263103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 45 else (if j.val < 4 then 46 else 27)))
def hex_2263103 : String := "41440840094342410908084241440707080808"
theorem cover_2263103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263103 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_2263103)
  decide +kernel
#print axioms cover_2263103

def state_2263122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 47 else 27)))
def hex_2263122 : String := "42414440084342414407400507050808404342050805434205410A050544080508"
theorem cover_2263122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263122 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 33) (hex := hex_2263122)
  decide +kernel
#print axioms cover_2263122

def state_2263155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 13)))
def hex_2263155 : String := "08"
theorem cover_2263155 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263155 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2263155)
  decide +kernel
#print axioms cover_2263155

def state_2263156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 13)))
def hex_2263156 : String := "43414405090808"
theorem cover_2263156 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263156 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2263156)
  decide +kernel
#print axioms cover_2263156

def state_2263167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 26)))
def hex_2263167 : String := "40424305414405404305424105080505440840084305080542430541054405404305070505"
theorem cover_2263167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263167 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_2263167)
  decide +kernel
#print axioms cover_2263167
end Mub6.Numerical.CircleFullD0.Forest
