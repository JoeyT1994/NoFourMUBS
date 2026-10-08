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
def state_1560286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 82 else 88)))
def hex_1560286 : String := "41404442890507074044428909424307410740440A0707074442890607"
theorem cover_1560286 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560286 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1560286)
  decide +kernel
#print axioms cover_1560286

def state_1560316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 120) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 88)))
def hex_1560316 : String := "404442894341054008074108400844420808084243070643050844428943054105404442890507074243070907"
theorem cover_1560316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560316 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1560316)
  decide +kernel
#print axioms cover_1560316

def state_1560364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 210 else (if j.val < 4 then 83 else 176)))
def hex_1560364 : String := "89"
theorem cover_1560364 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560364 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1560364)
  decide +kernel
#print axioms cover_1560364

def state_1560366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 211 else (if j.val < 4 then 166 else 176)))
def hex_1560366 : String := "41404442890908444289430541050942070740094409428909"
theorem cover_1560366 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560366 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1560366)
  decide +kernel
#print axioms cover_1560366

def state_1560391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 211 else (if j.val < 4 then 167 else 176)))
def hex_1560391 : String := "414008444289434108400844080808420808404442890908444289430941400844420808084008440642050642894341080908"
theorem cover_1560391 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560391 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1560391)
  decide +kernel
#print axioms cover_1560391

def state_1560444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 210 else (if j.val < 4 then 166 else 177)))
def hex_1560444 : String := "4140084442430708070740444208080844424341074044890707414008440807054307410840084489074243070807"
theorem cover_1560444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560444 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1560444)
  decide +kernel
#print axioms cover_1560444

def state_1560491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 210 else (if j.val < 4 then 167 else 177)))
def hex_1560491 : String := "41400644080840084442434108050543080808"
theorem cover_1560491 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560491 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1560491)
  decide +kernel
#print axioms cover_1560491

def state_1560510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 211 else (if j.val < 4 then 83 else 177)))
def hex_1560510 : String := "43414007074044090844424307410740080707074108400844424308080808"
theorem cover_1560510 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560510 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_1560510)
  decide +kernel
#print axioms cover_1560510

def state_1560543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 210 else (if j.val < 4 then 83 else 176)))
def hex_1560543 : String := "89"
theorem cover_1560543 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560543 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1560543)
  decide +kernel
#print axioms cover_1560543
end Mub6.Numerical.CircleFullD0.Forest
