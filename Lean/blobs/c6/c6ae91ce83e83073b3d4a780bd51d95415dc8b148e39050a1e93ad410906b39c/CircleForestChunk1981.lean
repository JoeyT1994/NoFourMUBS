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
def state_2556081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 57 else 48)))
def hex_2556081 : String := "414440430A0A43420908420944410A400A090A400A43080A44404342090A4209410A05434206E24209E2400A43064206410A05"
theorem cover_2556081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556081 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2556081)
  decide +kernel
#print axioms cover_2556081

def state_2556132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 28 else 48)))
def hex_2556132 : String := "43410844400808084144400A4243080A0A0A4440420A0AE240054243080A0A"
theorem cover_2556132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556132 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_2556132)
  decide +kernel
#print axioms cover_2556132

def state_2556163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 49)))
def hex_2556163 : String := "400A424306410A444005060543080A"
theorem cover_2556163 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556163 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_2556163)
  decide +kernel
#print axioms cover_2556163

def state_2556181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
def hex_2556181 : String := "42430A0606"
theorem cover_2556181 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556181 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2556181)
  decide +kernel
#print axioms cover_2556181

def state_2556188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 48)))
def hex_2556188 : String := "4441400A424305050A4042430A0A06424344090A09430A44060A410A400A420A0A"
theorem cover_2556188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556188 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_2556188)
  decide +kernel
#print axioms cover_2556188

def state_2556221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 48)))
def hex_2556221 : String := "4441064006424309060641400642430A060640420A064243444109090A4409410A400909430A06"
theorem cover_2556221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556221 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_2556221)
  decide +kernel
#print axioms cover_2556221

def state_2556260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 57 else (if j.val < 4 then 29 else 48)))
def hex_2556260 : String := "43444106400642430A06060A06"
theorem cover_2556260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556260 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2556260)
  decide +kernel
#print axioms cover_2556260

def state_2556273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 49)))
def hex_2556273 : String := "400A42430A410A44400A420A0A0A0A"
theorem cover_2556273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556273 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2556273)
  decide +kernel
#print axioms cover_2556273

def state_2556290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
def hex_2556290 : String := "4243414440064207060A4407054144060A07430A06"
theorem cover_2556290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556290 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2556290)
  decide +kernel
#print axioms cover_2556290
end Mub6.Numerical.CircleFullD0.Forest
