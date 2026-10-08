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
def state_997892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 21)))
def hex_997892 : String := "4041084442084340410944424309080942080941084408080842084340440808080808"
theorem cover_997892 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997892 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 35) (hex := hex_997892)
  decide +kernel
#print axioms cover_997892

def state_997927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 21)))
def hex_997927 : String := "4041444209094208064442434041094405090A4009410844080843060942434044090606084306094106440A06"
theorem cover_997927 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997927 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_997927)
  decide +kernel
#print axioms cover_997927

def state_997974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 20)))
def hex_997974 : String := "4240434207054207050705"
theorem cover_997974 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997974 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_997974)
  decide +kernel
#print axioms cover_997974

def state_997989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 42)))
def hex_997989 : String := "4241404344054241404305050A050544420705424140434405410A054407414207050707074105054344050A440742070A07410505"
theorem cover_997989 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997989 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 53) (hex := hex_997989)
  decide +kernel
#print axioms cover_997989

def state_998046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 104 else 43)))
def hex_998046 : String := "4442414043064441060506064043054405C6430A44050A41060542410640C60606"
theorem cover_998046 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998046 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_998046)
  decide +kernel
#print axioms cover_998046

def state_998083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 108) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 86)))
def hex_998083 : String := "434441424043060A060642404305070705C6444142084009064207400507410842404443C60708084044430541080543060806"
theorem cover_998083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998083 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_998083)
  decide +kernel
#print axioms cover_998083

def state_998134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 108) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 86)))
def hex_998134 : String := "43440606444106074106420706"
theorem cover_998134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998134 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_998134)
  decide +kernel
#print axioms cover_998134
end Mub6.Numerical.CircleFullD0.Forest
