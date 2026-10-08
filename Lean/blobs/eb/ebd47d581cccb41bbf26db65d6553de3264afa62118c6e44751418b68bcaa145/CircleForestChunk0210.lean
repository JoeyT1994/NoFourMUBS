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
def state_987877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 69 else (if j.val < 4 then 205 else 173)))
def hex_987877 : String := "4142404344410505050505404307444107080743440807444105420508054240064344060506400808"
theorem cover_987877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987877 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_987877)
  decide +kernel
#print axioms cover_987877

def state_987919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 69 else (if j.val < 4 then 204 else 86)))
def hex_987919 : String := "44410A08410A4240080A08"
theorem cover_987919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987919 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_987919)
  decide +kernel
#print axioms cover_987919

def state_987930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 69 else (if j.val < 4 then 205 else 86)))
def hex_987930 : String := "44414240430A44410507050A40430A0A0A42404308070740080A41420540430A440A050A424043440905050540430844084105080A"
theorem cover_987930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987930 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_987930)
  decide +kernel
#print axioms cover_987930

def state_987983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 86)))
def hex_987983 : String := "4240064309074008430844074142090807"
theorem cover_987983 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987983 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_987983)
  decide +kernel
#print axioms cover_987983

def state_988001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 87)))
def hex_988001 : String := "42054043444107424008050807444142050742054043074408074344080544410508054105054344410542050A0544410542054043440A05050505"
theorem cover_988001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988001 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_988001)
  decide +kernel
#print axioms cover_988001

def state_988061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 68 else (if j.val < 4 then 102 else 87)))
def hex_988061 : String := "40434406410505064344090505"
theorem cover_988061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988061 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_988061)
  decide +kernel
#print axioms cover_988061

def state_988074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 69 else (if j.val < 4 then 102 else 87)))
def hex_988074 : String := "40434408084441420608064142054008430844080542060843444142090808414205400805084441420540430844080809094105420509"
theorem cover_988074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988074 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_988074)
  decide +kernel
#print axioms cover_988074
end Mub6.Numerical.CircleFullD0.Forest
