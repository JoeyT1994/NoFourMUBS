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
def state_1544984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 119) else (if j.val < 3 then 102 else (if j.val < 4 then 80 else 85)))
def hex_1544984 : String := "4042440743080744084309414007080708"
theorem cover_1544984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544984 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1544984)
  decide +kernel
#print axioms cover_1544984

def state_1545001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 102 else (if j.val < 4 then 81 else 85)))
def hex_1545001 : String := "414042064407064244414308060741064340060806444143080743080741434006420608064340424407064407060840064206440706400742074407430807"
theorem cover_1545001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545001 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1545001)
  decide +kernel
#print axioms cover_1545001

def state_1545065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 84)))
def hex_1545065 : String := "43414042440809090840090641404207440741430907074244074143080707440841430840070843080707"
theorem cover_1545065 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545065 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1545065)
  decide +kernel
#print axioms cover_1545065

def state_1545109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 80 else 85)))
def hex_1545109 : String := "4140424443094140094244080505094309414006050A09424408430541054042080508444305410508054009420809"
theorem cover_1545109 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545109 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1545109)
  decide +kernel
#print axioms cover_1545109

def state_1545158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 118) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 85)))
def hex_1545158 : String := "424441434006420644070606074106434006420644410607060644414340094244090505064309074106430906"
theorem cover_1545158 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545158 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1545158)
  decide +kernel
#print axioms cover_1545158
end Mub6.Numerical.CircleFullD0.Forest
