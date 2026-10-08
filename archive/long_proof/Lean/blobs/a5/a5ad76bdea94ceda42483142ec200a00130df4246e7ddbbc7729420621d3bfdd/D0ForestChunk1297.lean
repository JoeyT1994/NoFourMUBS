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
def state_1611833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 62 else 99)))
def hex_1611833 : String := "424143444042074107070709090941434440054207054042414308060906420908444005420905400642090609"
theorem cover_1611833 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611833 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1611833)
  decide +kernel
#print axioms cover_1611833

def state_1611878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 63 else 49)))
def hex_1611878 : String := "444042080542414344050909084105054042410608064209414344400505060609"
theorem cover_1611878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611878 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1611878)
  decide +kernel
#print axioms cover_1611878

def state_1611911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 53 else (if j.val < 4 then 31 else 49)))
def hex_1611911 : String := "41054344054005424143080543440540060A44050605440506"
theorem cover_1611911 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611911 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 25) (hex := hex_1611911)
  decide +kernel
#print axioms cover_1611911

def state_1611939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 62 else 49)))
def hex_1611939 : String := "44404207070740424107070807"
theorem cover_1611939 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611939 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1611939)
  decide +kernel
#print axioms cover_1611939

def state_1611952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 63 else 49)))
def hex_1611952 : String := "444042410707410505074042414308444042070507084344074042070707444042074105060740420906094108430844400507064241070708"
theorem cover_1611952 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611952 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1611952)
  decide +kernel
#print axioms cover_1611952

def state_1612009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 31 else 49)))
def hex_1612009 : String := "43444042074107070740420941430744070809094440420941430744050909094042090909"
theorem cover_1612009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612009 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1612009)
  decide +kernel
#print axioms cover_1612009

def state_1612046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 53 else (if j.val < 4 then 31 else 49)))
def hex_1612046 : String := "414308084344400A07404241084308090808444042410505050A404241430806094105054241080908"
theorem cover_1612046 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612046 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_1612046)
  decide +kernel
#print axioms cover_1612046
end Mub6.Numerical.CircleFullD0.Forest
