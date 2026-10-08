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
def state_53431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
def hex_53431 : String := "4408410707"
theorem cover_53431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53431 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_53431)
  decide +kernel
#print axioms cover_53431

def state_53438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_53438 : String := "4344404341090509430905404344410A42054340440A0A0A0A410A0A0A0A440A0A"
theorem cover_53438 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53438 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 33) (hex := hex_53438)
  decide +kernel
#print axioms cover_53438

def state_53473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
def hex_53473 : String := "40424341064405434042410705070740420906060643410644060606420606"
theorem cover_53473 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53473 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_53473)
  decide +kernel
#print axioms cover_53473

def state_53509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
def hex_53509 : String := "430606"
theorem cover_53509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53509 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_53509)
  decide +kernel
#print axioms cover_53509

def state_53516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 20)))
def hex_53516 : String := "4143410640420A060606434140420544054341064042050605060505410A40420544050A05"
theorem cover_53516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53516 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 37) (hex := hex_53516)
  decide +kernel
#print axioms cover_53516

def state_53553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 21)))
def hex_53553 : String := "4143440A080A4344410A4042054344410A05410A40420509050A05410A40420A4344410809080A0A0A"
theorem cover_53553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53553 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_53553)
  decide +kernel
#print axioms cover_53553

def state_53594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 10)))
def hex_53594 : String := "444106434241064044054342410605060605060641064342444106404342444106090906060641064009060606"
theorem cover_53594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53594 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 45) (hex := hex_53594)
  decide +kernel
#print axioms cover_53594

def state_53639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
def hex_53639 : String := "42440A0A06"
theorem cover_53639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53639 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_53639)
  decide +kernel
#print axioms cover_53639

def state_53644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 10)))
def hex_53644 : String := "4042440A0A06420A06"
theorem cover_53644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53644 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_53644)
  decide +kernel
#print axioms cover_53644

def state_53654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 11)))
def hex_53654 : String := "4308440608"
theorem cover_53654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53654 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_53654)
  decide +kernel
#print axioms cover_53654
end Mub6.Numerical.CircleFullPrototype.Forest
