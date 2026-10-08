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
def state_182708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 60 else 30)))
def hex_182708 : String := "4496414240430A4441060A0643444142400A43090608420A40084308080A44410642064008430806064008430808420A400843084441080508"
theorem cover_182708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182708 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_182708)
  decide +kernel
#print axioms cover_182708

def state_182766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 61 else 60)))
def hex_182766 : String := "41424044094341060706444341424009440A060942074007440707094341064206400744070606094240074407074007440743414207050507"
theorem cover_182766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182766 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_182766)
  decide +kernel
#print axioms cover_182766

def state_182823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 61 else 61)))
def hex_182823 : String := "41420640084308064240074344070606400743444108070807"
theorem cover_182823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182823 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_182823)
  decide +kernel
#print axioms cover_182823

def state_182850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 60 else 60)))
def hex_182850 : String := "414240964344410A42080509440A4142060A4209404309440A060940964344054107050A42409643094442080509400505"
theorem cover_182850 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182850 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_182850)
  decide +kernel
#print axioms cover_182850

def state_182901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 100) else (if j.val < 3 then 100 else (if j.val < 4 then 60 else 61)))
def hex_182901 : String := "4043444142094043090607090944410642064006060643094441060906"
theorem cover_182901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182901 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_182901)
  decide +kernel
#print axioms cover_182901
end Mub6.Numerical.CircleFullPrototype.Forest
