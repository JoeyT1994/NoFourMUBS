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
def state_160871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 10)))
def hex_160871 : String := "4340050A40444142430506050541424305060505440A4142430A404408410905084305080A"
theorem cover_160871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160871 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_160871)
  decide +kernel
#print axioms cover_160871

def state_160909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
def hex_160909 : String := "424340444142430609094243400506400844420609074305400509410942430807094409094044410942074340440909090941090709430909"
theorem cover_160909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160909 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_160909)
  decide +kernel
#print axioms cover_160909

def state_160966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 11)))
def hex_160966 : String := "424340444243050805420805440A420A0540444207414340054405050743050607074305404405054441090509"
theorem cover_160966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160966 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_160966)
  decide +kernel
#print axioms cover_160966

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

def state_161092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 6)))
def hex_161092 : String := "440640414206050606"
theorem cover_161092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161092 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_161092)
  decide +kernel
#print axioms cover_161092
end Mub6.Numerical.CircleFullPrototype.Forest
