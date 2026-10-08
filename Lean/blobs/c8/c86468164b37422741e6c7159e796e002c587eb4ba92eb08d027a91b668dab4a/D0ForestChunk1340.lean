import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1622352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 102) else (if j.val < 3 then 105 else (if j.val < 4 then 96 else 33)))
def hex_1622352 : String := "4443414206074240440743064106070607410842400808400808434106420607414206084240444306080606404443070843070844430708430608"
theorem cover_1622352 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622352 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1622352)
  decide +kernel
#print axioms cover_1622352

def state_1622417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 206) else (if j.val < 3 then 208 else (if j.val < 4 then 192 else 66)))
def hex_1622417 : String := "404443094109090944430641064206400A0606"
theorem cover_1622417 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622417 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1622417)
  decide +kernel
#print axioms cover_1622417

def state_1622437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 152 else 206) else (if j.val < 3 then 209 else (if j.val < 4 then 192 else 66)))
def hex_1622437 : String := "44430941090909"
theorem cover_1622437 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622437 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1622437)
  decide +kernel
#print axioms cover_1622437

def state_1622445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 153 else 206) else (if j.val < 3 then 209 else (if j.val < 4 then 192 else 132)))
def hex_1622445 : String := "4341420607420907414240444309080906400744070742404443090A09444341050541420540070542050543054105054044070744074307410707"
theorem cover_1622445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622445 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1622445)
  decide +kernel
#print axioms cover_1622445

def state_1622504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 153 else 206) else (if j.val < 3 then 209 else (if j.val < 4 then 192 else 133)))
def hex_1622504 : String := "430941420609420909"
theorem cover_1622504 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622504 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1622504)
  decide +kernel
#print axioms cover_1622504

def state_1622514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 207) else (if j.val < 3 then 208 else (if j.val < 4 then 192 else 66)))
def hex_1622514 : String := "404443090A094443410505414205400A054205054305410505"
theorem cover_1622514 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622514 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1622514)
  decide +kernel
#print axioms cover_1622514

def state_1622539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 207) else (if j.val < 3 then 209 else (if j.val < 4 then 192 else 66)))
def hex_1622539 : String := "40444309410909094443414205074205054142400A05404407094407430541050542400A05400605430941420509420505"
theorem cover_1622539 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622539 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1622539)
  decide +kernel
#print axioms cover_1622539

def state_1622590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 206) else (if j.val < 3 then 208 else (if j.val < 4 then 193 else 66)))
def hex_1622590 : String := "400A4443414206400806420A0A41080A4341060A0A"
theorem cover_1622590 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622590 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1622590)
  decide +kernel
#print axioms cover_1622590
end Mub6.Numerical.CircleFullD0.Forest
