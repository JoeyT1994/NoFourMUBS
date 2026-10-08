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
def state_2556742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 49)))
def hex_2556742 : String := "404205054243410A444005420505054144400A42430A4144400A090A4440050905430A410A4405050A44400542050505430A41444005420A0A0505"
theorem cover_2556742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556742 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_2556742)
  decide +kernel
#print axioms cover_2556742

def state_2556802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 24)))
def hex_2556802 : String := "410A44400A4342410844400808080942410A44400A430A42E2090A090A"
theorem cover_2556802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556802 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 29) (hex := hex_2556802)
  decide +kernel
#print axioms cover_2556802

def state_2556831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 24)))
def hex_2556831 : String := "4144060A44400642434144060A4440064243E20606400542430A09090606400542430A0A09"
theorem cover_2556831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556831 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 37) (hex := hex_2556831)
  decide +kernel
#print axioms cover_2556831

def state_2556868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 25)))
def hex_2556868 : String := "400A42430A410A444005420A05050A"
theorem cover_2556868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556868 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2556868)
  decide +kernel
#print axioms cover_2556868

def state_2556884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 12)))
def hex_2556884 : String := "444006424344064106400642430A06060606400A42430A410A44400642430A06060A0A"
theorem cover_2556884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556884 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_2556884)
  decide +kernel
#print axioms cover_2556884

def state_2556921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 24)))
def hex_2556921 : String := "06"
theorem cover_2556921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556921 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2556921)
  decide +kernel
#print axioms cover_2556921

def state_2556926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 48)))
def hex_2556926 : String := "4006424344064106400642434406410640060806060606"
theorem cover_2556926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556926 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 23) (hex := hex_2556926)
  decide +kernel
#print axioms cover_2556926

def state_2556950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 49)))
def hex_2556950 : String := "42430A0606"
theorem cover_2556950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556950 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2556950)
  decide +kernel
#print axioms cover_2556950

def state_2556957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 60 else 49)))
def hex_2556957 : String := "4144400642430A06060A4440420A064243410A44400A090A4144060A44064006420806430A060A"
theorem cover_2556957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556957 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_2556957)
  decide +kernel
#print axioms cover_2556957
end Mub6.Numerical.CircleFullD0.Forest
