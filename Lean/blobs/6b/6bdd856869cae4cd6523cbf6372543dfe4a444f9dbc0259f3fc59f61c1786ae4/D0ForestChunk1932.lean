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
def state_2336709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 21)))
def hex_2336709 : String := "434042440606440606064042440741430A0706440841434042060606404207440741434042060606830642080806420A08"
theorem cover_2336709 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336709 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 49) (hex := hex_2336709)
  decide +kernel
#print axioms cover_2336709

def state_2336758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 10)))
def hex_2336758 : String := "4244080A4408414305400805430608"
theorem cover_2336758 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336758 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_2336758)
  decide +kernel
#print axioms cover_2336758

def state_2336773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 10)))
def hex_2336773 : String := "43400606404207440741430640070606420606"
theorem cover_2336773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336773 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_2336773)
  decide +kernel
#print axioms cover_2336773

def state_2336794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 11)))
def hex_2336794 : String := "40444241430640440A0606064143064044420605420606060642064107064442060606"
theorem cover_2336794 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336794 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_2336794)
  decide +kernel
#print axioms cover_2336794

def state_2336832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 22)))
def hex_2336832 : String := "414340440A0A0A0A0A"
theorem cover_2336832 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336832 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2336832)
  decide +kernel
#print axioms cover_2336832

def state_2336843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 22)))
def hex_2336843 : String := "404442414340440505054044420505420A0505430640440A0A0641430507430640444241050641050642060706424143070743060A0744420A05420A07"
theorem cover_2336843 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336843 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2336843)
  decide +kernel
#print axioms cover_2336843

def state_2336907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 31 else 44)))
def hex_2336907 : String := "414340440A0A0A0A0A"
theorem cover_2336907 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336907 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2336907)
  decide +kernel
#print axioms cover_2336907

def state_2336917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 44)))
def hex_2336917 : String := "434044420505070540444209410543050942090709"
theorem cover_2336917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336917 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_2336917)
  decide +kernel
#print axioms cover_2336917
end Mub6.Numerical.CircleFullD0.Forest
