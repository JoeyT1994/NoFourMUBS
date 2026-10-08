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
def state_1512949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 27 else 15)))
def hex_1512949 : String := "4440414205434405400806054205430A05414205050540410642064344400806060606"
theorem cover_1512949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512949 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1512949)
  decide +kernel
#print axioms cover_1512949

def state_1512994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 42 else (if j.val < 4 then 104 else 60)))
def hex_1512994 : String := "424408404105060807"
theorem cover_1512994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512994 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1512994)
  decide +kernel
#print axioms cover_1512994

def state_1513005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 105 else 120)))
def hex_1513005 : String := "404143060906414307424407070708"
theorem cover_1513005 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513005 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1513005)
  decide +kernel
#print axioms cover_1513005

def state_1513021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 105 else 121)))
def hex_1513021 : String := "414342880542444009414307070940410909414305424409050543090944060543424406400541050606420906"
theorem cover_1513021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513021 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1513021)
  decide +kernel
#print axioms cover_1513021

def state_1513066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 105 else 121)))
def hex_1513066 : String := "414342880742444041070707404143070743074244070707410707074308424440410908084041430742090743080941070807"
theorem cover_1513066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513066 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1513066)
  decide +kernel
#print axioms cover_1513066

def state_1513117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 85 else (if j.val < 4 then 105 else 60)))
def hex_1513117 : String := "4406400607"
theorem cover_1513117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513117 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1513117)
  decide +kernel
#print axioms cover_1513117

def state_1513122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 60)))
def hex_1513122 : String := "43084244400608404143060906414308424408400908080806"
theorem cover_1513122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513122 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_1513122)
  decide +kernel
#print axioms cover_1513122

def state_1513147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 60)))
def hex_1513147 : String := "41430842440840414307424407070708080708"
theorem cover_1513147 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513147 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_1513147)
  decide +kernel
#print axioms cover_1513147

def state_1513169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 42 else (if j.val < 4 then 104 else 61)))
def hex_1513169 : String := "05"
theorem cover_1513169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513169 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1513169)
  decide +kernel
#print axioms cover_1513169

def state_1513173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 105 else 122)))
def hex_1513173 : String := "41054305424440054105090505"
theorem cover_1513173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513173 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1513173)
  decide +kernel
#print axioms cover_1513173
end Mub6.Numerical.CircleFullD0.Forest
