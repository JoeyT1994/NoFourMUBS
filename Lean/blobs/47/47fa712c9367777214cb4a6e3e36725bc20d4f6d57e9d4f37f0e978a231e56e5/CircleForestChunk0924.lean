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
def state_1522324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 43)))
def hex_1522324 : String := "4340424406090906404244074143400742060607074408410A09420808"
theorem cover_1522324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522324 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1522324)
  decide +kernel
#print axioms cover_1522324

def state_1522353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 21)))
def hex_1522353 : String := "42440841080808"
theorem cover_1522353 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522353 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1522353)
  decide +kernel
#print axioms cover_1522353

def state_1522362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 44 else (if j.val < 4 then 17 else 21)))
def hex_1522362 : String := "440741434007420744074109070707"
theorem cover_1522362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522362 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1522362)
  decide +kernel
#print axioms cover_1522362

def state_1522378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 45 else (if j.val < 4 then 17 else 42)))
def hex_1522378 : String := "41434007080707"
theorem cover_1522378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522378 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1522378)
  decide +kernel
#print axioms cover_1522378

def state_1522389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 90 else (if j.val < 4 then 34 else 43)))
def hex_1522389 : String := "440741434042074406064244074106074441080741064340420606084006094006420744060607"
theorem cover_1522389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522389 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_1522389)
  decide +kernel
#print axioms cover_1522389

def state_1522429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 91 else (if j.val < 4 then 34 else 86)))
def hex_1522429 : String := "4143400A0840060807"
theorem cover_1522429 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522429 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1522429)
  decide +kernel
#print axioms cover_1522429

def state_1522438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 91 else (if j.val < 4 then 34 else 87)))
def hex_1522438 : String := "414340424406060A42444108084106430A40064206060A40064244060644060643400A42440741430A4007420708430A050A4042050A42074407410A05"
theorem cover_1522438 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522438 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1522438)
  decide +kernel
#print axioms cover_1522438

def state_1522500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 90 else (if j.val < 4 then 34 else 43)))
def hex_1522500 : String := "44084143404244080944084108080809434042070808400708"
theorem cover_1522500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522500 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1522500)
  decide +kernel
#print axioms cover_1522500

def state_1522525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 91 else (if j.val < 4 then 34 else 43)))
def hex_1522525 : String := "44084143404244084108080808404244080944084106430809084308404244074143080907440841430840420808080808"
theorem cover_1522525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522525 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1522525)
  decide +kernel
#print axioms cover_1522525
end Mub6.Numerical.CircleFullD0.Forest
