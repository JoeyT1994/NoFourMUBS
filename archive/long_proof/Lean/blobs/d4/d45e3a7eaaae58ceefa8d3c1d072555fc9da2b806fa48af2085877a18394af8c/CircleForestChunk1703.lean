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
def state_2281906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 61)))
def hex_2281906 : String := "41444243054005050542434041054405420A0505404144054243050505440842430A4008080841054405420A05430540050544084243080808"
theorem cover_2281906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281906 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_2281906)
  decide +kernel
#print axioms cover_2281906

def state_2281963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 61)))
def hex_2281963 : String := "41440542430507054408420A08"
theorem cover_2281963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281963 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2281963)
  decide +kernel
#print axioms cover_2281963

def state_2281976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 89 else 61)))
def hex_2281976 : String := "40414407424340410744074243080608070707440842430808084107440707"
theorem cover_2281976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281976 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_2281976)
  decide +kernel
#print axioms cover_2281976

def state_2282009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 45 else 30)))
def hex_2282009 : String := "44424340410744074206070707074243404106064106060643404107090707"
theorem cover_2282009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282009 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_2282009)
  decide +kernel
#print axioms cover_2282009

def state_2282040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 45 else 30)))
def hex_2282040 : String := "44424340414408060841440706084006064308084243404106064106060643400941440742060708400606"
theorem cover_2282040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282040 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_2282040)
  decide +kernel
#print axioms cover_2282040

def state_2282083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 45 else 30)))
def hex_2282083 : String := "41074407424340410606070643404107080707"
theorem cover_2282083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282083 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2282083)
  decide +kernel
#print axioms cover_2282083

def state_2282105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 31)))
def hex_2282105 : String := "4144420843404108070840060608444243070543070607"
theorem cover_2282105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282105 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2282105)
  decide +kernel
#print axioms cover_2282105
end Mub6.Numerical.CircleFullD0.Forest
