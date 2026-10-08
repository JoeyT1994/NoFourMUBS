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
def state_2251804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 27)))
def hex_2251804 : String := "44404341420844404309090908420544400543410905050541090543410842084409084109054043080508"
theorem cover_2251804 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251804 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_2251804)
  decide +kernel
#print axioms cover_2251804

def state_2251851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 102) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 54)))
def hex_2251851 : String := "4244400643064106420906404341084208440608410842050A43080A44064043060A430A0A"
theorem cover_2251851 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251851 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_2251851)
  decide +kernel
#print axioms cover_2251851

def state_2251891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 68 else 103) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 108)))
def hex_2251891 : String := "434142440640054307050642054406074142050605"
theorem cover_2251891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251891 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_2251891)
  decide +kernel
#print axioms cover_2251891

def state_2251912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 103) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 108)))
def hex_2251912 : String := "434142440609064244404307054341060505054406404341060505434106420506414205060541424440050905440640060A4205440605"
theorem cover_2251912 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251912 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2251912)
  decide +kernel
#print axioms cover_2251912

def state_2251967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 109)))
def hex_2251967 : String := "404341420544404307054341060505050505434142084440434108420544060541080543080808420544400543414205444005080505050541420544050505"
theorem cover_2251967 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251967 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_2251967)
  decide +kernel
#print axioms cover_2251967

def state_2252031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 108)))
def hex_2252031 : String := "400643064106424406400643060A06"
theorem cover_2252031 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252031 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2252031)
  decide +kernel
#print axioms cover_2252031
end Mub6.Numerical.CircleFullD0.Forest
