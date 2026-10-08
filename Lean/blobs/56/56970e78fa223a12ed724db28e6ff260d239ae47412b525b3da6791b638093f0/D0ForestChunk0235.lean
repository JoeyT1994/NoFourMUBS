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
def state_993836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 104 else 86)))
def hex_993836 : String := "434441424006434406060640434406C60643444142090942064005430506C644410906C606C6444142064006434406060606C6"
theorem cover_993836 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993836 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_993836)
  decide +kernel
#print axioms cover_993836

def state_993891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 216) else (if j.val < 3 then 140 else (if j.val < 4 then 208 else 172)))
def hex_993891 : String := "4043444142054043440609060706C64407C6434407C607"
theorem cover_993891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993891 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_993891)
  decide +kernel
#print axioms cover_993891

def state_993914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 216) else (if j.val < 3 then 141 else (if j.val < 4 then 208 else 172)))
def hex_993914 : String := "4043444142404309090A0A420740430A440741090607C6444142400907094206400607C643440AC64407C6"
theorem cover_993914 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993914 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_993914)
  decide +kernel
#print axioms cover_993914

def state_993957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 217) else (if j.val < 3 then 70 else (if j.val < 4 then 208 else 172)))
def hex_993957 : String := "420740434407C64406C607"
theorem cover_993957 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993957 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_993957)
  decide +kernel
#print axioms cover_993957

def state_993968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 208 else 173)))
def hex_993968 : String := "C6"
theorem cover_993968 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993968 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_993968)
  decide +kernel
#print axioms cover_993968

def state_993969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 209 else 86)))
def hex_993969 : String := "444142084043444142060906C644080843440708084206400607C6"
theorem cover_993969 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993969 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_993969)
  decide +kernel
#print axioms cover_993969

def state_993997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 86)))
def hex_993997 : String := "434441424043440509094344410905C644410905090542400543054405C605C644414240430906434409094409094009430909420605C6"
theorem cover_993997 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993997 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_993997)
  decide +kernel
#print axioms cover_993997
end Mub6.Numerical.CircleFullD0.Forest
