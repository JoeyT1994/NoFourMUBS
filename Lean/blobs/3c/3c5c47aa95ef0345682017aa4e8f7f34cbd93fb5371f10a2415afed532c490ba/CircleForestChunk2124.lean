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
def state_2590388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 5)))
def hex_2590388 : String := "4441400642064306444140080909060606"
theorem cover_2590388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590388 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_2590388)
  decide +kernel
#print axioms cover_2590388

def state_2590408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 10)))
def hex_2590408 : String := "4243060743444105080505"
theorem cover_2590408 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590408 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2590408)
  decide +kernel
#print axioms cover_2590408

def state_2590424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 22 else 20)))
def hex_2590424 : String := "40430607434441420540060506064441420A43400A440A070A4243060A4340064405064007440A0707"
theorem cover_2590424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590424 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_2590424)
  decide +kernel
#print axioms cover_2590424

def state_2590466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 22 else 20)))
def hex_2590466 : String := "430607"
theorem cover_2590466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590466 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2590466)
  decide +kernel
#print axioms cover_2590466

def state_2590470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 44 else 20)))
def hex_2590470 : String := "44414240064306444142050808414206060640084308440808424006430544080640060906"
theorem cover_2590470 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590470 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_2590470)
  decide +kernel
#print axioms cover_2590470

def state_2590509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 32) else (if j.val < 3 then 49 else (if j.val < 4 then 45 else 40)))
def hex_2590509 : String := "42434044080644410A42434008050A43080A0740070A43400744414243080A430840070A42430808080707"
theorem cover_2590509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590509 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2590509)
  decide +kernel
#print axioms cover_2590509

def state_2590552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 33) else (if j.val < 3 then 49 else (if j.val < 4 then 45 else 40)))
def hex_2590552 : String := "42434008444142430540080543080842080807400744410A42434007070743080707434008440807400744410742070707"
theorem cover_2590552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590552 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_2590552)
  decide +kernel
#print axioms cover_2590552

def state_2590601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 45 else 41)))
def hex_2590601 : String := "07"
theorem cover_2590601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590601 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2590601)
  decide +kernel
#print axioms cover_2590601

def state_2590603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 22 else 20)))
def hex_2590603 : String := "4006430644414206430640064441420643060706060606"
theorem cover_2590603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590603 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 23) (hex := hex_2590603)
  decide +kernel
#print axioms cover_2590603
end Mub6.Numerical.CircleFullD0.Forest
