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
def state_1466116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 10)))
def hex_1466116 : String := "41440842084340414408430A42080A0808404144084208434041440543420807420840070A070840414405420843404144054307E607410508E60808080808"
theorem cover_1466116 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466116 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 19) (count := 63) (hex := hex_1466116)
  decide +kernel
#print axioms cover_1466116

def state_1466179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 10)))
def hex_1466179 : String := "08"
theorem cover_1466179 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466179 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1466179)
  decide +kernel
#print axioms cover_1466179

def state_1466181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 11)))
def hex_1466181 : String := "434006410906404144420643060806064144080708"
theorem cover_1466181 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466181 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1466181)
  decide +kernel
#print axioms cover_1466181

def state_1466203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 11)))
def hex_1466203 : String := "404144430642060906064109440806"
theorem cover_1466203 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466203 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1466203)
  decide +kernel
#print axioms cover_1466203

def state_1466222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 30 else (if j.val < 4 then 15 else 22)))
def hex_1466222 : String := "434006064041444206430640060806064144080708"
theorem cover_1466222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466222 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1466222)
  decide +kernel
#print axioms cover_1466222

def state_1466244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 30 else 22)))
def hex_1466244 : String := "4041444306420640060906064109440806"
theorem cover_1466244 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466244 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1466244)
  decide +kernel
#print axioms cover_1466244

def state_1466265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 62 else (if j.val < 4 then 31 else 44)))
def hex_1466265 : String := "4340064109064041444206430640060806064144080708"
theorem cover_1466265 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466265 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1466265)
  decide +kernel
#print axioms cover_1466265

def state_1466289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 63 else (if j.val < 4 then 62 else 44)))
def hex_1466289 : String := "4041444306420640060906064109440806"
theorem cover_1466289 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466289 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1466289)
  decide +kernel
#print axioms cover_1466289

def state_1466307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 44) else (if j.val < 3 then 63 else (if j.val < 4 then 63 else 44)))
def hex_1466307 : String := "4144424340064109064041444243060AE60606414408420709084340414443420607E6060641094443080806E642430606430644E605444208430641E60505"
theorem cover_1466307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1466307 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1466307)
  decide +kernel
#print axioms cover_1466307
end Mub6.Numerical.CircleFullD0.Forest
