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
def state_2564346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 62 else (if j.val < 4 then 55 else 46)))
def hex_2564346 : String := "44414043070743084207440741090707414043420744410805050543084244414007080741090544410940050909400543420744070505"
theorem cover_2564346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564346 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_2564346)
  decide +kernel
#print axioms cover_2564346

def state_2564402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 63 else (if j.val < 4 then 55 else 92)))
def hex_2564402 : String := "414043424406060606430842440609064007434244074108074408410807420744074140060907"
theorem cover_2564402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564402 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2564402)
  decide +kernel
#print axioms cover_2564402

def state_2564441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 63 else (if j.val < 4 then 55 else 93)))
def hex_2564441 : String := "41404342440905090643080940054342444108050544410840050805424407054441090505"
theorem cover_2564441 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564441 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_2564441)
  decide +kernel
#print axioms cover_2564441

def state_2564478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 46)))
def hex_2564478 : String := "400743424407414005060544414007080741400508074207440705"
theorem cover_2564478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564478 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_2564478)
  decide +kernel
#print axioms cover_2564478

def state_2564505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 47)))
def hex_2564505 : String := "41404305054342444108400506084441084005080842444140054308050505444140050905054005430505"
theorem cover_2564505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564505 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2564505)
  decide +kernel
#print axioms cover_2564505

def state_2564548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
def hex_2564548 : String := "4344420743400706074206430644070644074244074007064440074143070707400741434206440606420744070506"
theorem cover_2564548 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564548 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_2564548)
  decide +kernel
#print axioms cover_2564548
end Mub6.Numerical.CircleFullD0.Forest
