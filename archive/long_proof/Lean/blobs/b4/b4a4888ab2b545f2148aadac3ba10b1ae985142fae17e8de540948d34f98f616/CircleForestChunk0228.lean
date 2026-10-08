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
def state_76060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 5)))
def hex_76060 : String := "4344064142434406060A06424344400906084440410642434406060606064009064306064406410A420A06"
theorem cover_76060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76060 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 43) (hex := hex_76060)
  decide +kernel
#print axioms cover_76060

def state_76107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
def hex_76107 : String := "404142440543054007054443054041060505430540414244050544050505054205054142050505"
theorem cover_76107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76107 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_76107)
  decide +kernel
#print axioms cover_76107

def state_76149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 10)))
def hex_76149 : String := "444340090509434007410A050A"
theorem cover_76149 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76149 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_76149)
  decide +kernel
#print axioms cover_76149

def state_76162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 25 else 10)))
def hex_76162 : String := "44434041060806084340414244430540070507440643400705064207440505414244050506054041420A440643060642070841420A06420706"
theorem cover_76162 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76162 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_76162)
  decide +kernel
#print axioms cover_76162

def state_76219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 10)))
def hex_76219 : String := "4244090744430508430507"
theorem cover_76219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76219 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_76219)
  decide +kernel
#print axioms cover_76219

def state_76230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 10)))
def hex_76230 : String := "4142440943050A4406430506420505"
theorem cover_76230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76230 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_76230)
  decide +kernel
#print axioms cover_76230

def state_76245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 11)))
def hex_76245 : String := "434440414207430707070807444041420743070707414207434405050A0707"
theorem cover_76245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76245 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_76245)
  decide +kernel
#print axioms cover_76245
end Mub6.Numerical.CircleFullPrototype.Forest
