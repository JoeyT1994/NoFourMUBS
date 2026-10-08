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
def state_1604058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 119 else 100)))
def hex_1604058 : String := "444240434109444208094208074144094240070907089F4043094105099F4240434144420707074407074107079F4043410707079F"
theorem cover_1604058 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604058 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_1604058)
  decide +kernel
#print axioms cover_1604058

def state_1604111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 83) else (if j.val < 3 then 104 else (if j.val < 4 then 119 else 100)))
def hex_1604111 : String := "444240089F404143444207070707089F4240089F40079F"
theorem cover_1604111 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604111 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1604111)
  decide +kernel
#print axioms cover_1604111

def state_1604134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 105 else (if j.val < 4 then 59 else 100)))
def hex_1604134 : String := "434144094009429F0844404241090709429F0A40420707429F0A41444005094006429F0944404241070707429F410943440707074007429F410707"
theorem cover_1604134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604134 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1604134)
  decide +kernel
#print axioms cover_1604134

def state_1604193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 100)))
def hex_1604193 : String := "429F43414408084440429F0A0A40429F0A0A414440429F080840429F08084440429F410A0A429F0A40429F410A430A440A07429F0A"
theorem cover_1604193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604193 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_1604193)
  decide +kernel
#print axioms cover_1604193

def state_1604248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 59 else 101)))
def hex_1604248 : String := "4341444240434107054107050540079F420540070544420540070505414442404307079F40079F4240070507444240070540079F420507"
theorem cover_1604248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604248 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 55) (hex := hex_1604248)
  decide +kernel
#print axioms cover_1604248
end Mub6.Numerical.CircleFullD0.Forest
