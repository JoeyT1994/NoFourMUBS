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
def state_392263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 12)))
def hex_392263 : String := "44404143440A0644424041074344050607070842400906084306444240414306050605050641430644050606400606"
theorem cover_392263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392263 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_392263)
  decide +kernel
#print axioms cover_392263

def state_392310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
def hex_392310 : String := "424440090909444041434407080743440542094041050505440509410705400909"
theorem cover_392310 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392310 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_392310)
  decide +kernel
#print axioms cover_392310

def state_392343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
def hex_392343 : String := "434206064244400A4143060906094440414344054206050A0A05404143060943060906"
theorem cover_392343 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392343 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_392343)
  decide +kernel
#print axioms cover_392343

def state_392378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 13)))
def hex_392378 : String := "4143060906"
theorem cover_392378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392378 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_392378)
  decide +kernel
#print axioms cover_392378

def state_392383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
def hex_392383 : String := "444143444042410843060505054042410806080644050843440506440540424143440506084306050505414306084306404244410806060806"
theorem cover_392383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392383 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_392383)
  decide +kernel
#print axioms cover_392383

def state_392440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
def hex_392440 : String := "40424108070706"
theorem cover_392440 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392440 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_392440)
  decide +kernel
#print axioms cover_392440

def state_392448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
def hex_392448 : String := "44404344410A09410A42070944414240444309410A0943094108070A40440A0A0A424009090941420840080807430A440A4106064043414206060707430606"
theorem cover_392448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_392448)
  decide +kernel
#print axioms cover_392448
end Mub6.Numerical.CircleFullPrototype.Forest
