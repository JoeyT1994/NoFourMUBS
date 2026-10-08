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
def state_1498916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 15)))
def hex_1498916 : String := "410A424443404105080840410A42440805054108080508"
theorem cover_1498916 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498916 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_1498916)
  decide +kernel
#print axioms cover_1498916

def state_1498940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 15)))
def hex_1498940 : String := "42444043094105420605060505"
theorem cover_1498940 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498940 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1498940)
  decide +kernel
#print axioms cover_1498940

def state_1498957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 30)))
def hex_1498957 : String := "41420905424440434109424408050841420944404305090805424440434109084109420908090944080543080940430541050506444043054105080805"
theorem cover_1498957 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498957 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 61) (hex := hex_1498957)
  decide +kernel
#print axioms cover_1498957

def state_1499019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 30)))
def hex_1499019 : String := "42444043090606064440430A41054244400A09050543090905"
theorem cover_1499019 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499019 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1499019)
  decide +kernel
#print axioms cover_1499019

def state_1499049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 40 else (if j.val < 4 then 102 else 60)))
def hex_1499049 : String := "4209444043094109090909"
theorem cover_1499049 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499049 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1499049)
  decide +kernel
#print axioms cover_1499049

def state_1499061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 80 else (if j.val < 4 then 102 else 60)))
def hex_1499061 : String := "444043410942094440430841070708094109420744400709400706094043090606"
theorem cover_1499061 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499061 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 33) (hex := hex_1499061)
  decide +kernel
#print axioms cover_1499061

def state_1499097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 204 else 120)))
def hex_1499097 : String := "4142090842440840050808"
theorem cover_1499097 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499097 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1499097)
  decide +kernel
#print axioms cover_1499097

def state_1499108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 205 else 120)))
def hex_1499108 : String := "414244404309090909444043084108080840050942444043410808414207080A43084108084043410942070541070709440840430541050508"
theorem cover_1499108 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499108 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_1499108)
  decide +kernel
#print axioms cover_1499108

def state_1499165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 102 else 120)))
def hex_1499165 : String := "43084109420908"
theorem cover_1499165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499165 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1499165)
  decide +kernel
#print axioms cover_1499165
end Mub6.Numerical.CircleFullD0.Forest
