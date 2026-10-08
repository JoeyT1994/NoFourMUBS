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
def state_2324714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 228) else (if j.val < 3 then 173 else (if j.val < 4 then 125 else 176)))
def hex_2324714 : String := "4340440542410543054005050505404406064405420505"
theorem cover_2324714 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324714 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_2324714)
  decide +kernel
#print axioms cover_2324714

def state_2324738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 229) else (if j.val < 3 then 173 else (if j.val < 4 then 250 else 176)))
def hex_2324738 : String := "404442070942414340090540070A0941430540090509444241050705420A41054305400905"
theorem cover_2324738 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324738 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 37) (hex := hex_2324738)
  decide +kernel
#print axioms cover_2324738

def state_2324775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 229) else (if j.val < 3 then 173 else (if j.val < 4 then 251 else 176)))
def hex_2324775 : String := "40440742074143400644054205050643400744070907444207410507420A4143054044050605434044070A0A0A"
theorem cover_2324775 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324775 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_2324775)
  decide +kernel
#print axioms cover_2324775

def state_2324821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 172 else (if j.val < 4 then 125 else 177)))
def hex_2324821 : String := "41434044420A41060A080A40440A080A4340440A080A0A"
theorem cover_2324821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324821 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2324821)
  decide +kernel
#print axioms cover_2324821

def state_2324845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 228) else (if j.val < 3 then 173 else (if j.val < 4 then 125 else 177)))
def hex_2324845 : String := "4340444241054340080508410543050642080844054241050A054044060644420A054208410508"
theorem cover_2324845 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324845 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2324845)
  decide +kernel
#print axioms cover_2324845

def state_2324885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 229) else (if j.val < 3 then 173 else (if j.val < 4 then 250 else 177)))
def hex_2324885 : String := "40444241434008440A080843090841434008440505084309080844420A41054340440509054044420905080A420A414307084340080A08"
theorem cover_2324885 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324885 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2324885)
  decide +kernel
#print axioms cover_2324885
end Mub6.Numerical.CircleFullD0.Forest
