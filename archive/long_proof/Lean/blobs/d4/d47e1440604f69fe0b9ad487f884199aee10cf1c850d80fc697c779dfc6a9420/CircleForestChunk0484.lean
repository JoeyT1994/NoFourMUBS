import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_277495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 8)))
def hex_277495 : String := "43444041060606404106060644400707404107424344070907094106420606"
theorem cover_277495 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277495 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_277495)
  decide +kernel
#print axioms cover_277495

def state_277529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 16)))
def hex_277529 : String := "404143084205080505"
theorem cover_277529 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277529 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_277529)
  decide +kernel
#print axioms cover_277529

def state_277541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 18 else (if j.val < 4 then 56 else 17)))
def hex_277541 : String := "4244400805404143064244060606080606"
theorem cover_277541 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277541 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_277541)
  decide +kernel
#print axioms cover_277541

def state_277560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 34)))
def hex_277560 : String := "4041434205060A0505"
theorem cover_277560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277560 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_277560)
  decide +kernel
#print axioms cover_277560

def state_277571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 92) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 35)))
def hex_277571 : String := "4342444041430642050605054041430642D9060806440606424440410A050540414342D9440640090642D9440A4009410605050544400A06404143060A0806"
theorem cover_277571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277571 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_277571)
  decide +kernel
#print axioms cover_277571

def state_277634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 93) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 35)))
def hex_277634 : String := "430805"
theorem cover_277634 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277634 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_277634)
  decide +kernel
#print axioms cover_277634

def state_277637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 46) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 35)))
def hex_277637 : String := "4143060505"
theorem cover_277637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277637 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_277637)
  decide +kernel
#print axioms cover_277637

def state_277642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 37 else (if j.val < 4 then 57 else 17)))
def hex_277642 : String := "444008064041430642440606060806"
theorem cover_277642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277642 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_277642)
  decide +kernel
#print axioms cover_277642

def state_277657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 17)))
def hex_277657 : String := "4308420508"
theorem cover_277657 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277657 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_277657)
  decide +kernel
#print axioms cover_277657

def state_277662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 17)))
def hex_277662 : String := "41430642050605"
theorem cover_277662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277662 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_277662)
  decide +kernel
#print axioms cover_277662

def state_277669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 8)))
def hex_277669 : String := "44400A054041424344400A05404143424405400A05440A400A4143060A050A0505440A400A0543440A400A414243060A06050A42050A41420543050505"
theorem cover_277669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_277669 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 61) (hex := hex_277669)
  decide +kernel
#print axioms cover_277669
end Mub6.Numerical.CircleFullPrototype.Forest
