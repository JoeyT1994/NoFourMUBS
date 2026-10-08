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
def state_1325896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
def hex_1325896 : String := "44404142444305410509054443414405050A4144400A42050A4008420508440A4008094305094209440A084142054443054041050505050909"
theorem cover_1325896 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325896 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1325896)
  decide +kernel
#print axioms cover_1325896

def state_1325953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_1325953 : String := "430A444041440A080A414442430A400A4105050A424305400809080A40084142090808"
theorem cover_1325953 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325953 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 35) (hex := hex_1325953)
  decide +kernel
#print axioms cover_1325953

def state_1325988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_1325988 : String := "42430A0943440A0A0A"
theorem cover_1325988 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325988 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1325988)
  decide +kernel
#print axioms cover_1325988

def state_1326004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_1326004 : String := "4344074044070A0A07"
theorem cover_1326004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326004 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1326004)
  decide +kernel
#print axioms cover_1326004

def state_1326015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
def hex_1326015 : String := "40420741070708"
theorem cover_1326015 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326015 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1326015)
  decide +kernel
#print axioms cover_1326015

def state_1326024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 5)))
def hex_1326024 : String := "444107074143404407050640070A43400606400507"
theorem cover_1326024 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326024 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_1326024)
  decide +kernel
#print axioms cover_1326024

def state_1326045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 5)))
def hex_1326045 : String := "444143404207060640074207440643060543400606054143404244060506064042050542444306050A44430605064306400506"
theorem cover_1326045 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326045 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_1326045)
  decide +kernel
#print axioms cover_1326045

def state_1326096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
def hex_1326096 : String := "4244410A070A4441084306420706414306420A0606"
theorem cover_1326096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326096 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_1326096)
  decide +kernel
#print axioms cover_1326096

def state_1326117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
def hex_1326117 : String := "44074042074344054140054205050505420A4344410705410A420A06440509"
theorem cover_1326117 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326117 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_1326117)
  decide +kernel
#print axioms cover_1326117
end Mub6.Numerical.CircleFullD0.Forest
