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
def state_1546628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 28) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 20)))
def hex_1546628 : String := "41434440420941054305050805094344084042414305094308094105430544080542080544404209410944070A094042094109434409090909"
theorem cover_1546628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546628 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1546628)
  decide +kernel
#print axioms cover_1546628

def state_1546685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 20)))
def hex_1546685 : String := "42094109430809"
theorem cover_1546685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546685 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1546685)
  decide +kernel
#print axioms cover_1546685

def state_1546694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 20)))
def hex_1546694 : String := "414308440709430807"
theorem cover_1546694 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546694 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1546694)
  decide +kernel
#print axioms cover_1546694

def state_1546703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 20)))
def hex_1546703 : String := "414344084042084143084408404208080808084440070840424109074143440840420941090A0909434407404207070807420841090843084405400708"
theorem cover_1546703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546703 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_1546703)
  decide +kernel
#print axioms cover_1546703

def state_1546764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 20)))
def hex_1546764 : String := "08"
theorem cover_1546764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546764 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1546764)
  decide +kernel
#print axioms cover_1546764

def state_1546766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 21)))
def hex_1546766 : String := "404209444105430509410543050609"
theorem cover_1546766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546766 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1546766)
  decide +kernel
#print axioms cover_1546766

def state_1546783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 21)))
def hex_1546783 : String := "444143404209444109080909094340420844084308080809410943404209444341404209440809080809434109404209444308090909090909"
theorem cover_1546783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546783 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 57) (hex := hex_1546783)
  decide +kernel
#print axioms cover_1546783
end Mub6.Numerical.CircleFullD0.Forest
