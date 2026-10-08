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
def state_392772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_392772 : String := "43444306060644440540080506"
theorem cover_392772 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392772 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_392772)
  decide +kernel
#print axioms cover_392772

def state_759591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_759591 : String := "424305440543050A43440542054405054442050909"
theorem cover_759591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759591 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_759591)
  decide +kernel
#print axioms cover_759591

def state_759613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_759613 : String := "43440541050A4441054305050A"
theorem cover_759613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759613 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_759613)
  decide +kernel
#print axioms cover_759613

def state_759626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
def hex_759626 : String := "434441054205054142054405054244050544054043050505444142054305054243050543054044050505414243050909420A4344050509"
theorem cover_759626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759626 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_759626)
  decide +kernel
#print axioms cover_759626

def state_759683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_759683 : String := "43440540054405054440054305054043054405054344050544054142050505"
theorem cover_759683 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759683 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_759683)
  decide +kernel
#print axioms cover_759683

def state_759714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
def hex_759714 : String := "434440050840420544050542440505440541430505054408404243050909424344050544050508"
theorem cover_759714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759714 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_759714)
  decide +kernel
#print axioms cover_759714

def state_759754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_759754 : String := "434440050707444041054305054143050543054244050505404143050A0A41430744050507"
theorem cover_759754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_759754 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_759754)
  decide +kernel
#print axioms cover_759754
end Mub6.Numerical.CircleFullPrototype.Forest
