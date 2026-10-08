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
def state_11322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 9)))
def hex_11322 : String := "4041424307070708414243444041424306070606414243440607440807430607424306080607440807430707424344060708430607"
theorem cover_11322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11322 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_11322)
  decide +kernel
#print axioms cover_11322

def state_11375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 4 else 4)))
def hex_11375 : String := "430644064006410706"
theorem cover_11375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11375 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_11375)
  decide +kernel
#print axioms cover_11375

def state_11384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
def hex_11384 : String := "4243064406400642080606"
theorem cover_11384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11384 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_11384)
  decide +kernel
#print axioms cover_11384

def state_11395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
def hex_11395 : String := "444007414243074407070742070740074142090707"
theorem cover_11395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11395 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_11395)
  decide +kernel
#print axioms cover_11395

def state_11416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
def hex_11416 : String := "444340084142440843080808084008410A420807434440074107070707"
theorem cover_11416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11416 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_11416)
  decide +kernel
#print axioms cover_11416

def state_11451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
def hex_11451 : String := "420643444106404206080606440606"
theorem cover_11451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11451 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_11451)
  decide +kernel
#print axioms cover_11451

def state_11467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 4)))
def hex_11467 : String := "43444206404106070606440606"
theorem cover_11467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11467 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_11467)
  decide +kernel
#print axioms cover_11467

def state_11484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 8)))
def hex_11484 : String := "42434441060541064206084441060706434405084409410840424308064305440508420605"
theorem cover_11484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11484 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_11484)
  decide +kernel
#print axioms cover_11484

def state_11521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 8)))
def hex_11521 : String := "424344050A4407420740414344050606430507410605430544054041424305440540414206430506424305060505050505"
theorem cover_11521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11521 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 49) (hex := hex_11521)
  decide +kernel
#print axioms cover_11521

def state_11570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 8)))
def hex_11570 : String := "41420643054405064243050705"
theorem cover_11570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11570 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_11570)
  decide +kernel
#print axioms cover_11570
end Mub6.Numerical.CircleFullPrototype.Forest
