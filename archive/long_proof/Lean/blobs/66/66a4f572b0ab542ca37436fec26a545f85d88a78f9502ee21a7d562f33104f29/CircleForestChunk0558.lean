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
def state_372778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 44) else (if j.val < 3 then 18 else (if j.val < 4 then 22 else 47)))
def hex_372778 : String := "4340054205444105050540420A44434105060643050A42074443410540420709070743054105400A07"
theorem cover_372778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372778 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_372778)
  decide +kernel
#print axioms cover_372778

def state_372820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 45) else (if j.val < 3 then 18 else (if j.val < 4 then 44 else 47)))
def hex_372820 : String := "40420A094244414305080841050A4441430540094207090941054305400A420A09"
theorem cover_372820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372820 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_372820)
  decide +kernel
#print axioms cover_372820

def state_372853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 45) else (if j.val < 3 then 18 else (if j.val < 4 then 45 else 47)))
def hex_372853 : String := "400A420A44414340420A0942074407410743090A0A0A4143400A420A44410543050A050A0A"
theorem cover_372853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372853 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 37) (hex := hex_372853)
  decide +kernel
#print axioms cover_372853

def state_372891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 46)))
def hex_372891 : String := "4143090609"
theorem cover_372891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372891 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_372891)
  decide +kernel
#print axioms cover_372891

def state_372897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 44) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 47)))
def hex_372897 : String := "4309424044064305064443090643410542050541084240064406050609"
theorem cover_372897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372897 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_372897)
  decide +kernel
#print axioms cover_372897

def state_372927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 44 else 47)))
def hex_372927 : String := "09"
theorem cover_372927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372927 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_372927)
  decide +kernel
#print axioms cover_372927

def state_372930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 45) else (if j.val < 3 then 38 else (if j.val < 4 then 45 else 47)))
def hex_372930 : String := "44064143090607"
theorem cover_372930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372930 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_372930)
  decide +kernel
#print axioms cover_372930

def state_372937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 45) else (if j.val < 3 then 38 else (if j.val < 4 then 45 else 47)))
def hex_372937 : String := "44414309064309064143424009440905094240064406434105420A40050541060640064406430806434240094409414305090709420A40064406410606"
theorem cover_372937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372937 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_372937)
  decide +kernel
#print axioms cover_372937

def state_372998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 45) else (if j.val < 3 then 39 else (if j.val < 4 then 45 else 47)))
def hex_372998 : String := "09"
theorem cover_372998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372998 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_372998)
  decide +kernel
#print axioms cover_372998

def state_373001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 22 else 46)))
def hex_373001 : String := "4107430807"
theorem cover_373001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373001 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_373001)
  decide +kernel
#print axioms cover_373001

def state_373007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 44) else (if j.val < 3 then 18 else (if j.val < 4 then 22 else 47)))
def hex_373007 : String := "07"
theorem cover_373007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373007 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_373007)
  decide +kernel
#print axioms cover_373007

def state_373009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 45) else (if j.val < 3 then 18 else (if j.val < 4 then 44 else 47)))
def hex_373009 : String := "404244074105064441070841430540050543064042064408050607"
theorem cover_373009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373009 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_373009)
  decide +kernel
#print axioms cover_373009
end Mub6.Numerical.CircleFullPrototype.Forest
