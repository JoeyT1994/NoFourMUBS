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
def state_1326874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 47) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 44)))
def hex_1326874 : String := "414207084244400707404341440706444207400507420A064107440542070543410744070A074408400608"
theorem cover_1326874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326874 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1326874)
  decide +kernel
#print axioms cover_1326874

def state_1326917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 47) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 44)))
def hex_1326917 : String := "09"
theorem cover_1326917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326917 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1326917)
  decide +kernel
#print axioms cover_1326917

def state_1326918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 47) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 45)))
def hex_1326918 : String := "4043410644420A06064106444240060A06060A"
theorem cover_1326918 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326918 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1326918)
  decide +kernel
#print axioms cover_1326918

def state_1326937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 47) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 22)))
def hex_1326937 : String := "444043410642440806060808400606"
theorem cover_1326937 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326937 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1326937)
  decide +kernel
#print axioms cover_1326937

def state_1326952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 22)))
def hex_1326952 : String := "414244070606424440434107420705050740434106444240050706060543410A44090A4107074408400608"
theorem cover_1326952 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326952 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1326952)
  decide +kernel
#print axioms cover_1326952

def state_1326995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 23)))
def hex_1326995 : String := "4006430641064442060606"
theorem cover_1326995 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1326995 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1326995)
  decide +kernel
#print axioms cover_1326995

def state_1327006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 11)))
def hex_1327006 : String := "444006430641060806"
theorem cover_1327006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327006 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1327006)
  decide +kernel
#print axioms cover_1327006

def state_1327015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 11)))
def hex_1327015 : String := "41424440050706064244400543414207050505400543410644420605060505"
theorem cover_1327015 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327015 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_1327015)
  decide +kernel
#print axioms cover_1327015

def state_1327046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 11)))
def hex_1327046 : String := "4341424408090842440940430A410A44420A080A0909414244070A0842444309074340410A444207080A094041064405060709"
theorem cover_1327046 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327046 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1327046)
  decide +kernel
#print axioms cover_1327046

def state_1327097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
def hex_1327097 : String := "44074142074344074042070609074207434405400541070505"
theorem cover_1327097 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327097 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1327097)
  decide +kernel
#print axioms cover_1327097
end Mub6.Numerical.CircleFullD0.Forest
