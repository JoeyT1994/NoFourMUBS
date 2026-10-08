import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1014724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 87 else (if j.val < 4 then 62 else 43)))
def hex_1014724 : String := "4441090541434008420909404209084209094305400642440541060505"
theorem cover_1014724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014724 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1014724)
  decide +kernel
#print axioms cover_1014724

def state_1014754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 86 else (if j.val < 4 then 62 else 43)))
def hex_1014754 : String := "440741434044420709424143090907410943054044050505440742074109054044420609424143090606410943404406420609074006074407420741080707"
theorem cover_1014754 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014754 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_1014754)
  decide +kernel
#print axioms cover_1014754

def state_1014817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 87 else (if j.val < 4 then 62 else 43)))
def hex_1014817 : String := "4441090541434042440509054244050905404209094209094305404244054143054005050505420705"
theorem cover_1014817 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014817 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_1014817)
  decide +kernel
#print axioms cover_1014817

def state_1014859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 43)))
def hex_1014859 : String := "42064406414340064206090606"
theorem cover_1014859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014859 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1014859)
  decide +kernel
#print axioms cover_1014859

def state_1014873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 86 else (if j.val < 4 then 63 else 43)))
def hex_1014873 : String := "44064143404406420641090644074207410507400644060507"
theorem cover_1014873 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014873 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1014873)
  decide +kernel
#print axioms cover_1014873

def state_1014898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 87 else (if j.val < 4 then 63 else 43)))
def hex_1014898 : String := "444109074143404209094209098243404206440641434008424405410905058205420744074143404244054109050507820582"
theorem cover_1014898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014898 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 51) (hex := hex_1014898)
  decide +kernel
#print axioms cover_1014898
end Mub6.Numerical.CircleFullD0.Forest
