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
def state_1576689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 12 else 12)))
def hex_1576689 : String := "430A4409400A0A"
theorem cover_1576689 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576689 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1576689)
  decide +kernel
#print axioms cover_1576689

def state_1576696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 12)))
def hex_1576696 : String := "424344064007064440410606064041420807074142064306440640070606430A4440090A4007410A07"
theorem cover_1576696 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576696 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_1576696)
  decide +kernel
#print axioms cover_1576696

def state_1576738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 13)))
def hex_1576738 : String := "414243074440074142070707070707"
theorem cover_1576738 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576738 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1576738)
  decide +kernel
#print axioms cover_1576738

def state_1576756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 13)))
def hex_1576756 : String := "4440070A40070A"
theorem cover_1576756 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576756 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1576756)
  decide +kernel
#print axioms cover_1576756

def state_1576765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 26)))
def hex_1576765 : String := "4142434440070A074440074142434440074107070744400741D04243070707064307440706424307440707074006410607430744070642430744070707"
theorem cover_1576765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576765 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 61) (hex := hex_1576765)
  decide +kernel
#print axioms cover_1576765

def state_1576829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 50 else 26)))
def hex_1576829 : String := "44400A0A400A0A"
theorem cover_1576829 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576829 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1576829)
  decide +kernel
#print axioms cover_1576829

def state_1576841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 102 else 52)))
def hex_1576841 : String := "44404142430AD00A0A41424305050A0A4041420907074142050A05"
theorem cover_1576841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576841 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 27) (hex := hex_1576841)
  decide +kernel
#print axioms cover_1576841

def state_1576869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 103 else 104)))
def hex_1576869 : String := "4041D042434440070509444041D00741D00509430744400741D0070741D042430505430A444041D00A054041D00505"
theorem cover_1576869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576869 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_1576869)
  decide +kernel
#print axioms cover_1576869

def state_1576916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 103 else 105)))
def hex_1576916 : String := "4041420906420907414209434408054408064205430509"
theorem cover_1576916 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576916 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_1576916)
  decide +kernel
#print axioms cover_1576916
end Mub6.Numerical.CircleFullD0.Forest
