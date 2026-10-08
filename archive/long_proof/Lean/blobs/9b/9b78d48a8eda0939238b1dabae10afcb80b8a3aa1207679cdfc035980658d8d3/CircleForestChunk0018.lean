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
def state_941787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
def hex_941787 : String := "4042434441090A050943444108440A400942080809440A09424344070507434441074044074207080741054042054344080509420543050507"
theorem cover_941787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941787 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_941787)
  decide +kernel
#print axioms cover_941787

def state_941844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
def hex_941844 : String := "40094205430505"
theorem cover_941844 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941844 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_941844)
  decide +kernel
#print axioms cover_941844

def state_941854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 6)))
def hex_941854 : String := "4441064243064408060606"
theorem cover_941854 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941854 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_941854)
  decide +kernel
#print axioms cover_941854

def state_941866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 12)))
def hex_941866 : String := "41424340060808064243094044084108420808440741074208084305400608"
theorem cover_941866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941866 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_941866)
  decide +kernel
#print axioms cover_941866

def state_941897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 13)))
def hex_941897 : String := "4142430640060A06424340060A4044410642430608060644410A42430A084306080A06"
theorem cover_941897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941897 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_941897)
  decide +kernel
#print axioms cover_941897

def state_941932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 7)))
def hex_941932 : String := "40064106420606"
theorem cover_941932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941932 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_941932)
  decide +kernel
#print axioms cover_941932

def state_941940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
def hex_941940 : String := "4043444108424408400808064106424009430609064408094344084108424043440841064240050506440809434407410742050807404306080808"
theorem cover_941940 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941940 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_941940)
  decide +kernel
#print axioms cover_941940

def state_941999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
def hex_941999 : String := "400943414205064244400943050505444006430641064408050609"
theorem cover_941999 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941999 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_941999)
  decide +kernel
#print axioms cover_941999
end Mub6.Numerical.CircleFullD0.Forest
