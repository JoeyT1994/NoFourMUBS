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
def state_375461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 45) else (if j.val < 3 then 39 else (if j.val < 4 then 46 else 48)))
def hex_375461 : String := "4443410840424443080608074244439B4108400642440509064308080841084006424406080608"
theorem cover_375461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375461 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 39) (hex := hex_375461)
  decide +kernel
#print axioms cover_375461

def state_375501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 45) else (if j.val < 3 then 38 else (if j.val < 4 then 46 else 48)))
def hex_375501 : String := "444341094209090909"
theorem cover_375501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375501 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_375501)
  decide +kernel
#print axioms cover_375501

def state_375512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 45) else (if j.val < 3 then 39 else (if j.val < 4 then 92 else 96)))
def hex_375512 : String := "4140424443080808080A404244439B4140420908094042094405084209440509439B41080944430A08084244430A09430A090A"
theorem cover_375512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375512 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_375512)
  decide +kernel
#print axioms cover_375512

def state_375563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 45) else (if j.val < 3 then 39 else (if j.val < 4 then 93 else 96)))
def hex_375563 : String := "4140084207084042094443080508420944430A0509"
theorem cover_375563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375563 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_375563)
  decide +kernel
#print axioms cover_375563

def state_375584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 45) else (if j.val < 3 then 39 else (if j.val < 4 then 46 else 97)))
def hex_375584 : String := "43410840424443080808084209084108400809"
theorem cover_375584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375584 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_375584)
  decide +kernel
#print axioms cover_375584

def state_375603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 49)))
def hex_375603 : String := "410840420908420908"
theorem cover_375603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375603 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_375603)
  decide +kernel
#print axioms cover_375603

def state_375612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 24)))
def hex_375612 : String := "4441404209080940420943440608060909"
theorem cover_375612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375612 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_375612)
  decide +kernel
#print axioms cover_375612

def state_375629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 25)))
def hex_375629 : String := "404209084209430808"
theorem cover_375629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375629 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_375629)
  decide +kernel
#print axioms cover_375629

def state_375641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 24)))
def hex_375641 : String := "424144434007420A070A0A0707"
theorem cover_375641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375641 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_375641)
  decide +kernel
#print axioms cover_375641

def state_375655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 22 else 24)))
def hex_375655 : String := "4144430640420A444143400A060A0A41430609060606444306400A0606"
theorem cover_375655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375655 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_375655)
  decide +kernel
#print axioms cover_375655

def state_375687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 44 else 48)))
def hex_375687 : String := "40424441430640070607060742064441060606"
theorem cover_375687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375687 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_375687)
  decide +kernel
#print axioms cover_375687
end Mub6.Numerical.CircleFullPrototype.Forest
