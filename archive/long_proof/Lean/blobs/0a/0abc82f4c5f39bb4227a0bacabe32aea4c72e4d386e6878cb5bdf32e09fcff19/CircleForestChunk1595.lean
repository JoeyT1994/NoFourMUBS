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
def state_2255990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 71 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 182 else 107)))
def hex_2255990 : String := "4142440640430641064209064341050A4106090642440A0A4406BE"
theorem cover_2255990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255990 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_2255990)
  decide +kernel
#print axioms cover_2255990

def state_2256017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 71 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 183 else 107)))
def hex_2256017 : String := "414244064043410642090641094209BE434109090906424440430A08430A41420A060840430A41420ABE0A434142090A0A414209BE0A4406BE"
theorem cover_2256017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256017 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_2256017)
  decide +kernel
#print axioms cover_2256017

def state_2256074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 53)))
def hex_2256074 : String := "06"
theorem cover_2256074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256074 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2256074)
  decide +kernel
#print axioms cover_2256074

def state_2256075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 105) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 53)))
def hex_2256075 : String := "424408404307084341420A0A0A414244080A080808"
theorem cover_2256075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256075 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_2256075)
  decide +kernel
#print axioms cover_2256075

def state_2256096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 53) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 26)))
def hex_2256096 : String := "42440A07440840074342070808"
theorem cover_2256096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256096 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_2256096)
  decide +kernel
#print axioms cover_2256096

def state_2256110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
def hex_2256110 : String := "430741420744070707"
theorem cover_2256110 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256110 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2256110)
  decide +kernel
#print axioms cover_2256110

def state_2256120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 44 else 27)))
def hex_2256120 : String := "414207444007434105074142444007050705420744070740074307414207444007430508070707"
theorem cover_2256120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256120 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_2256120)
  decide +kernel
#print axioms cover_2256120

def state_2256161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 27)))
def hex_2256161 : String := "444007434142074440074307410807070741424407054440074341080741094205440905400708074007430706"
theorem cover_2256161 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256161 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 45) (hex := hex_2256161)
  decide +kernel
#print axioms cover_2256161

def state_2256209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 90 else 54)))
def hex_2256209 : String := "41420744060707"
theorem cover_2256209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256209 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2256209)
  decide +kernel
#print axioms cover_2256209

def state_2256218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 54)))
def hex_2256218 : String := "44400743074142074406070707"
theorem cover_2256218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256218 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2256218)
  decide +kernel
#print axioms cover_2256218
end Mub6.Numerical.CircleFullD0.Forest
