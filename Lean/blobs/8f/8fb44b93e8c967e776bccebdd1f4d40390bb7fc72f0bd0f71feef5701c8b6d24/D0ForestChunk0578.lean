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
def state_1327610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 10)))
def hex_1327610 : String := "4140424344054140054205060505430907424306050605"
theorem cover_1327610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327610 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_1327610)
  decide +kernel
#print axioms cover_1327610

def state_1327636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 22)))
def hex_1327636 : String := "424341400944420509420509050543094140094409430942050905"
theorem cover_1327636 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327636 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1327636)
  decide +kernel
#print axioms cover_1327636

def state_1327663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 23)))
def hex_1327663 : String := "424341400A440A0A0505430941404443094205080A4443420A09420541400844090805430A420541080505"
theorem cover_1327663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327663 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 43) (hex := hex_1327663)
  decide +kernel
#print axioms cover_1327663

def state_1327708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 22)))
def hex_1327708 : String := "434140440642060606064140054405420543060505"
theorem cover_1327708 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327708 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1327708)
  decide +kernel
#print axioms cover_1327708

def state_1327729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 27 else (if j.val < 4 then 10 else 22)))
def hex_1327729 : String := "4306414044430642050643424140090605064205414009440643064205064005064406430642060640440543060506"
theorem cover_1327729 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327729 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 47) (hex := hex_1327729)
  decide +kernel
#print axioms cover_1327729

def state_1327777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 23)))
def hex_1327777 : String := "434144404243060543064144060A05064042430A050A42060644064005064144400542054306054005420543414440070607050505"
theorem cover_1327777 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327777 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_1327777)
  decide +kernel
#print axioms cover_1327777

def state_1327831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 27 else (if j.val < 4 then 20 else 23)))
def hex_1327831 : String := "4144400906400A0606"
theorem cover_1327831 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327831 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1327831)
  decide +kernel
#print axioms cover_1327831

def state_1327844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 16) else (if j.val < 3 then 27 else (if j.val < 4 then 42 else 46)))
def hex_1327844 : String := "4241444043090506400A4306420506440505410906"
theorem cover_1327844 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1327844 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1327844)
  decide +kernel
#print axioms cover_1327844
end Mub6.Numerical.CircleFullD0.Forest
