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
def state_1488947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 53 else 28)))
def hex_1488947 : String := "414442064043070606064442400505404307074307064206404344410607060606"
theorem cover_1488947 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488947 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1488947)
  decide +kernel
#print axioms cover_1488947

def state_1488980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 28)))
def hex_1488980 : String := "4341094442090806410606"
theorem cover_1488980 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488980 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1488980)
  decide +kernel
#print axioms cover_1488980

def state_1488991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
def hex_1488991 : String := "4043410644420606060606"
theorem cover_1488991 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488991 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1488991)
  decide +kernel
#print axioms cover_1488991

def state_1489002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 27 else 14)))
def hex_1489002 : String := "4106444041064442054340070605060606"
theorem cover_1489002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489002 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1489002)
  decide +kernel
#print axioms cover_1489002

def state_1489020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 14)))
def hex_1489020 : String := "414440424305440705054206070544404243414407054407074107440707074243084106070740424305060542060A"
theorem cover_1489020 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489020 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_1489020)
  decide +kernel
#print axioms cover_1489020

def state_1489067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 14)))
def hex_1489067 : String := "414406064440424107440707074206074042060A06"
theorem cover_1489067 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489067 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1489067)
  decide +kernel
#print axioms cover_1489067

def state_1489088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
def hex_1489088 : String := "4042430A060A4206430506"
theorem cover_1489088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489088 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1489088)
  decide +kernel
#print axioms cover_1489088

def state_1489099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 7)))
def hex_1489099 : String := "430A4105444042430A0A0A42434105440705414407054407070A05"
theorem cover_1489099 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489099 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1489099)
  decide +kernel
#print axioms cover_1489099

def state_1489126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
def hex_1489126 : String := "42434109444308404209080809410644404243090643410644080606420606064308410644424043084106440706080842060A"
theorem cover_1489126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489126 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1489126)
  decide +kernel
#print axioms cover_1489126
end Mub6.Numerical.CircleFullD0.Forest
