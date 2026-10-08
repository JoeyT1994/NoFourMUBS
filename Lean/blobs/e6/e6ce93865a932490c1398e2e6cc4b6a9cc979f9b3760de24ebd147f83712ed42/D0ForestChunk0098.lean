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
def state_960938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 13)))
def hex_960938 : String := "420A440A434041420943440A09090A414243440A09094344400A41420A434406400A06060A400941094209440A09440A09420A43440A400A41420A0A0A0A0A"
theorem cover_960938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960938 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 63) (hex := hex_960938)
  decide +kernel
#print axioms cover_960938

def state_961001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 13)))
def hex_961001 : String := "0A"
theorem cover_961001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961001 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_961001)
  decide +kernel
#print axioms cover_961001

def state_961004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 13)))
def hex_961004 : String := "06"
theorem cover_961004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961004 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_961004)
  decide +kernel
#print axioms cover_961004

def state_961006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 26)))
def hex_961006 : String := "06"
theorem cover_961006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961006 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_961006)
  decide +kernel
#print axioms cover_961006

def state_961007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 27)))
def hex_961007 : String := "434041424306064344064041420944434041090606060942064406434041090906060606420643440640414206440643404142064406090606060606060606"
theorem cover_961007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961007 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 63) (hex := hex_961007)
  decide +kernel
#print axioms cover_961007

def state_961070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 13)))
def hex_961070 : String := "06"
theorem cover_961070 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961070 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_961070)
  decide +kernel
#print axioms cover_961070

def state_961072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 12)))
def hex_961072 : String := "4305400A41440642060906"
theorem cover_961072 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961072 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_961072)
  decide +kernel
#print axioms cover_961072

def state_961088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 26)))
def hex_961088 : String := "43054041420A0A0A414244054305400A41420A05050505"
theorem cover_961088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961088 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 23) (hex := hex_961088)
  decide +kernel
#print axioms cover_961088

def state_961112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 27)))
def hex_961112 : String := "400641424405060505"
theorem cover_961112 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961112 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_961112)
  decide +kernel
#print axioms cover_961112

def state_961122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 27)))
def hex_961122 : String := "4142444306400641420A060A060642440A0707"
theorem cover_961122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961122 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_961122)
  decide +kernel
#print axioms cover_961122

def state_961145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 34 else 54)))
def hex_961145 : String := "404142440506064205054142050505"
theorem cover_961145 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961145 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_961145)
  decide +kernel
#print axioms cover_961145

def state_961161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 54)))
def hex_961161 : String := "4142440A434006410607400741C70A440A07420A0A"
theorem cover_961161 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961161 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_961161)
  decide +kernel
#print axioms cover_961161

def state_961185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 108)))
def hex_961185 : String := "4305400A41C70A"
theorem cover_961185 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961185 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_961185)
  decide +kernel
#print axioms cover_961185
end Mub6.Numerical.CircleFullD0.Forest
