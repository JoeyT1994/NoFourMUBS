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
def state_964627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 89) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 111)))
def hex_964627 : String := "4142444340070840410842070741080808444307400741070707424443400741084207074041070741420608064307400708440707"
theorem cover_964627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964627 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_964627)
  decide +kernel
#print axioms cover_964627

def state_964680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 89) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 111)))
def hex_964680 : String := "4142084443080808424443080608444309404108060608"
theorem cover_964680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964680 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_964680)
  decide +kernel
#print axioms cover_964680

def state_964703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 105 else (if j.val < 4 then 73 else 111)))
def hex_964703 : String := "4041424443400506050544434007414205074206070543080542440643404105070805444340070606430705414244060844060842064406430806"
theorem cover_964703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964703 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_964703)
  decide +kernel
#print axioms cover_964703

def state_964762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 55)))
def hex_964762 : String := "414244064308064443404142060A0606064308404108060642064406434041084206080606"
theorem cover_964762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964762 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_964762)
  decide +kernel
#print axioms cover_964762

def state_964799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 27)))
def hex_964799 : String := "4406404142054344060505420643440640410506060606"
theorem cover_964799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964799 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_964799)
  decide +kernel
#print axioms cover_964799

def state_964826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
def hex_964826 : String := "424344094041090909440640414243440640414243440640410506060609420609060643094406404142060909064206090609"
theorem cover_964826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964826 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 51) (hex := hex_964826)
  decide +kernel
#print axioms cover_964826
end Mub6.Numerical.CircleFullD0.Forest
