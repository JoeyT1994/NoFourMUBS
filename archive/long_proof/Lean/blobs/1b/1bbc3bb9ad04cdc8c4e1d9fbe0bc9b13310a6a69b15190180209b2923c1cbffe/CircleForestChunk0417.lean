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
def state_175660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
def hex_175660 : String := "44414344400A07084440420A414408080A42410909410844430640060908400A09430A44400A420A4441430640060909090909"
theorem cover_175660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175660 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_175660)
  decide +kernel
#print axioms cover_175660

def state_175715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
def hex_175715 : String := "42430A0A434144420543084005410544420506050544420A43060A0A410544420A0705"
theorem cover_175715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175715 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_175715)
  decide +kernel
#print axioms cover_175715

def state_175751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 7 else 12)))
def hex_175751 : String := "434144400543094205410544400506050544400A43090A0A410506"
theorem cover_175751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175751 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_175751)
  decide +kernel
#print axioms cover_175751

def state_175782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 24)))
def hex_175782 : String := "4243410544430805050543084105444240054308050805"
theorem cover_175782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175782 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_175782)
  decide +kernel
#print axioms cover_175782

def state_175805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 24)))
def hex_175805 : String := "424341070941054440420543444105090505420909054308410844404243084441054042050842430705080508424307444107420707080808"
theorem cover_175805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175805 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 57) (hex := hex_175805)
  decide +kernel
#print axioms cover_175805

def state_175862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 25)))
def hex_175862 : String := "4005420508"
theorem cover_175862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175862 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_175862)
  decide +kernel
#print axioms cover_175862

def state_175869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 24)))
def hex_175869 : String := "42430A0A43440608444142400A430A4441420A400643060A0A0A40064306440608420A0641080A"
theorem cover_175869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175869 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 39) (hex := hex_175869)
  decide +kernel
#print axioms cover_175869
end Mub6.Numerical.CircleFullPrototype.Forest
