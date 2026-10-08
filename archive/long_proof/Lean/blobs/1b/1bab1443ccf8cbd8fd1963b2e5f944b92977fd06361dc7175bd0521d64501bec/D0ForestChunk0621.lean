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
def state_1337926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 10)))
def hex_1337926 : String := "4440050940434142440540054341424405400543C805050A05050A0543414244064043414244060909060906094206094142440540050705420609"
theorem cover_1337926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337926 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 59) (hex := hex_1337926)
  decide +kernel
#print axioms cover_1337926

def state_1337985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 10)))
def hex_1337985 : String := "44054005430A05"
theorem cover_1337985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337985 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1337985)
  decide +kernel
#print axioms cover_1337985

def state_1337992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 25) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 10)))
def hex_1337992 : String := "0A"
theorem cover_1337992 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337992 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1337992)
  decide +kernel
#print axioms cover_1337992

def state_1337993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 10)))
def hex_1337993 : String := "4105420A05"
theorem cover_1337993 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337993 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1337993)
  decide +kernel
#print axioms cover_1337993

def state_1337998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 10)))
def hex_1337998 : String := "43094109420609"
theorem cover_1337998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337998 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1337998)
  decide +kernel
#print axioms cover_1337998

def state_1338016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 44)))
def hex_1338016 : String := "05"
theorem cover_1338016 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338016 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1338016)
  decide +kernel
#print axioms cover_1338016

def state_1338021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 96) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 88)))
def hex_1338021 : String := "400543C841424405400543C80505424405400543C80505"
theorem cover_1338021 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338021 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1338021)
  decide +kernel
#print axioms cover_1338021

def state_1338044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 96) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 89)))
def hex_1338044 : String := "4009434144C842080644C807414442400543C84105440505400543C805420906444208400543070508"
theorem cover_1338044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338044 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_1338044)
  decide +kernel
#print axioms cover_1338044

def state_1338085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 96) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 44)))
def hex_1338085 : String := "444005434142C8050A0540054307410607"
theorem cover_1338085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338085 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1338085)
  decide +kernel
#print axioms cover_1338085

def state_1338102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 97) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 44)))
def hex_1338102 : String := "42444008434142080A070A08440A07"
theorem cover_1338102 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338102 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1338102)
  decide +kernel
#print axioms cover_1338102

def state_1338117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 44)))
def hex_1338117 : String := "410542440540054341440508080505"
theorem cover_1338117 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338117 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1338117)
  decide +kernel
#print axioms cover_1338117

def state_1338132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 45)))
def hex_1338132 : String := "400943414442090606074144420905064442080507"
theorem cover_1338132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338132 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_1338132)
  decide +kernel
#print axioms cover_1338132

def state_1338153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 48) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 22)))
def hex_1338153 : String := "44400543414244050605070506"
theorem cover_1338153 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338153 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1338153)
  decide +kernel
#print axioms cover_1338153

def state_1338166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 49) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
def hex_1338166 : String := "424440084341420807070A08440A07"
theorem cover_1338166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338166 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1338166)
  decide +kernel
#print axioms cover_1338166

def state_1338181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 22)))
def hex_1338181 : String := "05"
theorem cover_1338181 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338181 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1338181)
  decide +kernel
#print axioms cover_1338181
end Mub6.Numerical.CircleFullD0.Forest
