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
def state_1493448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 49 else 30)))
def hex_1493448 : String := "42440A434006060644084308404142050542050508"
theorem cover_1493448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1493448)
  decide +kernel
#print axioms cover_1493448

def state_1493469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 49 else 30)))
def hex_1493469 : String := "4109420608"
theorem cover_1493469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493469 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1493469)
  decide +kernel
#print axioms cover_1493469

def state_1493474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 31)))
def hex_1493474 : String := "4340414205054205050640410642060506"
theorem cover_1493474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493474 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1493474)
  decide +kernel
#print axioms cover_1493474

def state_1493492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 15)))
def hex_1493492 : String := "06"
theorem cover_1493492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493492 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1493492)
  decide +kernel
#print axioms cover_1493492

def state_1493498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 38 else (if j.val < 4 then 50 else 30)))
def hex_1493498 : String := "444043410607060606"
theorem cover_1493498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493498 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1493498)
  decide +kernel
#print axioms cover_1493498

def state_1493510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 44) else (if j.val < 3 then 39 else (if j.val < 4 then 100 else 60)))
def hex_1493510 : String := "41424440430A070606444043084142090808084043410505410942060506420A4408404308414207050808"
theorem cover_1493510 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493510 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1493510)
  decide +kernel
#print axioms cover_1493510

def state_1493553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 44) else (if j.val < 3 then 39 else (if j.val < 4 then 101 else 60)))
def hex_1493553 : String := "4142440A064440434142074408070A0A0A404341060706060A"
theorem cover_1493553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493553 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1493553)
  decide +kernel
#print axioms cover_1493553

def state_1493578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 44) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 60)))
def hex_1493578 : String := "4341090A41060A"
theorem cover_1493578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493578 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1493578)
  decide +kernel
#print axioms cover_1493578

def state_1493585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 61)))
def hex_1493585 : String := "40434106420644400506050606"
theorem cover_1493585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493585 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1493585)
  decide +kernel
#print axioms cover_1493585

def state_1493598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 30)))
def hex_1493598 : String := "4206444041434206440A06070A0A06"
theorem cover_1493598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493598 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1493598)
  decide +kernel
#print axioms cover_1493598

def state_1493613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 30)))
def hex_1493613 : String := "43420A440A404143420644400508050A0A41060A0A"
theorem cover_1493613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493613 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 21) (hex := hex_1493613)
  decide +kernel
#print axioms cover_1493613

def state_1493634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 30)))
def hex_1493634 : String := "4106430A06"
theorem cover_1493634 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493634 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1493634)
  decide +kernel
#print axioms cover_1493634

def state_1493639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 31)))
def hex_1493639 : String := "40410643060606"
theorem cover_1493639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493639 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1493639)
  decide +kernel
#print axioms cover_1493639

def state_1493646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 15)))
def hex_1493646 : String := "4342440A064441430840420A0808084143400506404206050643084042050506420A440A414043420644414005060A0507060A"
theorem cover_1493646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493646 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_1493646)
  decide +kernel
#print axioms cover_1493646

def state_1493698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 7)))
def hex_1493698 : String := "440A400706"
theorem cover_1493698 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493698 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1493698)
  decide +kernel
#print axioms cover_1493698
end Mub6.Numerical.CircleFullD0.Forest
