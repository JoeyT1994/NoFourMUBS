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
def state_1490312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 39 else (if j.val < 4 then 49 else 59)))
def hex_1490312 : String := "434142090808414244404309410909090944084043054105420505084244404306414206060608404341420708420706410707430809440640430641080608"
theorem cover_1490312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490312 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1490312)
  decide +kernel
#print axioms cover_1490312

def state_1490377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 14)))
def hex_1490377 : String := "44404344420541050507084344050905400809"
theorem cover_1490377 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490377 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1490377)
  decide +kernel
#print axioms cover_1490377

def state_1490399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 20) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 28)))
def hex_1490399 : String := "4244414006434205060505414008430908400743420744060707440641400A430A4442410A06060A06"
theorem cover_1490399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490399 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1490399)
  decide +kernel
#print axioms cover_1490399

def state_1490440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 20) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 28)))
def hex_1490440 : String := "4244054108084441400643420506050541400843444208410A0608084006434406420706440508"
theorem cover_1490440 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490440 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1490440)
  decide +kernel
#print axioms cover_1490440

def state_1490481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 38 else (if j.val < 4 then 50 else 28)))
def hex_1490481 : String := "4441050541094043420544050942050509"
theorem cover_1490481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490481 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1490481)
  decide +kernel
#print axioms cover_1490481

def state_1490498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 28)))
def hex_1490498 : String := "44414043424405090642054405410605094006054140430944420941094006090909404344064241090606444205064241090541400609064309440509"
theorem cover_1490498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490498 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1490498)
  decide +kernel
#print axioms cover_1490498

def state_1490560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 28)))
def hex_1490560 : String := "4405410905"
theorem cover_1490560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490560 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1490560)
  decide +kernel
#print axioms cover_1490560
end Mub6.Numerical.CircleFullD0.Forest
