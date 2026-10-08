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
def state_2311623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 38 else (if j.val < 4 then 56 else 90)))
def hex_2311623 : String := "42434140440A420A4306080A06414044430A08080A0A4341404405424309084305080540090641404442430808430808084405420A4308084008440908"
theorem cover_2311623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311623 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 61) (hex := hex_2311623)
  decide +kernel
#print axioms cover_2311623

def state_2311684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 38 else (if j.val < 4 then 56 else 91)))
def hex_2311684 : String := "42434144400806080641080843414440084206060806410808"
theorem cover_2311684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311684 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2311684)
  decide +kernel
#print axioms cover_2311684

def state_2311709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 38 else (if j.val < 4 then 56 else 45)))
def hex_2311709 : String := "44420A430A410A06420A4306410A06"
theorem cover_2311709 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311709 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_2311709)
  decide +kernel
#print axioms cover_2311709

def state_2311724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 38 else (if j.val < 4 then 56 else 45)))
def hex_2311724 : String := "4044090606"
theorem cover_2311724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311724 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2311724)
  decide +kernel
#print axioms cover_2311724

def state_2311730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 38 else (if j.val < 4 then 57 else 45)))
def hex_2311730 : String := "404442434140080A08084341400844420808080841080842080844420A434140440A0A0A0A4140440A080A0A42430A08434140080A0808"
theorem cover_2311730 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311730 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2311730)
  decide +kernel
#print axioms cover_2311730

def state_2311785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 38 else (if j.val < 4 then 57 else 45)))
def hex_2311785 : String := "4044420743080705440A0A"
theorem cover_2311785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311785 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2311785)
  decide +kernel
#print axioms cover_2311785

def state_2311799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 39 else (if j.val < 4 then 56 else 45)))
def hex_2311799 : String := "4442434140440507054009064140444208050844050740084409084341054009074107400844090842434107084107084307410708"
theorem cover_2311799 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311799 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_2311799)
  decide +kernel
#print axioms cover_2311799

def state_2311852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 39 else (if j.val < 4 then 56 else 45)))
def hex_2311852 : String := "444243054105404405060543054105404405070542430741070607"
theorem cover_2311852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2311852 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_2311852)
  decide +kernel
#print axioms cover_2311852
end Mub6.Numerical.CircleFullD0.Forest
