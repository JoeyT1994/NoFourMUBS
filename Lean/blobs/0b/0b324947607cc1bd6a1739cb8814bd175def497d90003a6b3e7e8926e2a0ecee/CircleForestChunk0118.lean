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
def state_965826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 90) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 111)))
def hex_965826 : String := "40414244434007410705400706430740074107070742440A0707414244064308064409430840070642440643050644054305400706"
theorem cover_965826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965826 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_965826)
  decide +kernel
#print axioms cover_965826

def state_965879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 90) else (if j.val < 3 then 105 else (if j.val < 4 then 73 else 111)))
def hex_965879 : String := "40414244064340070606440A430740070642060A06"
theorem cover_965879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965879 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_965879)
  decide +kernel
#print axioms cover_965879

def state_965900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 91) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 55)))
def hex_965900 : String := "42440643400A0606440A434041420A070A4142060505400A06"
theorem cover_965900 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965900 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_965900)
  decide +kernel
#print axioms cover_965900

def state_965925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 55)))
def hex_965925 : String := "414206440643404142060906060606"
theorem cover_965925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965925 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_965925)
  decide +kernel
#print axioms cover_965925

def state_965940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 27)))
def hex_965940 : String := "06"
theorem cover_965940 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965940 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_965940)
  decide +kernel
#print axioms cover_965940

def state_965942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 27)))
def hex_965942 : String := "4409404142444309404142060909064340070940410707414244064340070606440907420609440907424409430940070909414244064309060909"
theorem cover_965942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965942 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 59) (hex := hex_965942)
  decide +kernel
#print axioms cover_965942

def state_966001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 27)))
def hex_966001 : String := "440640414243440640414206070A06064344400A06400741424307060742060744064041420607060642064344064007060606"
theorem cover_966001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966001 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_966001)
  decide +kernel
#print axioms cover_966001

def state_966052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
def hex_966052 : String := "4142064344064041420A0942060906064206430906"
theorem cover_966052 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966052 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_966052)
  decide +kernel
#print axioms cover_966052
end Mub6.Numerical.CircleFullD0.Forest
