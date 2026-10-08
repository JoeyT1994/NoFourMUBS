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
def state_1472500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 17 else (if j.val < 4 then 45 else 28)))
def hex_1472500 : String := "44424006080642404341440642400609064406420606414406424006090644064206064341440809084144090944084240430841050808084006430808"
theorem cover_1472500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472500 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1472500)
  decide +kernel
#print axioms cover_1472500

def state_1472561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 22 else 28)))
def hex_1472561 : String := "4341080841440809440842404308090808"
theorem cover_1472561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472561 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1472561)
  decide +kernel
#print axioms cover_1472561

def state_1472582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 42) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 29)))
def hex_1472582 : String := "440909"
theorem cover_1472582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472582 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1472582)
  decide +kernel
#print axioms cover_1472582

def state_1472589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 43) else (if j.val < 3 then 32 else (if j.val < 4 then 88 else 58)))
def hex_1472589 : String := "4109444286400A4309090A"
theorem cover_1472589 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472589 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1472589)
  decide +kernel
#print axioms cover_1472589

def state_1472601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 86) else (if j.val < 3 then 32 else (if j.val < 4 then 89 else 58)))
def hex_1472601 : String := "09"
theorem cover_1472601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472601 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1472601)
  decide +kernel
#print axioms cover_1472601

def state_1472602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 87) else (if j.val < 3 then 32 else (if j.val < 4 then 89 else 58)))
def hex_1472602 : String := "444240438641094407070940434109444286400A4309090A4109444240070940070942400709400709430909424043410606080640430A41084442080A0809"
theorem cover_1472602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472602 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1472602)
  decide +kernel
#print axioms cover_1472602

def state_1472665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 43) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 58)))
def hex_1472665 : String := "430909"
theorem cover_1472665 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472665 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1472665)
  decide +kernel
#print axioms cover_1472665

def state_1472670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 43) else (if j.val < 3 then 33 else (if j.val < 4 then 88 else 58)))
def hex_1472670 : String := "0A"
theorem cover_1472670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472670 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1472670)
  decide +kernel
#print axioms cover_1472670

def state_1472672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 86) else (if j.val < 3 then 33 else (if j.val < 4 then 89 else 58)))
def hex_1472672 : String := "0A"
theorem cover_1472672 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472672 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1472672)
  decide +kernel
#print axioms cover_1472672

def state_1472675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 87) else (if j.val < 3 then 66 else (if j.val < 4 then 89 else 116)))
def hex_1472675 : String := "40430A410A444240430A0743410944090941094407074006430A410944060A0A434109444209400A08094109440909"
theorem cover_1472675 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472675 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1472675)
  decide +kernel
#print axioms cover_1472675

def state_1472722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 87) else (if j.val < 3 then 67 else (if j.val < 4 then 89 else 116)))
def hex_1472722 : String := "400A430A4109444240430841080608080A"
theorem cover_1472722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472722 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1472722)
  decide +kernel
#print axioms cover_1472722

def state_1472739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 87) else (if j.val < 3 then 33 else (if j.val < 4 then 89 else 117)))
def hex_1472739 : String := "42400A0A0A"
theorem cover_1472739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472739 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1472739)
  decide +kernel
#print axioms cover_1472739

def state_1472744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 43) else (if j.val < 3 then 33 else (if j.val < 4 then 44 else 58)))
def hex_1472744 : String := "4341094407074109444209404309090909"
theorem cover_1472744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472744 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1472744)
  decide +kernel
#print axioms cover_1472744
end Mub6.Numerical.CircleFullD0.Forest
