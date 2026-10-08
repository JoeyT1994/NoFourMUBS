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
def state_1567269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 42 else 46)))
def hex_1567269 : String := "42410744060707"
theorem cover_1567269 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567269 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1567269)
  decide +kernel
#print axioms cover_1567269

def state_1567277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 46)))
def hex_1567277 : String := "41444043070907074440434241444043060906070641070642094144400A060944064043060506430609404307420941074440430705070707"
theorem cover_1567277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567277 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1567277)
  decide +kernel
#print axioms cover_1567277

def state_1567334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 55 else (if j.val < 4 then 43 else 46)))
def hex_1567334 : String := "4107444043064241444043060A0607064107060607"
theorem cover_1567334 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567334 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 21) (hex := hex_1567334)
  decide +kernel
#print axioms cover_1567334

def state_1567355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 47)))
def hex_1567355 : String := "40430742410844400843070808410744400807074307420707"
theorem cover_1567355 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567355 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1567355)
  decide +kernel
#print axioms cover_1567355

def state_1567383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 10)))
def hex_1567383 : String := "4342444140060A074106400643420644070606444108074108400843440A080842440706440708"
theorem cover_1567383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567383 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1567383)
  decide +kernel
#print axioms cover_1567383

def state_1567422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 10)))
def hex_1567422 : String := "43424441094007094109404342090A090944410A400A0A410A4043440A0A0A0A4209440A0A"
theorem cover_1567422 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567422 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1567422)
  decide +kernel
#print axioms cover_1567422

def state_1567459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 10)))
def hex_1567459 : String := "40434207440741400743440742070707070743424405414043420507050A0544074140434407420A0A0743440A0A0A400743440642070607420707"
theorem cover_1567459 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567459 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1567459)
  decide +kernel
#print axioms cover_1567459
end Mub6.Numerical.CircleFullD0.Forest
