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
def state_179481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 28)))
def hex_179481 : String := "4142080A4208400608"
theorem cover_179481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179481 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_179481)
  decide +kernel
#print axioms cover_179481

def state_179491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 48) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 29)))
def hex_179491 : String := "42400507404307440A410542050707"
theorem cover_179491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179491 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_179491)
  decide +kernel
#print axioms cover_179491

def state_179507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 29)))
def hex_179507 : String := "40434408094408420541050808"
theorem cover_179507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179507 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_179507)
  decide +kernel
#print axioms cover_179507

def state_179522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 58 else 29)))
def hex_179522 : String := "44064107424043064406090706"
theorem cover_179522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179522 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_179522)
  decide +kernel
#print axioms cover_179522

def state_179536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 59 else 58)))
def hex_179536 : String := "41420840440643060A08420806"
theorem cover_179536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179536 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_179536)
  decide +kernel
#print axioms cover_179536

def state_179550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 98) else (if j.val < 3 then 49 else (if j.val < 4 then 59 else 59)))
def hex_179550 : String := "4240050540430744410542050A0507"
theorem cover_179550 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179550 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_179550)
  decide +kernel
#print axioms cover_179550

def state_179566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 99) else (if j.val < 3 then 98 else (if j.val < 4 then 59 else 59)))
def hex_179566 : String := "40434408420541050944080508"
theorem cover_179566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179566 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_179566)
  decide +kernel
#print axioms cover_179566

def state_179580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 99) else (if j.val < 3 then 99 else (if j.val < 4 then 59 else 59)))
def hex_179580 : String := "434406414207060644414208060641420540430605430744070542404306054308084043064406964306440696"
theorem cover_179580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179580 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_179580)
  decide +kernel
#print axioms cover_179580

def state_179625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 99) else (if j.val < 3 then 99 else (if j.val < 4 then 59 else 59)))
def hex_179625 : String := "43440607440841420507420840430644069607"
theorem cover_179625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179625 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_179625)
  decide +kernel
#print axioms cover_179625

def state_179644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 49) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 29)))
def hex_179644 : String := "434407074408410742084043070807"
theorem cover_179644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179644 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_179644)
  decide +kernel
#print axioms cover_179644

def state_179660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 14)))
def hex_179660 : String := "4306440641424043440609094344060709094240430609430644064142400943440641070609094240064306440641090606400606"
theorem cover_179660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179660 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 53) (hex := hex_179660)
  decide +kernel
#print axioms cover_179660

def state_179714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 14)))
def hex_179714 : String := "4406410706"
theorem cover_179714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179714 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_179714)
  decide +kernel
#print axioms cover_179714

def state_179720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 28)))
def hex_179720 : String := "410A06"
theorem cover_179720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179720 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_179720)
  decide +kernel
#print axioms cover_179720

def state_179724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 48) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 29)))
def hex_179724 : String := "424043070A070A"
theorem cover_179724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179724 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_179724)
  decide +kernel
#print axioms cover_179724
end Mub6.Numerical.CircleFullPrototype.Forest
