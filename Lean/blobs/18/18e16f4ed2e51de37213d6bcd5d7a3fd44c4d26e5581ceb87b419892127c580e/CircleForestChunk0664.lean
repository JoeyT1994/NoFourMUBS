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
def state_765022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 4)))
def hex_765022 : String := "44424043414442400705070708410544054208074341054405420808054007430A0542404308074308444105420505064007430807"
theorem cover_765022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765022 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_765022)
  decide +kernel
#print axioms cover_765022

def state_765075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 4)))
def hex_765075 : String := "44424043080843084144054205050840080A08"
theorem cover_765075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765075 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_765075)
  decide +kernel
#print axioms cover_765075

def state_765094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
def hex_765094 : String := "4008420808"
theorem cover_765094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765094 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_765094)
  decide +kernel
#print axioms cover_765094

def state_765101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
def hex_765101 : String := "424143444009090A09434409080941074344400642090608440908"
theorem cover_765101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765101 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_765101)
  decide +kernel
#print axioms cover_765101

def state_765128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
def hex_765128 : String := "424143444009050A05094143440542400705070543444240090540410506054240080940074143070508440509"
theorem cover_765128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765128 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_765128)
  decide +kernel
#print axioms cover_765128

def state_765173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
def hex_765173 : String := "4042080842440A06444143420A070A43080808"
theorem cover_765173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765173 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_765173)
  decide +kernel
#print axioms cover_765173

def state_765192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_765192 : String := "424344404108090840414344080A0843070A41080744090843444008414208080840410805084440414208080841420943440908090908"
theorem cover_765192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765192 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_765192)
  decide +kernel
#print axioms cover_765192

def state_765249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_765249 : String := "43444307404106060606440506"
theorem cover_765249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765249 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_765249)
  decide +kernel
#print axioms cover_765249
end Mub6.Numerical.CircleFullPrototype.Forest
