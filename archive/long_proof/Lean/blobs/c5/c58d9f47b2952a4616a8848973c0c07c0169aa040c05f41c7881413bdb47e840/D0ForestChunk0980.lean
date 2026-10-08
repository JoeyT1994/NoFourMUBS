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
def state_1535651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 36)))
def hex_1535651 : String := "4140424309440741400605070942434441050905444140420707424341050707434105090A0741054007420709430944414009420A050941050909"
theorem cover_1535651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535651 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_1535651)
  decide +kernel
#print axioms cover_1535651

def state_1535710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 37)))
def hex_1535710 : String := "414042430544410507050542050509"
theorem cover_1535710 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535710 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1535710)
  decide +kernel
#print axioms cover_1535710

def state_1535725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 53 else (if j.val < 4 then 19 else 18)))
def hex_1535725 : String := "09"
theorem cover_1535725 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535725 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1535725)
  decide +kernel
#print axioms cover_1535725

def state_1535728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 18)))
def hex_1535728 : String := "4441050605"
theorem cover_1535728 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535728 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1535728)
  decide +kernel
#print axioms cover_1535728

def state_1535737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 54) else (if j.val < 3 then 104 else (if j.val < 4 then 39 else 36)))
def hex_1535737 : String := "43444105060544414042434105080A0A4243080A0A404207430607064105404243440805074305440705420843050A"
theorem cover_1535737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535737 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_1535737)
  decide +kernel
#print axioms cover_1535737

def state_1535784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 54) else (if j.val < 3 then 105 else (if j.val < 4 then 39 else 36)))
def hex_1535784 : String := "4344410506054441400A0A064105400906"
theorem cover_1535784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535784 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1535784)
  decide +kernel
#print axioms cover_1535784

def state_1535801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 54) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 36)))
def hex_1535801 : String := "424308440841050843064406410506"
theorem cover_1535801 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535801 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1535801)
  decide +kernel
#print axioms cover_1535801

def state_1535816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 55) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 36)))
def hex_1535816 : String := "404243064108060606"
theorem cover_1535816 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535816 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1535816)
  decide +kernel
#print axioms cover_1535816

def state_1535825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 37)))
def hex_1535825 : String := "414005054042434408054441404207090807410540090843094409094208430506"
theorem cover_1535825 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535825 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1535825)
  decide +kernel
#print axioms cover_1535825

def state_1535858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 53 else (if j.val < 4 then 19 else 18)))
def hex_1535858 : String := "434406054441404243054406050506064105400906"
theorem cover_1535858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535858 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1535858)
  decide +kernel
#print axioms cover_1535858

def state_1535879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 19)))
def hex_1535879 : String := "40424305444105400942440905050505424305444105050505"
theorem cover_1535879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1535879 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1535879)
  decide +kernel
#print axioms cover_1535879
end Mub6.Numerical.CircleFullD0.Forest
