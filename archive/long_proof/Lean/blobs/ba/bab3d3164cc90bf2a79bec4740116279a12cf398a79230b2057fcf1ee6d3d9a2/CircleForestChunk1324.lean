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
def state_1618390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 8)))
def hex_1618390 : String := "430742404441430708430742400944080607094441064342060742064007064106430606400707"
theorem cover_1618390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618390 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_1618390)
  decide +kernel
#print axioms cover_1618390

def state_1618430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 22 else 8)))
def hex_1618430 : String := "424007440741070507"
theorem cover_1618430 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618430 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1618430)
  decide +kernel
#print axioms cover_1618430

def state_1618443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 46 else 16)))
def hex_1618443 : String := "410707"
theorem cover_1618443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618443 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1618443)
  decide +kernel
#print axioms cover_1618443

def state_1618447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 50) else (if j.val < 3 then 26 else (if j.val < 4 then 47 else 16)))
def hex_1618447 : String := "42400944430741420805424009444307080907430941090907"
theorem cover_1618447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618447 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_1618447)
  decide +kernel
#print axioms cover_1618447

def state_1618472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 26 else (if j.val < 4 then 47 else 16)))
def hex_1618472 : String := "424009444341070741424009444307414240050807D343094109090742400944D34309410909074309410909400707"
theorem cover_1618472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618472 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 47) (hex := hex_1618472)
  decide +kernel
#print axioms cover_1618472

def state_1618519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 17)))
def hex_1618519 : String := "43094109420909"
theorem cover_1618519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618519 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1618519)
  decide +kernel
#print axioms cover_1618519

def state_1618528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 46 else 16)))
def hex_1618528 : String := "4142400706074240070507"
theorem cover_1618528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618528 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1618528)
  decide +kernel
#print axioms cover_1618528

def state_1618540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 26 else (if j.val < 4 then 47 else 16)))
def hex_1618540 : String := "424044434106074142060742404443060806060743064106420640070606400744074307410607"
theorem cover_1618540 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618540 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_1618540)
  decide +kernel
#print axioms cover_1618540

def state_1618583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 94 else 32)))
def hex_1618583 : String := "4142400706074240070507"
theorem cover_1618583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618583 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1618583)
  decide +kernel
#print axioms cover_1618583

def state_1618595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 102) else (if j.val < 3 then 52 else (if j.val < 4 then 95 else 32)))
def hex_1618595 : String := "4240444307414240080607D34341060741420607424044D306060744430641060A06400707"
theorem cover_1618595 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618595 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1618595)
  decide +kernel
#print axioms cover_1618595
end Mub6.Numerical.CircleFullD0.Forest
