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
def state_1609633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 63 else 98)))
def hex_1609633 : String := "40420841050842410A0841434407404207050744054005074344074042074105050744400507400809"
theorem cover_1609633 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609633 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1609633)
  decide +kernel
#print axioms cover_1609633

def state_1609674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 63 else 99)))
def hex_1609674 : String := "40420A41060A420A414344400A07400A42074106074440060A0A4344400A0909440A09"
theorem cover_1609674 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609674 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1609674)
  decide +kernel
#print axioms cover_1609674

def state_1609709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 49)))
def hex_1609709 : String := "434440080909440809"
theorem cover_1609709 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609709 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1609709)
  decide +kernel
#print axioms cover_1609709

def state_1609718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 49)))
def hex_1609718 : String := "4209414344074042070707444042074107070740420941430744074042070707090909"
theorem cover_1609718 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609718 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 35) (hex := hex_1609718)
  decide +kernel
#print axioms cover_1609718

def state_1609753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
def hex_1609753 : String := "09"
theorem cover_1609753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609753 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1609753)
  decide +kernel
#print axioms cover_1609753

def state_1609758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 25)))
def hex_1609758 : String := "4441050505"
theorem cover_1609758 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609758 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1609758)
  decide +kernel
#print axioms cover_1609758

def state_1609766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 60 else 50)))
def hex_1609766 : String := "4440424143054407050541434408084440420708074042410505080843444042059F05054440424107059F074042059F054205410705404205414305080505"
theorem cover_1609766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609766 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1609766)
  decide +kernel
#print axioms cover_1609766

def state_1609832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 40) else (if j.val < 3 then 102 else (if j.val < 4 then 61 else 100)))
def hex_1609832 : String := "4143440A050A0A"
theorem cover_1609832 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609832 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1609832)
  decide +kernel
#print axioms cover_1609832

def state_1609840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 80) else (if j.val < 3 then 103 else (if j.val < 4 then 61 else 100)))
def hex_1609840 : String := "43444042410A0A41084308444006070842070740420A08084440420A410606420A4108430744070640420A06420A08"
theorem cover_1609840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609840 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1609840)
  decide +kernel
#print axioms cover_1609840
end Mub6.Numerical.CircleFullD0.Forest
