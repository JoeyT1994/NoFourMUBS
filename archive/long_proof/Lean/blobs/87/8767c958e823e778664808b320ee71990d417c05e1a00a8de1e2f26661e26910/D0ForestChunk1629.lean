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
def state_2264173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 90 else 54)))
def hex_2264173 : String := "4241404408430A420A08440543420A05420A41050840080808"
theorem cover_2264173 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264173 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2264173)
  decide +kernel
#print axioms cover_2264173

def state_2264198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 91 else 54)))
def hex_2264198 : String := "424140440843080844084342414044080A4408430A0A0808424140084408434206080608080808"
theorem cover_2264198 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264198 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 39) (hex := hex_2264198)
  decide +kernel
#print axioms cover_2264198

def state_2264240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 106) else (if j.val < 3 then 88 else (if j.val < 4 then 90 else 55)))
def hex_2264240 : String := "4440430742070943420A410509424140440A07440A0A0A414044050944054305420A050A40074342074144050707424106064144400943050606440906"
theorem cover_2264240 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264240 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2264240)
  decide +kernel
#print axioms cover_2264240

def state_2264301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 107) else (if j.val < 3 then 88 else (if j.val < 4 then 90 else 55)))
def hex_2264301 : String := "440A07"
theorem cover_2264301 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264301 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2264301)
  decide +kernel
#print axioms cover_2264301

def state_2264304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 89 else (if j.val < 4 then 90 else 55)))
def hex_2264304 : String := "4144400943050940094342410509054241090909440809"
theorem cover_2264304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264304 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2264304)
  decide +kernel
#print axioms cover_2264304

def state_2264331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 72 else 106) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 110)))
def hex_2264331 : String := "4342414440070A0607094241060509"
theorem cover_2264331 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264331 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_2264331)
  decide +kernel
#print axioms cover_2264331

def state_2264346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 73 else 106) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 110)))
def hex_2264346 : String := "4342414044430A060644430A0606400606414044090944430509434206090640084408064241060641404408064443080606400606"
theorem cover_2264346 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264346 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_2264346)
  decide +kernel
#print axioms cover_2264346

def state_2264399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 106) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 111)))
def hex_2264399 : String := "40434206414406060606434206414406060606"
theorem cover_2264399 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264399 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_2264399)
  decide +kernel
#print axioms cover_2264399

def state_2264418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 107) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 55)))
def hex_2264418 : String := "444008430A0606"
theorem cover_2264418 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264418 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2264418)
  decide +kernel
#print axioms cover_2264418
end Mub6.Numerical.CircleFullD0.Forest
