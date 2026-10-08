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
def state_971041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 29)))
def hex_971041 : String := "400741434442404108070807084442054007084205054344424007060742400708074442064007064240050607"
theorem cover_971041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971041 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_971041)
  decide +kernel
#print axioms cover_971041

def state_971086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
def hex_971086 : String := "40414205074243070507414243080543080542434440410842430744410507050741080808444041054205054108420808054307444007410843070805"
theorem cover_971086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971086 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_971086)
  decide +kernel
#print axioms cover_971086

def state_971149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
def hex_971149 : String := "414243440A050A43440A4041090A41420943440A0509420A0A0A0A"
theorem cover_971149 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971149 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_971149)
  decide +kernel
#print axioms cover_971149

def state_971178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 6)))
def hex_971178 : String := "434406400542060506"
theorem cover_971178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971178 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_971178)
  decide +kernel
#print axioms cover_971178

def state_971189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 12)))
def hex_971189 : String := "40440A414207080A4406410706"
theorem cover_971189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971189 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_971189)
  decide +kernel
#print axioms cover_971189

def state_971203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 13)))
def hex_971203 : String := "4142430505434440440841050544084105050544400807054243440A05054344400A4144084205080A4005410505440A05"
theorem cover_971203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971203 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_971203)
  decide +kernel
#print axioms cover_971203

def state_971252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 13)))
def hex_971252 : String := "4142054344070507420643440640410542050541050606"
theorem cover_971252 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971252 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_971252)
  decide +kernel
#print axioms cover_971252

def state_971275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 6)))
def hex_971275 : String := "4406404341070A0707"
theorem cover_971275 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971275 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_971275)
  decide +kernel
#print axioms cover_971275
end Mub6.Numerical.CircleFullD0.Forest
