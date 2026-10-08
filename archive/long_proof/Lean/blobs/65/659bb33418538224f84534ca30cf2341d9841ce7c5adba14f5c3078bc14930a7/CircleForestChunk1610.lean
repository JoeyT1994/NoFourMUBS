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
def state_2259585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 74 else 105) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 108)))
def hex_2259585 : String := "4342410544400A05400A0A0542410744074043420607060607"
theorem cover_2259585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259585 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_2259585)
  decide +kernel
#print axioms cover_2259585

def state_2259610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 74 else 105) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 109)))
def hex_2259610 : String := "43424140440906094044430A060644060641404405070540444305424105060543420605064405430506424140440606060641074044070607"
theorem cover_2259610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259610 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_2259610)
  decide +kernel
#print axioms cover_2259610

def state_2259667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 75 else 105) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 54)))
def hex_2259667 : String := "44074342090707"
theorem cover_2259667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259667 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2259667)
  decide +kernel
#print axioms cover_2259667

def state_2259674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 55)))
def hex_2259674 : String := "434108420840444342080542084108404443050606080844430808084108420640444342064108060606444342064107060606"
theorem cover_2259674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259674 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_2259674)
  decide +kernel
#print axioms cover_2259674

def state_2259726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 27)))
def hex_2259726 : String := "404443074106050644434142060A060606"
theorem cover_2259726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259726 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_2259726)
  decide +kernel
#print axioms cover_2259726

def state_2259746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 43 else (if j.val < 4 then 90 else 54)))
def hex_2259746 : String := "424140070A074140440A07440A0A0A"
theorem cover_2259746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259746 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_2259746)
  decide +kernel
#print axioms cover_2259746

def state_2259762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 54)))
def hex_2259762 : String := "4140440A06440A060A"
theorem cover_2259762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259762 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2259762)
  decide +kernel
#print axioms cover_2259762

def state_2259771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 54)))
def hex_2259771 : String := "414044430A084342070A4206414008440806084443420A08424144080A080843420A41400A0A0A4206414044080644060606400A44080A"
theorem cover_2259771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259771 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_2259771)
  decide +kernel
#print axioms cover_2259771
end Mub6.Numerical.CircleFullD0.Forest
