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
def state_1326392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 10)))
def hex_1326392 : String := "404341074207440740434107424407400707444005074005434107420744074043C805070707070707"
theorem cover_1326392 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326392 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 18) (count := 41) (hex := hex_1326392)
  decide +kernel
#print axioms cover_1326392

def state_1326436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 11)))
def hex_1326436 : String := "44420740434106440706070A0A"
theorem cover_1326436 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326436 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1326436)
  decide +kernel
#print axioms cover_1326436

def state_1326451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 20 else (if j.val < 4 then 8 else 22)))
def hex_1326451 : String := "400907"
theorem cover_1326451 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326451 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1326451)
  decide +kernel
#print axioms cover_1326451

def state_1326456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 23) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 22)))
def hex_1326456 : String := "4144420740064341060A074209064442094009434144420740090709444209400943C8410744074207400507094144074207064442074005070909"
theorem cover_1326456 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326456 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 59) (hex := hex_1326456)
  decide +kernel
#print axioms cover_1326456

def state_1326515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 23) else (if j.val < 3 then 21 else (if j.val < 4 then 17 else 22)))
def hex_1326515 : String := "4144074207064442070542094005430905"
theorem cover_1326515 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326515 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1326515)
  decide +kernel
#print axioms cover_1326515

def state_1326532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 23) else (if j.val < 3 then 21 else (if j.val < 4 then 8 else 22)))
def hex_1326532 : String := "43410A4442074043410A4442074043C80707420A0A410707430A07420A0A410744074207404341070A0707"
theorem cover_1326532 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326532 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 43) (hex := hex_1326532)
  decide +kernel
#print axioms cover_1326532

def state_1326575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 23)))
def hex_1326575 : String := "420A40090A"
theorem cover_1326575 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326575 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1326575)
  decide +kernel
#print axioms cover_1326575

def state_1326580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 9 else 11)))
def hex_1326580 : String := "4144070A444207400507420740430505430A07"
theorem cover_1326580 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326580 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_1326580)
  decide +kernel
#print axioms cover_1326580

def state_1326599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 11)))
def hex_1326599 : String := "43410A44420740430A07070A410707"
theorem cover_1326599 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326599 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1326599)
  decide +kernel
#print axioms cover_1326599

def state_1326618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 10)))
def hex_1326618 : String := "424407404308050808"
theorem cover_1326618 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326618 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1326618)
  decide +kernel
#print axioms cover_1326618

def state_1326629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 20)))
def hex_1326629 : String := "400507"
theorem cover_1326629 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326629 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1326629)
  decide +kernel
#print axioms cover_1326629
end Mub6.Numerical.CircleFullD0.Forest
