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
def state_1542543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 11)))
def hex_1542543 : String := "43400906404442430941400944090A0909420A0944424306414044424306410706060706064305410506420707"
theorem cover_1542543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542543 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 45) (hex := hex_1542543)
  decide +kernel
#print axioms cover_1542543

def state_1542589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 5)))
def hex_1542589 : String := "444143084208404408410508080841430742444041054307090507074306424440430608064043060606440606"
theorem cover_1542589 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542589 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1542589)
  decide +kernel
#print axioms cover_1542589

def state_1542634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 5)))
def hex_1542634 : String := "444143054042440805054205050641054305440607"
theorem cover_1542634 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542634 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1542634)
  decide +kernel
#print axioms cover_1542634

def state_1542661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 8)))
def hex_1542661 : String := "05"
theorem cover_1542661 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542661 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1542661)
  decide +kernel
#print axioms cover_1542661

def state_1542664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 10 else 9)))
def hex_1542664 : String := "07"
theorem cover_1542664 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542664 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1542664)
  decide +kernel
#print axioms cover_1542664

def state_1542668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 18)))
def hex_1542668 : String := "07"
theorem cover_1542668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542668 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1542668)
  decide +kernel
#print axioms cover_1542668

def state_1542670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 19)))
def hex_1542670 : String := "4207414407434006420741440606070607"
theorem cover_1542670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542670 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1542670)
  decide +kernel
#print axioms cover_1542670

def state_1542688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 19)))
def hex_1542688 : String := "414407434007080707"
theorem cover_1542688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542688 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1542688)
  decide +kernel
#print axioms cover_1542688

def state_1542699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 38)))
def hex_1542699 : String := "4340070807"
theorem cover_1542699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542699 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1542699)
  decide +kernel
#print axioms cover_1542699

def state_1542705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 39)))
def hex_1542705 : String := "40424144070607414443400742074407050743050644074340074207410507074241440843080908414443084007084305404206050944084308400708"
theorem cover_1542705 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542705 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1542705)
  decide +kernel
#print axioms cover_1542705

def state_1542766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 39)))
def hex_1542766 : String := "40074207410A07"
theorem cover_1542766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542766 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1542766)
  decide +kernel
#print axioms cover_1542766

def state_1542773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 19)))
def hex_1542773 : String := "44074340070807"
theorem cover_1542773 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542773 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1542773)
  decide +kernel
#print axioms cover_1542773

def state_1542780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 9)))
def hex_1542780 : String := "07"
theorem cover_1542780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542780 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1542780)
  decide +kernel
#print axioms cover_1542780

def state_1542781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 21 else 9)))
def hex_1542781 : String := "07"
theorem cover_1542781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542781 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1542781)
  decide +kernel
#print axioms cover_1542781
end Mub6.Numerical.CircleFullD0.Forest
