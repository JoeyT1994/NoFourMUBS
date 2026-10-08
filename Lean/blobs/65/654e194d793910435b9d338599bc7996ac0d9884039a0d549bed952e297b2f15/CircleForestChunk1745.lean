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
def state_2291937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 69 else (if j.val < 4 then 110 else 183)))
def hex_2291937 : String := "4140064342440609060640434207060643424441400643080607414043070609074441064006430A064140060940434207060643090942440641060706"
theorem cover_2291937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291937 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2291937)
  decide +kernel
#print axioms cover_2291937

def state_2291998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 111 else 91)))
def hex_2291998 : String := "42440641060706"
theorem cover_2291998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291998 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2291998)
  decide +kernel
#print axioms cover_2291998

def state_2292005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 35 else (if j.val < 4 then 55 else 45)))
def hex_2292005 : String := "4441064006434206060641064006434244064106C40606"
theorem cover_2292005 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292005 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_2292005)
  decide +kernel
#print axioms cover_2292005

def state_2292031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 26 else 23)))
def hex_2292031 : String := "444143400A08400A42440A0A0A4340054207444143084005080741430505054005420544070541434005080505"
theorem cover_2292031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292031 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_2292031)
  decide +kernel
#print axioms cover_2292031

def state_2292077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 46)))
def hex_2292077 : String := "41430A0A43400A42444143080A43400708400542050A41430A050544410A43400A4244080A0A0A410A430A0540054244410A05050A"
theorem cover_2292077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292077 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_2292077)
  decide +kernel
#print axioms cover_2292077

def state_2292130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 47)))
def hex_2292130 : String := "410A4340054205440A0505"
theorem cover_2292130 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292130 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2292130)
  decide +kernel
#print axioms cover_2292130

def state_2292141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 27 else 23)))
def hex_2292141 : String := "4244410605054441064005430A050A"
theorem cover_2292141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292141 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_2292141)
  decide +kernel
#print axioms cover_2292141
end Mub6.Numerical.CircleFullD0.Forest
