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
def state_1632882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 50 else 36)))
def hex_1632882 : String := "42434140440842080844084207084044420909420A0A4409420709410809434140420808420808404244060A064209440643410906064108400609"
theorem cover_1632882 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632882 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1632882)
  decide +kernel
#print axioms cover_1632882

def state_1632941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 50 else 36)))
def hex_1632941 : String := "42094341090909"
theorem cover_1632941 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632941 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1632941)
  decide +kernel
#print axioms cover_1632941

def state_1632950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 54 else (if j.val < 4 then 50 else 37)))
def hex_1632950 : String := "43414440420808420743410844080508400A420643050A44400A4205430509400A05414408400707440A0A"
theorem cover_1632950 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632950 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1632950)
  decide +kernel
#print axioms cover_1632950

def state_1632995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 102) else (if j.val < 3 then 55 else (if j.val < 4 then 100 else 37)))
def hex_1632995 : String := "44404208084243410844084008050843410844084208080840420A0A4243414408080541080A4341440808440A0541080A"
theorem cover_1632995 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632995 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_1632995)
  decide +kernel
#print axioms cover_1632995

def state_1633044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 103) else (if j.val < 3 then 55 else (if j.val < 4 then 100 else 37)))
def hex_1633044 : String := "44400A42434105050A434144420A060A05410A06400A420A43050A"
theorem cover_1633044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633044 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1633044)
  decide +kernel
#print axioms cover_1633044

def state_1633071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 55 else (if j.val < 4 then 101 else 37)))
def hex_1633071 : String := "414440080840084208084440064209060A"
theorem cover_1633071 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633071 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1633071)
  decide +kernel
#print axioms cover_1633071
end Mub6.Numerical.CircleFullD0.Forest
