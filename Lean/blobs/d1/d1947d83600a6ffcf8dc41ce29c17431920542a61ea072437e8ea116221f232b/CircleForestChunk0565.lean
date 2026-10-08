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
def state_374473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 11)))
def hex_374473 : String := "444008074042414307070841434442050542404405410705074044054143424005050A0505440541070544054205054344054205050542074107430505"
theorem cover_374473 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374473 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 61) (hex := hex_374473)
  decide +kernel
#print axioms cover_374473

def state_374534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
def hex_374534 : String := "41074344420840070742060A44074207400707"
theorem cover_374534 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374534 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_374534)
  decide +kernel
#print axioms cover_374534

def state_374554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
def hex_374554 : String := "440940410A4244090A090A"
theorem cover_374554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374554 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_374554)
  decide +kernel
#print axioms cover_374554

def state_374566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
def hex_374566 : String := "400907"
theorem cover_374566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374566 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_374566)
  decide +kernel
#print axioms cover_374566

def state_374571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
def hex_374571 : String := "42430A44070A0A"
theorem cover_374571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374571 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_374571)
  decide +kernel
#print axioms cover_374571

def state_374580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 5)))
def hex_374580 : String := "44090A"
theorem cover_374580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374580 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_374580)
  decide +kernel
#print axioms cover_374580

def state_374584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
def hex_374584 : String := "41074309400907"
theorem cover_374584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374584 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_374584)
  decide +kernel
#print axioms cover_374584

def state_374592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 11)))
def hex_374592 : String := "430A4440420709074042430A444107400505410A4042430A050A0A0A0A"
theorem cover_374592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374592 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 29) (hex := hex_374592)
  decide +kernel
#print axioms cover_374592

def state_374622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 11)))
def hex_374622 : String := "4440090A4042410A444309400505430A4042410A05090A090A"
theorem cover_374622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374622 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_374622)
  decide +kernel
#print axioms cover_374622

def state_374647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 11)))
def hex_374647 : String := "444042414305050505420505404241434440050540424405410A050A0A440540050543440540050505410A430A0542410A430A050A"
theorem cover_374647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374647 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_374647)
  decide +kernel
#print axioms cover_374647

def state_374700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 5)))
def hex_374700 : String := "430944090A"
theorem cover_374700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374700 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_374700)
  decide +kernel
#print axioms cover_374700

def state_374705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
def hex_374705 : String := "410A42430A44070A0A"
theorem cover_374705 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374705 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_374705)
  decide +kernel
#print axioms cover_374705
end Mub6.Numerical.CircleFullPrototype.Forest
