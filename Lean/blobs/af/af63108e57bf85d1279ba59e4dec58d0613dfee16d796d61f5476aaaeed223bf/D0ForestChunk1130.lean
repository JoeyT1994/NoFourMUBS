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
def state_1571719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 26)))
def hex_1571719 : String := "414243090A4344400841424309094344400641D04208430806060642084308080944400641060A06420843440808440808"
theorem cover_1571719 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571719 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 49) (hex := hex_1571719)
  decide +kernel
#print axioms cover_1571719

def state_1571770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 46 else (if j.val < 4 then 26 else 26)))
def hex_1571770 : String := "434440090505440A09"
theorem cover_1571770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571770 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1571770)
  decide +kernel
#print axioms cover_1571770

def state_1571782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 52 else 52)))
def hex_1571782 : String := "414243090943444041D0420943090941D042054305050944400A0A09420943444041090805094440414208440A06084142054405050509"
theorem cover_1571782 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571782 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1571782)
  decide +kernel
#print axioms cover_1571782

def state_1571837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 52 else 52)))
def hex_1571837 : String := "414205434405054440410705050505"
theorem cover_1571837 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571837 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1571837)
  decide +kernel
#print axioms cover_1571837

def state_1571852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 52 else 53)))
def hex_1571852 : String := "400909"
theorem cover_1571852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571852 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1571852)
  decide +kernel
#print axioms cover_1571852

def state_1571855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 53 else 26)))
def hex_1571855 : String := "4440410A420A440A0A410A4205440A05400609"
theorem cover_1571855 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571855 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_1571855)
  decide +kernel
#print axioms cover_1571855

def state_1571874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 26)))
def hex_1571874 : String := "42430544050543444041420543054405050505054440414208440A09080509"
theorem cover_1571874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571874 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_1571874)
  decide +kernel
#print axioms cover_1571874

def state_1571905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 27)))
def hex_1571905 : String := "4009410909"
theorem cover_1571905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571905 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1571905)
  decide +kernel
#print axioms cover_1571905

def state_1571910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 13)))
def hex_1571910 : String := "44404106420844080641420A440A06420A44400A0A40060A4006410609"
theorem cover_1571910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571910 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1571910)
  decide +kernel
#print axioms cover_1571910
end Mub6.Numerical.CircleFullD0.Forest
