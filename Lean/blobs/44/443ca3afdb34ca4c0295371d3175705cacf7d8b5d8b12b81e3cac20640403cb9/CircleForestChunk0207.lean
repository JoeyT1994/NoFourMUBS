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
def state_987122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 33 else (if j.val < 4 then 50 else 43)))
def hex_987122 : String := "4344414205400843050509410542054008054441420540434441050505050509410505"
theorem cover_987122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987122 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_987122)
  decide +kernel
#print axioms cover_987122

def state_987157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 43)))
def hex_987157 : String := "42064006430909"
theorem cover_987157 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987157 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_987157)
  decide +kernel
#print axioms cover_987157

def state_987164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 21)))
def hex_987164 : String := "444142064006434406414206400607060606414206400643444105060544060506"
theorem cover_987164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987164 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_987164)
  decide +kernel
#print axioms cover_987164

def state_987198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 21)))
def hex_987198 : String := "434408414243084006440808080844414206080641424006434406060640430706430844414206050641070606"
theorem cover_987198 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987198 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_987198)
  decide +kernel
#print axioms cover_987198

def state_987245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 42)))
def hex_987245 : String := "41424008430844084142400843084407410A0708080808"
theorem cover_987245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987245 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 23) (hex := hex_987245)
  decide +kernel
#print axioms cover_987245

def state_987271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 50 else 43)))
def hex_987271 : String := "430844414240084308440808080841424007430744410508050708"
theorem cover_987271 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987271 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_987271)
  decide +kernel
#print axioms cover_987271

def state_987299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 100 else 43)))
def hex_987299 : String := "440841424008050808"
theorem cover_987299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987299 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_987299)
  decide +kernel
#print axioms cover_987299

def state_987309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 101 else 86)))
def hex_987309 : String := "41424043084441420508084105084344080A44410A094105054008430844080A4240080808"
theorem cover_987309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987309 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_987309)
  decide +kernel
#print axioms cover_987309

def state_987346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 101 else 87)))
def hex_987346 : String := "414240430505054043074441070807430A440A05424043084408410506430944090508"
theorem cover_987346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987346 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_987346)
  decide +kernel
#print axioms cover_987346
end Mub6.Numerical.CircleFullD0.Forest
