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
def state_45909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 20)))
def hex_45909 : String := "414206434206400641080642400641440906064041440905064144434209400907094308420808444306090606"
theorem cover_45909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45909 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_45909)
  decide +kernel
#print axioms cover_45909

def state_45954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 20)))
def hex_45954 : String := "414243060A434042084108440706084042410A064144430709084443404205070509430840420641080608420A410844050842054306400605"
theorem cover_45954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45954 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_45954)
  decide +kernel
#print axioms cover_45954

def state_46011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 21)))
def hex_46011 : String := "40414206430844420640050808064142060806"
theorem cover_46011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46011 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_46011)
  decide +kernel
#print axioms cover_46011

def state_46030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
def hex_46030 : String := "404142080542064344064108064441420605064105064108420643440808444041080641084206430644060840410842060708"
theorem cover_46030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46030 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_46030)
  decide +kernel
#print axioms cover_46030

def state_46082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
def hex_46082 : String := "440A42444008080808"
theorem cover_46082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46082 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_46082)
  decide +kernel
#print axioms cover_46082

def state_46094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 4)))
def hex_46094 : String := "400A4107440742430A400A070A"
theorem cover_46094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46094 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_46094)
  decide +kernel
#print axioms cover_46094

def state_46109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 8) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 4)))
def hex_46109 : String := "440743424407400541050A0A42444041050A0740054105434442070505054440050705"
theorem cover_46109 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46109 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_46109)
  decide +kernel
#print axioms cover_46109
end Mub6.Numerical.CircleFullPrototype.Forest
