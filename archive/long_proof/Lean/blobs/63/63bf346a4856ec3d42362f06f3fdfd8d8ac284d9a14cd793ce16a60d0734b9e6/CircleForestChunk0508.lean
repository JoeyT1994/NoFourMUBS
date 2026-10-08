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
def state_283427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 24)))
def hex_283427 : String := "4440074143420744400541050705080707"
theorem cover_283427 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283427 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_283427)
  decide +kernel
#print axioms cover_283427

def state_283446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 48)))
def hex_283446 : String := "410507"
theorem cover_283446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283446 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_283446)
  decide +kernel
#print axioms cover_283446

def state_283450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 56) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 48)))
def hex_283450 : String := "43424440054105430542440A054440050A050544D505424440430506080844D54005430508"
theorem cover_283450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283450 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_283450)
  decide +kernel
#print axioms cover_283450

def state_283487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 57) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 48)))
def hex_283487 : String := "43424440074143074207440907070744D5400541050742444007414342074440074108070708070744D5400741434205050807"
theorem cover_283487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283487 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_283487)
  decide +kernel
#print axioms cover_283487

def state_283538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 49)))
def hex_283538 : String := "4005410507"
theorem cover_283538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283538 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_283538)
  decide +kernel
#print axioms cover_283538

def state_283543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 29 else 24)))
def hex_283543 : String := "420844404143420606064342060A064143420844400808080843420844400A4143D50643D5084007080808"
theorem cover_283543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283543 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 43) (hex := hex_283543)
  decide +kernel
#print axioms cover_283543

def state_283586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 24)))
def hex_283586 : String := "43074207444007414342070A0A0707"
theorem cover_283586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283586 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_283586)
  decide +kernel
#print axioms cover_283586

def state_283601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 25)))
def hex_283601 : String := "07"
theorem cover_283601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283601 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_283601)
  decide +kernel
#print axioms cover_283601

def state_283606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 24)))
def hex_283606 : String := "404441430A08434209440907420844400805080844410A430A0508"
theorem cover_283606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283606 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_283606)
  decide +kernel
#print axioms cover_283606

def state_283636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 48)))
def hex_283636 : String := "43420A0A424440080808444043410A420A4440D5070A4108420809430A4107420807400808"
theorem cover_283636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283636 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_283636)
  decide +kernel
#print axioms cover_283636
end Mub6.Numerical.CircleFullPrototype.Forest
