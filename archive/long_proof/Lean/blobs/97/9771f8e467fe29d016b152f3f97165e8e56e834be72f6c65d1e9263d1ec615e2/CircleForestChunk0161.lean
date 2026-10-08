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
def state_59995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 8)))
def hex_59995 : String := "4340424107054108050540424107440543074207410705414443070A430841084042440708080A440543054140424405430541070544050805054207410705"
theorem cover_59995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59995 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_59995)
  decide +kernel
#print axioms cover_59995

def state_60058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 9)))
def hex_60058 : String := "43094042414443080608094144080844430941444042090809080909424106094144080809"
theorem cover_60058 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60058 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 37) (hex := hex_60058)
  decide +kernel
#print axioms cover_60058

def state_60095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
def hex_60095 : String := "4207434144050905414407404307060644054043094206410609430506"
theorem cover_60095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60095 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_60095)
  decide +kernel
#print axioms cover_60095

def state_60124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
def hex_60124 : String := "404243094441060906094243090643094441060906"
theorem cover_60124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60124 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_60124)
  decide +kernel
#print axioms cover_60124

def state_60146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
def hex_60146 : String := "44404142430544050905050509"
theorem cover_60146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60146 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_60146)
  decide +kernel
#print axioms cover_60146

def state_60162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 4)))
def hex_60162 : String := "4142444008054008430808084244050905"
theorem cover_60162 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60162 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_60162)
  decide +kernel
#print axioms cover_60162

def state_60179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 4)))
def hex_60179 : String := "4142440A43080808424443404108050540410A424405430541080505410A054340080840410842440808084108420908440A08"
theorem cover_60179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60179 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_60179)
  decide +kernel
#print axioms cover_60179
end Mub6.Numerical.CircleFullPrototype.Forest
