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
def state_1323264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 33 else 51)))
def hex_1323264 : String := "414205440A0542440605440A43404142050A42060A0A0A"
theorem cover_1323264 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323264 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1323264)
  decide +kernel
#print axioms cover_1323264

def state_1323287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 51)))
def hex_1323287 : String := "4341420544090542440A05440A404341420509420A0A0A0A0A"
theorem cover_1323287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323287 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1323287)
  decide +kernel
#print axioms cover_1323287

def state_1323312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 25)))
def hex_1323312 : String := "4142050A420A0A"
theorem cover_1323312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323312 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1323312)
  decide +kernel
#print axioms cover_1323312

def state_1323319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 25)))
def hex_1323319 : String := "434142050A420A0A0A"
theorem cover_1323319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323319 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1323319)
  decide +kernel
#print axioms cover_1323319

def state_1323328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 12)))
def hex_1323328 : String := "0A"
theorem cover_1323328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323328 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1323328)
  decide +kernel
#print axioms cover_1323328

def state_1323329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 12)))
def hex_1323329 : String := "0A"
theorem cover_1323329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323329 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1323329)
  decide +kernel
#print axioms cover_1323329

def state_1323330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 13)))
def hex_1323330 : String := "4043410542054440434105420544404341054205444043B7410542054443B7050543410542054440B70505050505050505050505430505"
theorem cover_1323330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323330 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 22) (count := 55) (hex := hex_1323330)
  decide +kernel
#print axioms cover_1323330

def state_1323389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 24) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 12)))
def hex_1323389 : String := "440942404309070906"
theorem cover_1323389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323389 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1323389)
  decide +kernel
#print axioms cover_1323389

def state_1323399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 24)))
def hex_1323399 : String := "420A09"
theorem cover_1323399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323399 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1323399)
  decide +kernel
#print axioms cover_1323399

def state_1323406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 50) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 25)))
def hex_1323406 : String := "440942404309070906"
theorem cover_1323406 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323406 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1323406)
  decide +kernel
#print axioms cover_1323406

def state_1323416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 50)))
def hex_1323416 : String := "420A09"
theorem cover_1323416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323416 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1323416)
  decide +kernel
#print axioms cover_1323416

def state_1323422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 32 else 51)))
def hex_1323422 : String := "414409424043094106440706090644424043090A0909424043B74144080844080843410944094240B70606414409420A06440A420A08400809"
theorem cover_1323422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323422 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1323422)
  decide +kernel
#print axioms cover_1323422

def state_1323479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 33 else 51)))
def hex_1323479 : String := "41440A424340070A0708440A424340080A0808"
theorem cover_1323479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323479 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1323479)
  decide +kernel
#print axioms cover_1323479

def state_1323498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 16 else 51)))
def hex_1323498 : String := "4341094409424043090A09060A"
theorem cover_1323498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323498 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1323498)
  decide +kernel
#print axioms cover_1323498

def state_1323511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 16 else 51)))
def hex_1323511 : String := "4043090809"
theorem cover_1323511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323511 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1323511)
  decide +kernel
#print axioms cover_1323511

def state_1323516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 25)))
def hex_1323516 : String := "41440A420707440A420A08"
theorem cover_1323516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323516 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1323516)
  decide +kernel
#print axioms cover_1323516
end Mub6.Numerical.CircleFullD0.Forest
