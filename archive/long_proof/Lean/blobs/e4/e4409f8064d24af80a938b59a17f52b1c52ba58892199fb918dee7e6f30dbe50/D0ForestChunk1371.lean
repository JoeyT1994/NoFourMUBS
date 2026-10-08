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
def state_1629832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 49 else 17)))
def hex_1629832 : String := "404443410A0A0A0A4443414207404443414207090A070A44094305054207400A0541070743414205400A0542050507"
theorem cover_1629832 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629832 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 47) (hex := hex_1629832)
  decide +kernel
#print axioms cover_1629832

def state_1629880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 49 else 17)))
def hex_1629880 : String := "444341420A060606430A0A"
theorem cover_1629880 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629880 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1629880)
  decide +kernel
#print axioms cover_1629880

def state_1629892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 49 else 34)))
def hex_1629892 : String := "43414240444341420906060643410A0A0A44094305094006440943414205090509424006440905064142400A090606"
theorem cover_1629892 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629892 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1629892)
  decide +kernel
#print axioms cover_1629892

def state_1629939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 49 else 35)))
def hex_1629939 : String := "434142400A444305050540440A0A444305414205400605050542400A0540060541420A400A44090A420A0A"
theorem cover_1629939 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629939 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1629939)
  decide +kernel
#print axioms cover_1629939

def state_1629982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 26 else (if j.val < 4 then 49 else 17)))
def hex_1629982 : String := "42400A44434207414006050607430A07400644064341420506060A"
theorem cover_1629982 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629982 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1629982)
  decide +kernel
#print axioms cover_1629982

def state_1630010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 8)))
def hex_1630010 : String := "06"
theorem cover_1630010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630010 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1630010)
  decide +kernel
#print axioms cover_1630010

def state_1630012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 16)))
def hex_1630012 : String := "43414006424406430706060606"
theorem cover_1630012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630012 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1630012)
  decide +kernel
#print axioms cover_1630012

def state_1630026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 17)))
def hex_1630026 : String := "4140424406430706064244430741400642440643054107050606434107054140424443070643054105050642050740060507400642440643050606"
theorem cover_1630026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630026 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_1630026)
  decide +kernel
#print axioms cover_1630026
end Mub6.Numerical.CircleFullD0.Forest
