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
def state_1624463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 96 else 33)))
def hex_1624463 : String := "4142404443074107074307414206074240070607440A0A0742404443074107074307414240070507420507444305090507"
theorem cover_1624463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624463 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1624463)
  decide +kernel
#print axioms cover_1624463

def state_1624513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 102) else (if j.val < 3 then 53 else (if j.val < 4 then 97 else 33)))
def hex_1624513 : String := "42404408434108420808084408434106090840440843070844084341070708"
theorem cover_1624513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624513 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1624513)
  decide +kernel
#print axioms cover_1624513

def state_1624547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 103) else (if j.val < 3 then 106 else (if j.val < 4 then 97 else 66)))
def hex_1624547 : String := "434142090742090709"
theorem cover_1624547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624547 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1624547)
  decide +kernel
#print axioms cover_1624547

def state_1624556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 103) else (if j.val < 3 then 106 else (if j.val < 4 then 97 else 67)))
def hex_1624556 : String := "43414240444341070708434142080742050541084208080940074407074240444341070509430541420509420505094007440743050941420909420909"
theorem cover_1624556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624556 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1624556)
  decide +kernel
#print axioms cover_1624556

def state_1624617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 103) else (if j.val < 3 then 106 else (if j.val < 4 then 97 else 33)))
def hex_1624617 : String := "44094341090509"
theorem cover_1624617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624617 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1624617)
  decide +kernel
#print axioms cover_1624617

def state_1624624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 103) else (if j.val < 3 then 107 else (if j.val < 4 then 97 else 33)))
def hex_1624624 : String := "40444307064307414208060644094341070709"
theorem cover_1624624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624624 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1624624)
  decide +kernel
#print axioms cover_1624624

def state_1624644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 26 else (if j.val < 4 then 49 else 16)))
def hex_1624644 : String := "420808"
theorem cover_1624644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624644 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1624644)
  decide +kernel
#print axioms cover_1624644

def state_1624648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 49 else 16)))
def hex_1624648 : String := "4044434108424008080608434108424007074044060A44084341080A0841084207084409434142070842090909"
theorem cover_1624648 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624648 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1624648)
  decide +kernel
#print axioms cover_1624648

def state_1624693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 49 else 16)))
def hex_1624693 : String := "4044064341080641050644094341420808420940060909"
theorem cover_1624693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624693 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1624693)
  decide +kernel
#print axioms cover_1624693
end Mub6.Numerical.CircleFullD0.Forest
