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
def state_1465674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 21) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 44)))
def hex_1465674 : String := "41420A084243444006410906060A43444008410843064206444006090808444008410842434440064109060A0A43444008410843420607E608E608"
theorem cover_1465674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465674 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 59) (hex := hex_1465674)
  decide +kernel
#print axioms cover_1465674

def state_1465733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 45)))
def hex_1465733 : String := "40084108420608"
theorem cover_1465733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465733 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1465733)
  decide +kernel
#print axioms cover_1465733

def state_1465740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 23)))
def hex_1465740 : String := "40084108420608"
theorem cover_1465740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465740 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1465740)
  decide +kernel
#print axioms cover_1465740

def state_1465749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 10)))
def hex_1465749 : String := "430641404408060808"
theorem cover_1465749 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465749 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1465749)
  decide +kernel
#print axioms cover_1465749

def state_1465759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 10)))
def hex_1465759 : String := "4140074407430642060707"
theorem cover_1465759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465759 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1465759)
  decide +kernel
#print axioms cover_1465759

def state_1465772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 10)))
def hex_1465772 : String := "4407420607"
theorem cover_1465772 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465772 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1465772)
  decide +kernel
#print axioms cover_1465772

def state_1465778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 20)))
def hex_1465778 : String := "420807"
theorem cover_1465778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465778 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1465778)
  decide +kernel
#print axioms cover_1465778

def state_1465782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 30 else (if j.val < 4 then 15 else 21)))
def hex_1465782 : String := "43414006060641404408064408420643060808"
theorem cover_1465782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465782 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1465782)
  decide +kernel
#print axioms cover_1465782

def state_1465802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 30 else 21)))
def hex_1465802 : String := "4140074407430642060707"
theorem cover_1465802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465802 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1465802)
  decide +kernel
#print axioms cover_1465802

def state_1465815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 21)))
def hex_1465815 : String := "44074243060907"
theorem cover_1465815 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465815 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1465815)
  decide +kernel
#print axioms cover_1465815

def state_1465822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 21)))
def hex_1465822 : String := "4442080742434140064408060641400944084206430641400608080943074140094409424341400644070607414009440842430609E6094307E609"
theorem cover_1465822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465822 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 59) (hex := hex_1465822)
  decide +kernel
#print axioms cover_1465822

def state_1465881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 45) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 21)))
def hex_1465881 : String := "40074407420607"
theorem cover_1465881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465881 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1465881)
  decide +kernel
#print axioms cover_1465881

def state_1465888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 10)))
def hex_1465888 : String := "40074407420607"
theorem cover_1465888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465888 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1465888)
  decide +kernel
#print axioms cover_1465888
end Mub6.Numerical.CircleFullD0.Forest
