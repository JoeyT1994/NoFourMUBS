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
def state_1025416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 58) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 48)))
def hex_1025416 : String := "424044434105420544090641054205440908434105050844430505054044060606"
theorem cover_1025416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025416 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1025416)
  decide +kernel
#print axioms cover_1025416

def state_1025450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 59) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 48)))
def hex_1025450 : String := "404443090943414205404443090943050544050542090941080A4409430908"
theorem cover_1025450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025450 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1025450)
  decide +kernel
#print axioms cover_1025450

def state_1025481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 59) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 48)))
def hex_1025481 : String := "4044434209064209094342410640440943090906064241400A060A4106400A064409430606"
theorem cover_1025481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025481 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1025481)
  decide +kernel
#print axioms cover_1025481

def state_1025518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 48)))
def hex_1025518 : String := "41420840444341060A08080642400A08400A44094342080608"
theorem cover_1025518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025518 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1025518)
  decide +kernel
#print axioms cover_1025518

def state_1025545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 58) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 49)))
def hex_1025545 : String := "42084044060606"
theorem cover_1025545 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025545 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1025545)
  decide +kernel
#print axioms cover_1025545

def state_1025552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 59) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 49)))
def hex_1025552 : String := "424044434105420540444342054105050A43050505080808404443424106404443070A0706064241080A064342410640070606420806440606"
theorem cover_1025552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025552 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_1025552)
  decide +kernel
#print axioms cover_1025552

def state_1025609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 49)))
def hex_1025609 : String := "41084208400A08"
theorem cover_1025609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025609 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1025609)
  decide +kernel
#print axioms cover_1025609

def state_1025616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 24)))
def hex_1025616 : String := "40444342410744400543050507074241440A070A410605430707444306424106404443060A43060A060643064241064044430606070606"
theorem cover_1025616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025616 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1025616)
  decide +kernel
#print axioms cover_1025616
end Mub6.Numerical.CircleFullD0.Forest
