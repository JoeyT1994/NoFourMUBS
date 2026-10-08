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
def state_2286913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 58) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 62)))
def hex_2286913 : String := "4240430A0A09404341440A420A400808084144420A0742430A0643080708430A410708"
theorem cover_2286913 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286913 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_2286913)
  decide +kernel
#print axioms cover_2286913

def state_2286949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 58) else (if j.val < 3 then 94 else (if j.val < 4 then 44 else 63)))
def hex_2286949 : String := "40434144094206400A090A0609"
theorem cover_2286949 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286949 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2286949)
  decide +kernel
#print axioms cover_2286949

def state_2286963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 58) else (if j.val < 3 then 95 else (if j.val < 4 then 44 else 63)))
def hex_2286963 : String := "43414442400A0940430A414408E508430A0AE5440A420A404307050A41444243400606064340414408E508410708400606420643E50644420A084205430505"
theorem cover_2286963 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286963 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_2286963)
  decide +kernel
#print axioms cover_2286963

def state_2287026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 58) else (if j.val < 3 then 95 else (if j.val < 4 then 44 else 63)))
def hex_2287026 : String := "43414409420940E5090A41440942064043090607440942064043080509"
theorem cover_2287026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287026 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_2287026)
  decide +kernel
#print axioms cover_2287026

def state_2287055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 59) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 31)))
def hex_2287055 : String := "440A420A40430A050A"
theorem cover_2287055 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287055 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2287055)
  decide +kernel
#print axioms cover_2287055

def state_2287064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 45 else 31)))
def hex_2287064 : String := "4144420643404107060706420643400606064442060842054340050505"
theorem cover_2287064 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287064 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_2287064)
  decide +kernel
#print axioms cover_2287064

def state_2287093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 22 else 31)))
def hex_2287093 : String := "43410909410909"
theorem cover_2287093 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287093 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_2287093)
  decide +kernel
#print axioms cover_2287093

def state_2287100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 15)))
def hex_2287100 : String := "414407064442060706"
theorem cover_2287100 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287100 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2287100)
  decide +kernel
#print axioms cover_2287100

def state_2287109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 15)))
def hex_2287109 : String := "42094341090907"
theorem cover_2287109 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287109 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2287109)
  decide +kernel
#print axioms cover_2287109

def state_2287116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
def hex_2287116 : String := "444042430A0608420908404209434144420A084240050940430A050A0A41060609"
theorem cover_2287116 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287116 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 33) (hex := hex_2287116)
  decide +kernel
#print axioms cover_2287116

def state_2287155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
def hex_2287155 : String := "4143094006420744050A09"
theorem cover_2287155 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287155 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2287155)
  decide +kernel
#print axioms cover_2287155
end Mub6.Numerical.CircleFullD0.Forest
