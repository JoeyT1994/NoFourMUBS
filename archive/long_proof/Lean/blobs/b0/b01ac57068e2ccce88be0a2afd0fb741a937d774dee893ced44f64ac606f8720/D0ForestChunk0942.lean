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
def state_1526632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 116) else (if j.val < 3 then 180 else (if j.val < 4 then 67 else 176)))
def hex_1526632 : String := "414340420944060609094340424441434042050508090541090544410A0A410A054244080944084109434042050A080940424405054441060505420909"
theorem cover_1526632 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526632 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1526632)
  decide +kernel
#print axioms cover_1526632

def state_1526693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 116) else (if j.val < 3 then 180 else (if j.val < 4 then 67 else 177)))
def hex_1526693 : String := "4109434042440505444109050542094409074042050509"
theorem cover_1526693 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526693 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1526693)
  decide +kernel
#print axioms cover_1526693

def state_1526716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 116) else (if j.val < 3 then 181 else (if j.val < 4 then 67 else 88)))
def hex_1526716 : String := "444143400A424408070740060943400A424408410A0A0A4042440A0A0A424441080809440A0A4143070943400A0740424405050A420907"
theorem cover_1526716 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526716 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 55) (hex := hex_1526716)
  decide +kernel
#print axioms cover_1526716

def state_1526773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 117) else (if j.val < 3 then 90 else (if j.val < 4 then 66 else 88)))
def hex_1526773 : String := "4244410A0541430A05050A"
theorem cover_1526773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526773 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1526773)
  decide +kernel
#print axioms cover_1526773

def state_1526785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 117) else (if j.val < 3 then 180 else (if j.val < 4 then 66 else 88)))
def hex_1526785 : String := "444143404244080A0A0640424405050A42440841080544084108064306400506414340424405050A4206064042050542440505444143060505410705430605"
theorem cover_1526785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526785 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1526785)
  decide +kernel
#print axioms cover_1526785

def state_1526848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 117) else (if j.val < 3 then 181 else (if j.val < 4 then 66 else 88)))
def hex_1526848 : String := "44410A0A410A0A"
theorem cover_1526848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526848 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1526848)
  decide +kernel
#print axioms cover_1526848

def state_1526856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 117) else (if j.val < 3 then 90 else (if j.val < 4 then 67 else 88)))
def hex_1526856 : String := "42440505440A05"
theorem cover_1526856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526856 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1526856)
  decide +kernel
#print axioms cover_1526856
end Mub6.Numerical.CircleFullD0.Forest
