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
def state_386439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
def hex_386439 : String := "44414340424406084406410608060643400842084406084007420706414344400805054440074205060508"
theorem cover_386439 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386439 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_386439)
  decide +kernel
#print axioms cover_386439

def state_386482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
def hex_386482 : String := "4407414407054440074207074007424308074344070507"
theorem cover_386482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386482 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_386482)
  decide +kernel
#print axioms cover_386482

def state_386507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
def hex_386507 : String := "41424340070606074243404407094443410607060907434007440742090907"
theorem cover_386507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386507 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_386507)
  decide +kernel
#print axioms cover_386507

def state_386539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
def hex_386539 : String := "42434440410A430A074143050643094244060509400A05444007410606400741054442050705430A440740070A"
theorem cover_386539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386539 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_386539)
  decide +kernel
#print axioms cover_386539

def state_386585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 5)))
def hex_386585 : String := "43444008430941420809084043440805084305444105080544400741420843440607060840084441420543400844410508050708410542054305400705"
theorem cover_386585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386585 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_386585)
  decide +kernel
#print axioms cover_386585
end Mub6.Numerical.CircleFullPrototype.Forest
