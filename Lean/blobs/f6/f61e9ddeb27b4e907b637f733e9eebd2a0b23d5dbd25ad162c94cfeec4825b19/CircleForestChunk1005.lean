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
def state_1541557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 48 else (if j.val < 4 then 19 else 22)))
def hex_1541557 : String := "44434142400544430505094044050544434142400508400A08050543414209400A070505054142054005090543414240050940440505444341070505070505"
theorem cover_1541557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541557 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_1541557)
  decide +kernel
#print axioms cover_1541557

def state_1541622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 49 else (if j.val < 4 then 38 else 44)))
def hex_1541622 : String := "41404244430A050A0A4244434142400A080A0A4142400509400A440809054341070A414209400A070544430A410A0A0A4042050A424405050A"
theorem cover_1541622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541622 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1541622)
  decide +kernel
#print axioms cover_1541622

def state_1541681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 60) else (if j.val < 3 then 49 else (if j.val < 4 then 39 else 44)))
def hex_1541681 : String := "42054443410A0505430A05"
theorem cover_1541681 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541681 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1541681)
  decide +kernel
#print axioms cover_1541681

def state_1541692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 49 else (if j.val < 4 then 39 else 44)))
def hex_1541692 : String := "4244434142054005090505434109050544434140424405050A42440909444308090A054140050905434140424405050A42090705410905"
theorem cover_1541692 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541692 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1541692)
  decide +kernel
#print axioms cover_1541692

def state_1541747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 61) else (if j.val < 3 then 49 else (if j.val < 4 then 39 else 44)))
def hex_1541747 : String := "05"
theorem cover_1541747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541747 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1541747)
  decide +kernel
#print axioms cover_1541747

def state_1541748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 49 else (if j.val < 4 then 19 else 45)))
def hex_1541748 : String := "43414042440A070A424443074107050707400A424405050A414042050842094443410705090705"
theorem cover_1541748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541748 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1541748)
  decide +kernel
#print axioms cover_1541748

def state_1541787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 24 else (if j.val < 4 then 19 else 22)))
def hex_1541787 : String := "40054205440505"
theorem cover_1541787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541787 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1541787)
  decide +kernel
#print axioms cover_1541787
end Mub6.Numerical.CircleFullD0.Forest
