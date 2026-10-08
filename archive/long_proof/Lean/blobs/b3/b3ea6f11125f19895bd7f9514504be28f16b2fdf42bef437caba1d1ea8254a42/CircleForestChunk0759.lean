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
def state_1483031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 53)))
def hex_1483031 : String := "424140430544420905050940434442090A0944424108400809410A400A430A0A0843094409064105400A430544424105400A43054407050505"
theorem cover_1483031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483031 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_1483031)
  decide +kernel
#print axioms cover_1483031

def state_1483088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
def hex_1483088 : String := "4344080944424140430844080608404308440809080842094105404305444209050508"
theorem cover_1483088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483088 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1483088)
  decide +kernel
#print axioms cover_1483088

def state_1483125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 26)))
def hex_1483125 : String := "44424140430644064241090506084006080842414043094442090A090940434406094442060642090A4309440909410A4006430844080A"
theorem cover_1483125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483125 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1483125)
  decide +kernel
#print axioms cover_1483125

def state_1483185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 34) else (if j.val < 3 then 38 else (if j.val < 4 then 102 else 52)))
def hex_1483185 : String := "44420506424140430605430905054140064306440642090606"
theorem cover_1483185 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483185 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1483185)
  decide +kernel
#print axioms cover_1483185

def state_1483210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 34) else (if j.val < 3 then 38 else (if j.val < 4 then 103 else 52)))
def hex_1483210 : String := "4442054140050505420541404344060A440542050A43444205064241400A0905410A4006430644050A4405420541400A4344070A4405070505"
theorem cover_1483210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483210 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_1483210)
  decide +kernel
#print axioms cover_1483210

def state_1483268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 34) else (if j.val < 3 then 38 else (if j.val < 4 then 102 else 52)))
def hex_1483268 : String := "4442050842094140430844080908404306440542050608"
theorem cover_1483268 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483268 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1483268)
  decide +kernel
#print axioms cover_1483268
end Mub6.Numerical.CircleFullD0.Forest
