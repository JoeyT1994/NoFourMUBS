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
def state_1007460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 42)))
def hex_1007460 : String := "43414240090A0505414209094240440543054109054405430541090505"
theorem cover_1007460 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007460 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1007460)
  decide +kernel
#print axioms cover_1007460

def state_1007490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 56 else 43)))
def hex_1007490 : String := "41424044090944090606420505"
theorem cover_1007490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007490 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1007490)
  decide +kernel
#print axioms cover_1007490

def state_1007504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 20 else (if j.val < 4 then 57 else 43)))
def hex_1007504 : String := "42400944090909"
theorem cover_1007504 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007504 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1007504)
  decide +kernel
#print axioms cover_1007504

def state_1007511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 20 else (if j.val < 4 then 57 else 43)))
def hex_1007511 : String := "42404443054109054341420905054109420A05444341420505054142090942400505054341424009080505414208094240444305080808054005440505"
theorem cover_1007511 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007511 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1007511)
  decide +kernel
#print axioms cover_1007511

def state_1007573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 42)))
def hex_1007573 : String := "430A410A424044054305070705"
theorem cover_1007573 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007573 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1007573)
  decide +kernel
#print axioms cover_1007573

def state_1007586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 43)))
def hex_1007586 : String := "43410642404405060605414240440806060642404443410A05410A074341064240050605410842080544074306084044050506"
theorem cover_1007586 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007586 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1007586)
  decide +kernel
#print axioms cover_1007586

def state_1007639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 42)))
def hex_1007639 : String := "4341420909424044064341090606440743410907410907404409094409430509410942400644064108064009440909"
theorem cover_1007639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007639 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_1007639)
  decide +kernel
#print axioms cover_1007639

def state_1007688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 20 else (if j.val < 4 then 58 else 43)))
def hex_1007688 : String := "4240090809"
theorem cover_1007688 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007688 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1007688)
  decide +kernel
#print axioms cover_1007688

def state_1007695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 40 else (if j.val < 4 then 58 else 43)))
def hex_1007695 : String := "44434109420605410906434109420A400944090941090A"
theorem cover_1007695 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007695 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1007695)
  decide +kernel
#print axioms cover_1007695
end Mub6.Numerical.CircleFullD0.Forest
