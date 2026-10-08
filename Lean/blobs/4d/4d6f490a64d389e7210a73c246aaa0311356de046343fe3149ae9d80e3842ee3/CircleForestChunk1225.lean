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
def state_1594410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 39) else (if j.val < 3 then 102 else (if j.val < 4 then 59 else 100)))
def hex_1594410 : String := "404143440942400908084409420A09434442404109094107060942400A054009410843050844420A09420A400941080A414308084344070544420707420508"
theorem cover_1594410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594410 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1594410)
  decide +kernel
#print axioms cover_1594410

def state_1594473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 39) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 100)))
def hex_1594473 : String := "40410943090908"
theorem cover_1594473 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594473 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1594473)
  decide +kernel
#print axioms cover_1594473

def state_1594480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 101)))
def hex_1594480 : String := "4240414344080844420A084205084344420540410843050A050544420A400A410805420540050541080540410843084442400608080808"
theorem cover_1594480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594480 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1594480)
  decide +kernel
#print axioms cover_1594480

def state_1594537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 38) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 51)))
def hex_1594537 : String := "434244404106060840060844080606"
theorem cover_1594537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594537 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1594537)
  decide +kernel
#print axioms cover_1594537

def state_1594553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 58 else 51)))
def hex_1594553 : String := "42444041434244400605050606434205440705420A064143054205080540410605054440410643070641084308444240060506064006410605"
theorem cover_1594553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594553 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1594553)
  decide +kernel
#print axioms cover_1594553

def state_1594610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 51)))
def hex_1594610 : String := "42444006410643420506060606"
theorem cover_1594610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594610 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1594610)
  decide +kernel
#print axioms cover_1594610

def state_1594623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 51)))
def hex_1594623 : String := "4143080843420508424440050505444041064308060805"
theorem cover_1594623 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1594623 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1594623)
  decide +kernel
#print axioms cover_1594623
end Mub6.Numerical.CircleFullD0.Forest
