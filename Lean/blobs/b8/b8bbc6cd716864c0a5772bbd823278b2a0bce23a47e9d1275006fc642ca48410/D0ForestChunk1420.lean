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
def state_1641526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 10)))
def hex_1641526 : String := "40444243054109050705440505"
theorem cover_1641526 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641526 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1641526)
  decide +kernel
#print axioms cover_1641526

def state_1641544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 50 else 20)))
def hex_1641544 : String := "4240094441430642064406064305420544400905050940094441430742090943054244400905050909"
theorem cover_1641544 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641544 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1641544)
  decide +kernel
#print axioms cover_1641544

def state_1641586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 56 else (if j.val < 4 then 51 else 20)))
def hex_1641586 : String := "4044410A0A094441434244060644400806400806420808434244400A060A44400A41430508050A420A0A4143420609420640090643050A"
theorem cover_1641586 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641586 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1641586)
  decide +kernel
#print axioms cover_1641586

def state_1641641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 57 else (if j.val < 4 then 51 else 20)))
def hex_1641641 : String := "40440A0944414342444008080944400841084309080942440808440808434244400A410A0A0A440A09420A0A414309424009440A090943090A"
theorem cover_1641641 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641641 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1641641)
  decide +kernel
#print axioms cover_1641641

def state_1641698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 20)))
def hex_1641698 : String := "4342404443050A0505400944430541420505050542400A44414342050A0A0A05400A444143420A0A0A0A410A05"
theorem cover_1641698 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641698 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_1641698)
  decide +kernel
#print axioms cover_1641698
end Mub6.Numerical.CircleFullD0.Forest
