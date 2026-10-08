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
def state_51699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 4)))
def hex_51699 : String := "414443090643424409050542440606064408434241440840430505434409410542080508084144080508420808"
theorem cover_51699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51699 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 45) (hex := hex_51699)
  decide +kernel
#print axioms cover_51699

def state_51745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 4)))
def hex_51745 : String := "4443070643424044094106434409400506064406060606"
theorem cover_51745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51745 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 23) (hex := hex_51745)
  decide +kernel
#print axioms cover_51745

def state_51769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 8)))
def hex_51769 : String := "4342080708"
theorem cover_51769 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51769 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_51769)
  decide +kernel
#print axioms cover_51769

def state_51776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 9)))
def hex_51776 : String := "404144094344094041090941094209090944084341440840084208080808414407434044074107420907070944054340414405420508050508"
theorem cover_51776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51776 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_51776)
  decide +kernel
#print axioms cover_51776

def state_51833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 9)))
def hex_51833 : String := "40414408434244400806400506060644084342080808414406064407434240080740080608"
theorem cover_51833 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51833 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_51833)
  decide +kernel
#print axioms cover_51833

def state_51870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 9)))
def hex_51870 : String := "42400809400806"
theorem cover_51870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51870 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_51870)
  decide +kernel
#print axioms cover_51870

def state_51877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 4)))
def hex_51877 : String := "40410608410608"
theorem cover_51877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51877 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_51877)
  decide +kernel
#print axioms cover_51877

def state_51885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 4)))
def hex_51885 : String := "404144424340050606430505054408424341050A08430A08414406064408424340414406054408430A08410644064342060606064340410644080A0606"
theorem cover_51885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51885 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_51885)
  decide +kernel
#print axioms cover_51885

def state_51946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 4)))
def hex_51946 : String := "4041060806"
theorem cover_51946 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51946 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_51946)
  decide +kernel
#print axioms cover_51946
end Mub6.Numerical.CircleFullPrototype.Forest
