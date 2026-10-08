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
def state_152387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 13 else 14)))
def hex_152387 : String := "430A444041420A44430A4006414206060A0909410A0A0A"
theorem cover_152387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152387 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 23) (hex := hex_152387)
  decide +kernel
#print axioms cover_152387

def state_152411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 14)))
def hex_152411 : String := "444041084209050808"
theorem cover_152411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152411 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_152411)
  decide +kernel
#print axioms cover_152411

def state_152420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 14)))
def hex_152420 : String := "44404142444308404106064108420608080842444309400941420608070908414244430840080808084244430A4140420A080A07080808"
theorem cover_152420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152420 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_152420)
  decide +kernel
#print axioms cover_152420

def state_152475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 14)))
def hex_152475 : String := "4142430A444041050A050808420A43084441420A08420A0808"
theorem cover_152475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152475 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_152475)
  decide +kernel
#print axioms cover_152475

def state_152500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 15)))
def hex_152500 : String := "40410742090808"
theorem cover_152500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152500 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_152500)
  decide +kernel
#print axioms cover_152500

def state_152507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
def hex_152507 : String := "41420A430A44420540080508420A430A4441420A400843070A0A08"
theorem cover_152507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152507 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_152507)
  decide +kernel
#print axioms cover_152507

def state_152537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
def hex_152537 : String := "4244084340050505440943404241094409430505090909"
theorem cover_152537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152537 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_152537)
  decide +kernel
#print axioms cover_152537

def state_152561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 6)))
def hex_152561 : String := "440843404142084408430505070807"
theorem cover_152561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152561 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_152561)
  decide +kernel
#print axioms cover_152561

def state_152577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 12)))
def hex_152577 : String := "43404109080908"
theorem cover_152577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152577 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_152577)
  decide +kernel
#print axioms cover_152577

def state_152588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 14 else 13)))
def hex_152588 : String := "444340410907090743404142054344090509424344070507434440410907094006410542050607410542054344094041050705074041090709"
theorem cover_152588 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152588 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_152588)
  decide +kernel
#print axioms cover_152588
end Mub6.Numerical.CircleFullPrototype.Forest
