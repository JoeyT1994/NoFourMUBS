import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1616654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 97)))
def hex_1616654 : String := "424341440605050943410A444042050A0505410A440940420543050605"
theorem cover_1616654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616654 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1616654)
  decide +kernel
#print axioms cover_1616654

def state_1616684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 48)))
def hex_1616684 : String := "44404243444105054140050509060542090940424341444006420906400642090644400609400609060642090A"
theorem cover_1616684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616684 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1616684)
  decide +kernel
#print axioms cover_1616684

def state_1616729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 48)))
def hex_1616729 : String := "444042090609404243414409400609090606420909"
theorem cover_1616729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616729 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1616729)
  decide +kernel
#print axioms cover_1616729

def state_1616750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
def hex_1616750 : String := "420943410A44074042050A0509"
theorem cover_1616750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616750 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1616750)
  decide +kernel
#print axioms cover_1616750

def state_1616765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 29 else 49)))
def hex_1616765 : String := "4341444042054305414440074205070544400505050505054144404209434144400709074409070909400705440905"
theorem cover_1616765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616765 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_1616765)
  decide +kernel
#print axioms cover_1616765

def state_1616812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 29 else 49)))
def hex_1616812 : String := "43414440070A0744400742054305410A050741444042430706064243410A0909430A0640064243070907444042430706064209434144090709064007420507"
theorem cover_1616812 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616812 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1616812)
  decide +kernel
#print axioms cover_1616812

def state_1616875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 49)))
def hex_1616875 : String := "4243050943410A05410A09"
theorem cover_1616875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1616875 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1616875)
  decide +kernel
#print axioms cover_1616875
end Mub6.Numerical.CircleFullD0.Forest
