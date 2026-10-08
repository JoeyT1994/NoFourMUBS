import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_375707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 45 else 48)))
def hex_375707 : String := "424441434007420644419B070640420A074244419B0A419B0A44419B07419B07074143400706400742060707444143074007070707"
theorem cover_375707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375707 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_375707)
  decide +kernel
#print axioms cover_375707

def state_375761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 46) else (if j.val < 3 then 38 else (if j.val < 4 then 45 else 48)))
def hex_375761 : String := "4441430642404441060606064044419B4306420840440507064106060643064206404408060606"
theorem cover_375761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375761 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 39) (hex := hex_375761)
  decide +kernel
#print axioms cover_375761

def state_375802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 92) else (if j.val < 3 then 39 else (if j.val < 4 then 45 else 96)))
def hex_375802 : String := "43404244410606060906404244419B43400706400742440506440507419B43060744410A07410A074244410A06060A"
theorem cover_375802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375802 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_375802)
  decide +kernel
#print axioms cover_375802

def state_375849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 93) else (if j.val < 3 then 39 else (if j.val < 4 then 45 else 96)))
def hex_375849 : String := "43400706400742444106050644410A0507"
theorem cover_375849 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375849 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_375849)
  decide +kernel
#print axioms cover_375849

def state_375866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 46) else (if j.val < 3 then 39 else (if j.val < 4 then 45 else 97)))
def hex_375866 : String := "4143064042444106060607064306400706"
theorem cover_375866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375866 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_375866)
  decide +kernel
#print axioms cover_375866

def state_375883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 49)))
def hex_375883 : String := "4306400706"
theorem cover_375883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375883 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_375883)
  decide +kernel
#print axioms cover_375883

def state_375888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 47) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 24)))
def hex_375888 : String := "444340070640074241440806060707"
theorem cover_375888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375888 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_375888)
  decide +kernel
#print axioms cover_375888

def state_375903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 25)))
def hex_375903 : String := "40074206410606"
theorem cover_375903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375903 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_375903)
  decide +kernel
#print axioms cover_375903

def state_375912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 24)))
def hex_375912 : String := "420A414344420A07070A07"
theorem cover_375912 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375912 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_375912)
  decide +kernel
#print axioms cover_375912

def state_375924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 24)))
def hex_375924 : String := "414344400A0909090A"
theorem cover_375924 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375924 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_375924)
  decide +kernel
#print axioms cover_375924
end Mub6.Numerical.CircleFullPrototype.Forest
