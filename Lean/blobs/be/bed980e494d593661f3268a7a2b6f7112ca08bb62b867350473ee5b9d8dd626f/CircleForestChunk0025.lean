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
def state_943468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 53)))
def hex_943468 : String := "410643064240060906"
theorem cover_943468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943468 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_943468)
  decide +kernel
#print axioms cover_943468

def state_943477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 26)))
def hex_943477 : String := "44410643064006424408060606"
theorem cover_943477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943477 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_943477)
  decide +kernel
#print axioms cover_943477

def state_943495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 40) else (if j.val < 3 then 50 else (if j.val < 4 then 32 else 52)))
def hex_943495 : String := "42444143064240060740060A434240064405064006440506424044080607404408064407410607410643064240060A0644410643064006424408060606"
theorem cover_943495 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943495 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_943495)
  decide +kernel
#print axioms cover_943495

def state_943556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 40) else (if j.val < 3 then 50 else (if j.val < 4 then 32 else 52)))
def hex_943556 : String := "4244410A434042070505070A0A"
theorem cover_943556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943556 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_943556)
  decide +kernel
#print axioms cover_943556

def state_943570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 40) else (if j.val < 3 then 50 else (if j.val < 4 then 33 else 52)))
def hex_943570 : String := "4244414342074008070543424008074008070741054342400907400644070642050544414340060A0543400842080808410A43064006424407050A"
theorem cover_943570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943570 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_943570)
  decide +kernel
#print axioms cover_943570

def state_943629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 40) else (if j.val < 3 then 50 else (if j.val < 4 then 33 else 52)))
def hex_943629 : String := "424407410707444107070A"
theorem cover_943629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943629 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_943629)
  decide +kernel
#print axioms cover_943629

def state_943642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 41) else (if j.val < 3 then 50 else (if j.val < 4 then 32 else 52)))
def hex_943642 : String := "4244414305424044084108054405074008050541430642400644410705410606400644410605064305424044050605054441430540080505410605"
theorem cover_943642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943642 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_943642)
  decide +kernel
#print axioms cover_943642

def state_943701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 41) else (if j.val < 3 then 50 else (if j.val < 4 then 32 else 52)))
def hex_943701 : String := "42440541430540420744050707054405410A05"
theorem cover_943701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943701 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_943701)
  decide +kernel
#print axioms cover_943701
end Mub6.Numerical.CircleFullD0.Forest
