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
def state_964167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 177) else (if j.val < 3 then 211 else (if j.val < 4 then 72 else 221)))
def hex_964167 : String := "434007410842080740414244070707074142084443070807424406084443070607"
theorem cover_964167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964167 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_964167)
  decide +kernel
#print axioms cover_964167

def state_964200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 110)))
def hex_964200 : String := "4142444340C7060608444340410A0909404142060A06060A4244064308064443090643404108080840410842060806"
theorem cover_964200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964200 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_964200)
  decide +kernel
#print axioms cover_964200

def state_964247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 73 else 110)))
def hex_964247 : String := "404142C743444041054205434406050506050542434406400506064344064041054205074142054344060505060641420643440640410506060606"
theorem cover_964247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964247 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_964247)
  decide +kernel
#print axioms cover_964247

def state_964306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 36 else 111)))
def hex_964306 : String := "434041420808424443080808444307400708074108420808404105420544050541420505424406054443080505"
theorem cover_964306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964306 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_964306)
  decide +kernel
#print axioms cover_964306

def state_964353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 104 else (if j.val < 4 then 36 else 110)))
def hex_964353 : String := "4340414206440643404142440608444340070606084206440643070606064206440643400A06060606"
theorem cover_964353 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964353 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 41) (hex := hex_964353)
  decide +kernel
#print axioms cover_964353
end Mub6.Numerical.CircleFullD0.Forest
