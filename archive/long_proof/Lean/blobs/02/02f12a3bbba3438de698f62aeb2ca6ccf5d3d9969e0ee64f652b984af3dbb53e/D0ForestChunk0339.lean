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
def state_1018741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 12)))
def hex_1018741 : String := "444142444006054006054440074307070742064440064341420607060A4007434107064142060706410942400609400709"
theorem cover_1018741 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018741 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1018741)
  decide +kernel
#print axioms cover_1018741

def state_1018791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 12)))
def hex_1018791 : String := "444105420540430A4441054205080505410505"
theorem cover_1018791 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018791 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 19) (hex := hex_1018791)
  decide +kernel
#print axioms cover_1018791

def state_1018812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 24)))
def hex_1018812 : String := "420540444341050541054205440505430505440505"
theorem cover_1018812 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018812 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1018812)
  decide +kernel
#print axioms cover_1018812

def state_1018834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 24)))
def hex_1018834 : String := "40444305050505"
theorem cover_1018834 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018834 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1018834)
  decide +kernel
#print axioms cover_1018834

def state_1018844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 48)))
def hex_1018844 : String := "414205444043054105420507050542440605444008430541050840430841050605"
theorem cover_1018844 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018844 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1018844)
  decide +kernel
#print axioms cover_1018844

def state_1018877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 48)))
def hex_1018877 : String := "41420544404341054205070A4305054043050A05420644404306064341050941420544090506404341060606430541054205440505"
theorem cover_1018877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018877 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_1018877)
  decide +kernel
#print axioms cover_1018877

def state_1018930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 49)))
def hex_1018930 : String := "43410542054044430507050541420540070542054044434105060A43050A4443050505"
theorem cover_1018930 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018930 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1018930)
  decide +kernel
#print axioms cover_1018930

def state_1018965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 24)))
def hex_1018965 : String := "4443410505410542054044090505430505"
theorem cover_1018965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018965 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1018965)
  decide +kernel
#print axioms cover_1018965
end Mub6.Numerical.CircleFullD0.Forest
