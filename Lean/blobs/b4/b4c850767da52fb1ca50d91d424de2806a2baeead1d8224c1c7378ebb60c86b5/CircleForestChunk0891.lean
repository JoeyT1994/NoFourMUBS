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
def state_1514389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 178) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 123)))
def hex_1514389 : String := "43424440410505060505424440410643060606064440414305420505094106434205050605"
theorem cover_1514389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514389 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1514389)
  decide +kernel
#print axioms cover_1514389

def state_1514426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 179) else (if j.val < 3 then 84 else (if j.val < 4 then 106 else 123)))
def hex_1514426 : String := "4342444041430509094143420505060A05444005410505054244404109090A40410643050606444009414309090940054105430506"
theorem cover_1514426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514426 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1514426)
  decide +kernel
#print axioms cover_1514426

def state_1514480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 84 else (if j.val < 4 then 107 else 122)))
def hex_1514480 : String := "404142080909414243440A400806084344094009414206090944054008410609420A430909"
theorem cover_1514480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514480 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1514480)
  decide +kernel
#print axioms cover_1514480

def state_1514517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 84 else (if j.val < 4 then 107 else 123)))
def hex_1514517 : String := "4041084208094142064344404108090606064243440A060643444009414206090940410809064440080A08"
theorem cover_1514517 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514517 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1514517)
  decide +kernel
#print axioms cover_1514517

def state_1514561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 85 else (if j.val < 4 then 106 else 61)))
def hex_1514561 : String := "44404109094142430744074009070742430809074005410542430544090505"
theorem cover_1514561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514561 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1514561)
  decide +kernel
#print axioms cover_1514561

def state_1514593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 85 else (if j.val < 4 then 107 else 122)))
def hex_1514593 : String := "4009414243440940090709430707420909"
theorem cover_1514593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514593 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1514593)
  decide +kernel
#print axioms cover_1514593
end Mub6.Numerical.CircleFullD0.Forest
