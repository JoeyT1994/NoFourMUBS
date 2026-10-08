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
def state_968417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 14)))
def hex_968417 : String := "4142444306400641424443064006410642444306400641060606060606424443064006414244070606070607060742444307414007420707070707"
theorem cover_968417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968417 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 17) (count := 59) (hex := hex_968417)
  decide +kernel
#print axioms cover_968417

def state_968480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 28)))
def hex_968480 : String := "40410642440506060A"
theorem cover_968480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968480 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_968480)
  decide +kernel
#print axioms cover_968480

def state_968491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 28)))
def hex_968491 : String := "4244434006084041084208080808444306404106070A06"
theorem cover_968491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968491 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_968491)
  decide +kernel
#print axioms cover_968491

def state_968517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 34 else 56)))
def hex_968517 : String := "4041420806420505410805"
theorem cover_968517 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968517 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_968517)
  decide +kernel
#print axioms cover_968517

def state_968529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 56)))
def hex_968529 : String := "41424443400808404108420807080844430740070807424443054041424443054007050707424405070741420808054308400708444305400741070507"
theorem cover_968529 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968529 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_968529)
  decide +kernel
#print axioms cover_968529

def state_968590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 56)))
def hex_968590 : String := "4142080842444305404108050508440508"
theorem cover_968590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968590 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_968590)
  decide +kernel
#print axioms cover_968590

def state_968607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 57)))
def hex_968607 : String := "43084041080808"
theorem cover_968607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968607 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_968607)
  decide +kernel
#print axioms cover_968607

def state_968614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 28)))
def hex_968614 : String := "4443400605400741420807094306400608"
theorem cover_968614 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968614 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_968614)
  decide +kernel
#print axioms cover_968614

def state_968631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 28)))
def hex_968631 : String := "410A42444305404108080808440908"
theorem cover_968631 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968631 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_968631)
  decide +kernel
#print axioms cover_968631

def state_968646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 29)))
def hex_968646 : String := "43084041060808"
theorem cover_968646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968646 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_968646)
  decide +kernel
#print axioms cover_968646

def state_968653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 14)))
def hex_968653 : String := "4443400605404144420A060607410A090A"
theorem cover_968653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968653 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_968653)
  decide +kernel
#print axioms cover_968653

def state_968673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 28)))
def hex_968673 : String := "40414205050505"
theorem cover_968673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968673 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_968673)
  decide +kernel
#print axioms cover_968673
end Mub6.Numerical.CircleFullD0.Forest
