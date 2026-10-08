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
def state_291892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 9)))
def hex_291892 : String := "4440414243440607440640420507060642430705430744060741060940414207070707"
theorem cover_291892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291892 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_291892)
  decide +kernel
#print axioms cover_291892

def state_291927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 9)))
def hex_291927 : String := "44404142050642054344050505410605404142084408084205444307050708"
theorem cover_291927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291927 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_291927)
  decide +kernel
#print axioms cover_291927

def state_291958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 9)))
def hex_291958 : String := "4344064041420706070644064041424406090642444307400706070706"
theorem cover_291958 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291958 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_291958)
  decide +kernel
#print axioms cover_291958

def state_291987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 4)))
def hex_291987 : String := "4441064240434405410505050506414208084244404341080505050844404341060A080640434109090808"
theorem cover_291987 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291987 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_291987)
  decide +kernel
#print axioms cover_291987

def state_292030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 4)))
def hex_292030 : String := "40434406410542404305094344050544060905440A41090943064406410642440640090606"
theorem cover_292030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292030 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_292030)
  decide +kernel
#print axioms cover_292030

def state_292068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
def hex_292068 : String := "4244400943420841084406080809444009430641060809"
theorem cover_292068 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292068 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_292068)
  decide +kernel
#print axioms cover_292068
end Mub6.Numerical.CircleFullPrototype.Forest
