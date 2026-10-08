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
def state_179733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 29)))
def hex_179733 : String := "4306440641424043074409410742070707400907424043064406414240430609430644060706064306440641074240060606400606"
theorem cover_179733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179733 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 53) (hex := hex_179733)
  decide +kernel
#print axioms cover_179733

def state_179786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 29)))
def hex_179786 : String := "43440607440A4107424043060A0707"
theorem cover_179786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179786 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_179786)
  decide +kernel
#print axioms cover_179786

def state_179801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 29)))
def hex_179801 : String := "404305440541090543050A"
theorem cover_179801 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179801 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_179801)
  decide +kernel
#print axioms cover_179801

def state_179814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 14)))
def hex_179814 : String := "43064406424140430A0A4344060944080A0A4140430644060A430644064241400A430A444208060A0A41400643064406420A0606400606"
theorem cover_179814 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179814 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 55) (hex := hex_179814)
  decide +kernel
#print axioms cover_179814

def state_179870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 14)))
def hex_179870 : String := "4406420906"
theorem cover_179870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179870 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_179870)
  decide +kernel
#print axioms cover_179870

def state_179876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 28)))
def hex_179876 : String := "420806"
theorem cover_179876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179876 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_179876)
  decide +kernel
#print axioms cover_179876

def state_179880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 29)))
def hex_179880 : String := "41404308080809"
theorem cover_179880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179880 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_179880)
  decide +kernel
#print axioms cover_179880

def state_179889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 29)))
def hex_179889 : String := "43064406424140434406094408420841080808400A08414043064406424140430644060A43060806064306440642084140060606400606"
theorem cover_179889 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179889 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 55) (hex := hex_179889)
  decide +kernel
#print axioms cover_179889

def state_179944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 29)))
def hex_179944 : String := "434406094408420841404306080808"
theorem cover_179944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179944 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_179944)
  decide +kernel
#print axioms cover_179944

def state_179959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 29)))
def hex_179959 : String := "40430544054209054305440509"
theorem cover_179959 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179959 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_179959)
  decide +kernel
#print axioms cover_179959
end Mub6.Numerical.CircleFullPrototype.Forest
