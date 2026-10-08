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
def state_289446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 10)))
def hex_289446 : String := "444043414240054305080505414208400943440505084208094341420806420806410808404341420905050943414208070808"
theorem cover_289446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289446 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_289446)
  decide +kernel
#print axioms cover_289446

def state_289497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 10)))
def hex_289497 : String := "44404305414240054305090505064009430741424409070909"
theorem cover_289497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289497 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_289497)
  decide +kernel
#print axioms cover_289497

def state_289522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 10)))
def hex_289522 : String := "42440808444009410A0809"
theorem cover_289522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289522 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_289522)
  decide +kernel
#print axioms cover_289522

def state_289533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 10)))
def hex_289533 : String := "434244404143050809410808094440050609420809"
theorem cover_289533 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289533 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_289533)
  decide +kernel
#print axioms cover_289533

def state_289554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 10)))
def hex_289554 : String := "41434244080844064306404106060642084406404143420806080808434208440641060808"
theorem cover_289554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289554 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_289554)
  decide +kernel
#print axioms cover_289554

def state_289591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 11)))
def hex_289591 : String := "4009414342070742440808094342080708"
theorem cover_289591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289591 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_289591)
  decide +kernel
#print axioms cover_289591

def state_289608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 5)))
def hex_289608 : String := "44404143424405400506050A4305094106064009414307444209060709"
theorem cover_289608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289608 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_289608)
  decide +kernel
#print axioms cover_289608

def state_289637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
def hex_289637 : String := "430544064406400707"
theorem cover_289637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289637 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_289637)
  decide +kernel
#print axioms cover_289637

def state_289650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
def hex_289650 : String := "424305404405424105050544064241064305060605"
theorem cover_289650 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289650 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_289650)
  decide +kernel
#print axioms cover_289650

def state_289673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 4)))
def hex_289673 : String := "4044410508410505440909"
theorem cover_289673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289673 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_289673)
  decide +kernel
#print axioms cover_289673
end Mub6.Numerical.CircleFullPrototype.Forest
