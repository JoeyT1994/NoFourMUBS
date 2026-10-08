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
def state_178736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_178736 : String := "4142434407064407054344400641434206090507400641070707424344074006424306054306064440050705434440070740060744074009440705"
theorem cover_178736 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178736 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_178736)
  decide +kernel
#print axioms cover_178736

def state_178800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
def hex_178800 : String := "06"
theorem cover_178800 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178800 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_178800)
  decide +kernel
#print axioms cover_178800

def state_178803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 7)))
def hex_178803 : String := "430640440641420A0A0A44414243064006440607060641424309404441070909074306404406080742094305400505"
theorem cover_178803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178803 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_178803)
  decide +kernel
#print axioms cover_178803

def state_178850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 7)))
def hex_178850 : String := "4305404406054405414243054005050505"
theorem cover_178850 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178850 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_178850)
  decide +kernel
#print axioms cover_178850

def state_178867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
def hex_178867 : String := "424305400A44050905"
theorem cover_178867 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178867 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_178867)
  decide +kernel
#print axioms cover_178867

def state_178878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
def hex_178878 : String := "4244064043064109094341424406400643060806064142440A40434108090908094244064043060708440540050544054009430509"
theorem cover_178878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178878 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_178878)
  decide +kernel
#print axioms cover_178878

def state_178931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
def hex_178931 : String := "42440540430605430542414405400505050505"
theorem cover_178931 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178931 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 19) (hex := hex_178931)
  decide +kernel
#print axioms cover_178931

def state_178958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 14)))
def hex_178958 : String := "44064041420A0606414243060543064406400606420A06"
theorem cover_178958 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178958 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_178958)
  decide +kernel
#print axioms cover_178958
end Mub6.Numerical.CircleFullPrototype.Forest
