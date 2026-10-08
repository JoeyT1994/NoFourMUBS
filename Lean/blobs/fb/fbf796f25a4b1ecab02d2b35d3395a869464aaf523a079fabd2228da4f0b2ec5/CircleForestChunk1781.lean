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
def state_2300588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 23)))
def hex_2300588 : String := "44414342400A44414342400A440A0A0A0A434240050940080942050841430A0505400844410A430A08410A0A0A434240054409050805414342050A0505"
theorem cover_2300588 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300588 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_2300588)
  decide +kernel
#print axioms cover_2300588

def state_2300649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 23)))
def hex_2300649 : String := "44410A08410A08"
theorem cover_2300649 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300649 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_2300649)
  decide +kernel
#print axioms cover_2300649

def state_2300656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 23)))
def hex_2300656 : String := "420808"
theorem cover_2300656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300656 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2300656)
  decide +kernel
#print axioms cover_2300656

def state_2300659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 23)))
def hex_2300659 : String := "4342080805"
theorem cover_2300659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300659 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2300659)
  decide +kernel
#print axioms cover_2300659

def state_2300675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 104 else 92)))
def hex_2300675 : String := "404244414308400A0843064009064143060A064441430707434009060A410743060A420607"
theorem cover_2300675 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300675 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 37) (hex := hex_2300675)
  decide +kernel
#print axioms cover_2300675

def state_2300712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 92)))
def hex_2300712 : String := "404244410A434009090A410A430A050A4244410843064042060A06414306070644410743070707"
theorem cover_2300712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300712 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2300712)
  decide +kernel
#print axioms cover_2300712

def state_2300751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 105) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 92)))
def hex_2300751 : String := "43404206440906064042440941430505054409410A094206444143064009060606"
theorem cover_2300751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300751 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_2300751)
  decide +kernel
#print axioms cover_2300751

def state_2300784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 93)))
def hex_2300784 : String := "41434042444143060A06064441074306070706404244410A05050A424441070606074306400506"
theorem cover_2300784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300784 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2300784)
  decide +kernel
#print axioms cover_2300784
end Mub6.Numerical.CircleFullD0.Forest
