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
def state_2572026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 96) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 96)))
def hex_2572026 : String := "42430641440840420608060843414440E20A40E2064440E20606414408404208080A08"
theorem cover_2572026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572026 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_2572026)
  decide +kernel
#print axioms cover_2572026

def state_2572061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 97)))
def hex_2572061 : String := "4042430641444005420643050505054341444005420643050505054144400542430505050505420643064144404206430608060606"
theorem cover_2572061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572061 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_2572061)
  decide +kernel
#print axioms cover_2572061

def state_2572114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 48)))
def hex_2572114 : String := "44404243060843444140054206080505084206430608400506"
theorem cover_2572114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572114 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_2572114)
  decide +kernel
#print axioms cover_2572114

def state_2572139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 48)))
def hex_2572139 : String := "41444008084042434144080505084341440805050842434144080606084341440840080808084408400508"
theorem cover_2572139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572139 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2572139)
  decide +kernel
#print axioms cover_2572139

def state_2572182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
def hex_2572182 : String := "420643414440420643060A06060641440840420608060A"
theorem cover_2572182 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572182 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_2572182)
  decide +kernel
#print axioms cover_2572182

def state_2572205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 49)))
def hex_2572205 : String := "404243064144404205050606064341444005060606414440054206434144400506050508050506"
theorem cover_2572205 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572205 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 39) (hex := hex_2572205)
  decide +kernel
#print axioms cover_2572205

def state_2572244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 24)))
def hex_2572244 : String := "444042430608434441400506060608064042060506"
theorem cover_2572244 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572244 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_2572244)
  decide +kernel
#print axioms cover_2572244
end Mub6.Numerical.CircleFullD0.Forest
