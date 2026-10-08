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
def state_160803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
def hex_160803 : String := "424340440A420A050A40444241430A090941430A0609424143404442084143050605080A07430A0641434005440A054006440607430506440A420A41430A40440A070A0A4340050A40444142430506050541424305060505440A4142430A404408410905084305080A"
theorem cover_160803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160803 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 105) (hex := hex_160803)
  decide +kernel
#print axioms cover_160803

def state_160908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
def hex_160908 : String := "41424340444142430609094243400506400844420609074305400509410942430807094409094044410942074340440909090941090709430909424340444243050805420805440A420A0540444207414340054405050743050607074305404405054441090509"
theorem cover_160908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160908 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 103) (hex := hex_160908)
  decide +kernel
#print axioms cover_160908

def state_161011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
def hex_161011 : String := "4441424306404408090643090842430A0A0A410942430A440A0709"
theorem cover_161011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161011 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_161011)
  decide +kernel
#print axioms cover_161011

def state_161038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_161038 : String := "414206430644410508064243064442054041054306050506434443060706440844404109424306440806090909"
theorem cover_161038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161038 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_161038)
  decide +kernel
#print axioms cover_161038
end Mub6.Numerical.CircleFullPrototype.Forest
