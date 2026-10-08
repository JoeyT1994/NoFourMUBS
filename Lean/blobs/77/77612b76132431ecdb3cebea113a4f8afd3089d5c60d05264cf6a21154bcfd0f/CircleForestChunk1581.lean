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
def state_2252735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 22 else 13)))
def hex_2252735 : String := "44404143080943444042084105430509090844404208430909090909400808"
theorem cover_2252735 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252735 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_2252735)
  decide +kernel
#print axioms cover_2252735

def state_2252769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 50) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 26)))
def hex_2252769 : String := "43054244050905"
theorem cover_2252769 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252769 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2252769)
  decide +kernel
#print axioms cover_2252769

def state_2252777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 44 else 26)))
def hex_2252777 : String := "42440540410543054208050505"
theorem cover_2252777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252777 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2252777)
  decide +kernel
#print axioms cover_2252777

def state_2252791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 26)))
def hex_2252791 : String := "4440434105440505414405420905440642090643050740434109420944050941094209444043410509090909430909"
theorem cover_2252791 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252791 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_2252791)
  decide +kernel
#print axioms cover_2252791

def state_2252838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 26)))
def hex_2252838 : String := "440540430541054244054043054106420905070505"
theorem cover_2252838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252838 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 21) (hex := hex_2252838)
  decide +kernel
#print axioms cover_2252838

def state_2252859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 26)))
def hex_2252859 : String := "410543054244050705"
theorem cover_2252859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252859 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2252859)
  decide +kernel
#print axioms cover_2252859

def state_2252870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 50) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
def hex_2252870 : String := "43084208400807"
theorem cover_2252870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252870 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2252870)
  decide +kernel
#print axioms cover_2252870

def state_2252878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 44 else 27)))
def hex_2252878 : String := "420840440508440505"
theorem cover_2252878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252878 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2252878)
  decide +kernel
#print axioms cover_2252878

def state_2252887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 27)))
def hex_2252887 : String := "424008084044434105424044050808054142080542404443410842080541070908440908404407434105BE4107BE074308084443050708"
theorem cover_2252887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252887 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_2252887)
  decide +kernel
#print axioms cover_2252887

def state_2252942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
def hex_2252942 : String := "41084342080542084044070707"
theorem cover_2252942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252942 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_2252942)
  decide +kernel
#print axioms cover_2252942

def state_2252956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 13)))
def hex_2252956 : String := "4440434109440909090909"
theorem cover_2252956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252956 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2252956)
  decide +kernel
#print axioms cover_2252956
end Mub6.Numerical.CircleFullD0.Forest
