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
def state_2252500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 102) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 55)))
def hex_2252500 : String := "4208444043410842080A0A0A08"
theorem cover_2252500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252500 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2252500)
  decide +kernel
#print axioms cover_2252500

def state_2252514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 55)))
def hex_2252514 : String := "44400543080505"
theorem cover_2252514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252514 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2252514)
  decide +kernel
#print axioms cover_2252514

def state_2252523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 68 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 110)))
def hex_2252523 : String := "434142444043070543080505444043410A4207090A0A40430A0A0A420544400743414207090741050540054307054142050A05"
theorem cover_2252523 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252523 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2252523)
  decide +kernel
#print axioms cover_2252523

def state_2252574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 110)))
def hex_2252574 : String := "43414208440A084244400543080505444043410A4205440907410A0543410A42440A050A0A40434108050543080A4142050A4205440505"
theorem cover_2252574 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252574 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_2252574)
  decide +kernel
#print axioms cover_2252574

def state_2252629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 111)))
def hex_2252629 : String := "4043410805054308410505"
theorem cover_2252629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252629 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2252629)
  decide +kernel
#print axioms cover_2252629

def state_2252640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 93 else 55)))
def hex_2252640 : String := "4142050A4205440505"
theorem cover_2252640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252640 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2252640)
  decide +kernel
#print axioms cover_2252640

def state_2252649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 55)))
def hex_2252649 : String := "43410842084440434108BE410A42050A434108BE0A4008084142080A420544400A0A05"
theorem cover_2252649 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252649 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_2252649)
  decide +kernel
#print axioms cover_2252649

def state_2252684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 47 else 27)))
def hex_2252684 : String := "414209440A0A42054440434142050A42054405050543410A42050A0A400543410A0505"
theorem cover_2252684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252684 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_2252684)
  decide +kernel
#print axioms cover_2252684

def state_2252720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 13)))
def hex_2252720 : String := "43420944054008054209440707"
theorem cover_2252720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252720 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2252720)
  decide +kernel
#print axioms cover_2252720
end Mub6.Numerical.CircleFullD0.Forest
