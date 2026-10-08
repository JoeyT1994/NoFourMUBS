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
def state_2334846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 63 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 33)))
def hex_2334846 : String := "41424344400741070A07070742430A05430607"
theorem cover_2334846 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334846 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2334846)
  decide +kernel
#print axioms cover_2334846

def state_2334865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 16)))
def hex_2334865 : String := "400744434107050507"
theorem cover_2334865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334865 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2334865)
  decide +kernel
#print axioms cover_2334865

def state_2334874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 44) else (if j.val < 3 then 45 else (if j.val < 4 then 22 else 16)))
def hex_2334874 : String := "4340064442410706060707"
theorem cover_2334874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334874 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2334874)
  decide +kernel
#print axioms cover_2334874

def state_2334885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 45) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 16)))
def hex_2334885 : String := "42434006444142050605414205060505430640064441070507"
theorem cover_2334885 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334885 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2334885)
  decide +kernel
#print axioms cover_2334885

def state_2334910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 17)))
def hex_2334910 : String := "4142434440070707070742430A0507"
theorem cover_2334910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334910 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_2334910)
  decide +kernel
#print axioms cover_2334910

def state_2334925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 8)))
def hex_2334925 : String := "400744434107050507"
theorem cover_2334925 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334925 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2334925)
  decide +kernel
#print axioms cover_2334925

def state_2334934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 8)))
def hex_2334934 : String := "4340064442410706060707"
theorem cover_2334934 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334934 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2334934)
  decide +kernel
#print axioms cover_2334934

def state_2334945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 8)))
def hex_2334945 : String := "42434006444142050605414205060505430640064441070507"
theorem cover_2334945 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334945 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2334945)
  decide +kernel
#print axioms cover_2334945

def state_2334970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 9)))
def hex_2334970 : String := "410742430A0507"
theorem cover_2334970 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334970 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2334970)
  decide +kernel
#print axioms cover_2334970

def state_2334977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
def hex_2334977 : String := "4142090742430A09434440410706080707"
theorem cover_2334977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334977 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2334977)
  decide +kernel
#print axioms cover_2334977

def state_2334996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_2334996 : String := "424344404405050606440505434407404206070607"
theorem cover_2334996 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334996 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_2334996)
  decide +kernel
#print axioms cover_2334996

def state_2335017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_2335017 : String := "4243440505054344400941420A07420509404142434405050543440707070541420643440606064205434405050544400509400905"
theorem cover_2335017 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2335017 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_2335017)
  decide +kernel
#print axioms cover_2335017
end Mub6.Numerical.CircleFullD0.Forest
