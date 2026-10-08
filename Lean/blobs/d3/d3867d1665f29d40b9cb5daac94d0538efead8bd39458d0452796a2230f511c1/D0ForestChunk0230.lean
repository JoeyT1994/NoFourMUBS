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
def state_992590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 41)))
def hex_992590 : String := "404341440542400609050541440609064341444207054240430909434109070740050A4405420705414407424009070907"
theorem cover_992590 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992590 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_992590)
  decide +kernel
#print axioms cover_992590

def state_992639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 53 else 20)))
def hex_992639 : String := "440642064006414344074206090606"
theorem cover_992639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992639 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_992639)
  decide +kernel
#print axioms cover_992639

def state_992655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 26 else 21)))
def hex_992655 : String := "4041434406050506410543444205400643410506050505"
theorem cover_992655 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992655 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_992655)
  decide +kernel
#print axioms cover_992655

def state_992679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 21)))
def hex_992679 : String := "41434442400909090744420609094344420640064341094406420606410906424006434406070640074307440907440642064006440609"
theorem cover_992679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992679 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_992679)
  decide +kernel
#print axioms cover_992679

def state_992735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 21)))
def hex_992735 : String := "43444240410543090808400941084309084205400708440805"
theorem cover_992735 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992735 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_992735)
  decide +kernel
#print axioms cover_992735

def state_992764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 52 else 42)))
def hex_992764 : String := "43414442064006430906420509064144060506"
theorem cover_992764 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992764 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_992764)
  decide +kernel
#print axioms cover_992764

def state_992783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 52 else 42)))
def hex_992783 : String := "4341444208404341084406080808084442064006074240060540434441420540060806410506440606434441080708084108440608"
theorem cover_992783 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992783 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_992783)
  decide +kernel
#print axioms cover_992783
end Mub6.Numerical.CircleFullD0.Forest
