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
def state_1499900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 41) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 57)))
def hex_1499900 : String := "404344054205414006434405420506050505434405420541050505"
theorem cover_1499900 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499900 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_1499900)
  decide +kernel
#print axioms cover_1499900

def state_1499927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 41) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 57)))
def hex_1499927 : String := "4043064406414240064344050A050606434441420506054142404344060A44050A434407074405070742050644054142050705"
theorem cover_1499927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499927 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1499927)
  decide +kernel
#print axioms cover_1499927

def state_1499979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 56)))
def hex_1499979 : String := "4142054043440541420507050543050505"
theorem cover_1499979 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499979 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1499979)
  decide +kernel
#print axioms cover_1499979

def state_1499997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 40) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 57)))
def hex_1499997 : String := "424008434405080540434441420807420507410842080A444108050843444142050705414208074205074441420507054108420507"
theorem cover_1499997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499997 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 53) (hex := hex_1499997)
  decide +kernel
#print axioms cover_1499997

def state_1500050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 41) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 57)))
def hex_1500050 : String := "42054043440541420509050543440541050505"
theorem cover_1500050 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500050 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1500050)
  decide +kernel
#print axioms cover_1500050

def state_1500070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 20) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
def hex_1500070 : String := "4344410A42080A410842080A08"
theorem cover_1500070 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500070 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1500070)
  decide +kernel
#print axioms cover_1500070

def state_1500086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 40) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 58)))
def hex_1500086 : String := "424008434441094208400A0941064206094441060806400A430A0A"
theorem cover_1500086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500086 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1500086)
  decide +kernel
#print axioms cover_1500086

def state_1500115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 41) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 58)))
def hex_1500115 : String := "434442084108400643440508050808"
theorem cover_1500115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500115 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1500115)
  decide +kernel
#print axioms cover_1500115
end Mub6.Numerical.CircleFullD0.Forest
