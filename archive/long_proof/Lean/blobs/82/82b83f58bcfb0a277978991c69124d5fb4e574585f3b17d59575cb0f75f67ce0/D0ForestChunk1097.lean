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
def state_1563617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 123) else (if j.val < 3 then 107 else (if j.val < 4 then 85 else 88)))
def hex_1563617 : String := "4044074342050905444342050605434241404405050605414009060642050A"
theorem cover_1563617 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563617 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1563617)
  decide +kernel
#print axioms cover_1563617

def state_1563652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 122) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 89)))
def hex_1563652 : String := "444243080843080808"
theorem cover_1563652 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563652 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1563652)
  decide +kernel
#print axioms cover_1563652

def state_1563663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 212 else (if j.val < 4 then 84 else 178)))
def hex_1563663 : String := "434140440808444243070A070740444243410805054308084208084442430641400506050642430741070507414008440A08404405084442050A420508"
theorem cover_1563663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563663 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1563663)
  decide +kernel
#print axioms cover_1563663

def state_1563724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 213 else (if j.val < 4 then 84 else 178)))
def hex_1563724 : String := "434140080740444243060808084406074140084442080808400844424341080608430608420808"
theorem cover_1563724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563724 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1563724)
  decide +kernel
#print axioms cover_1563724

def state_1563763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 179)))
def hex_1563763 : String := "4243410740080708430708"
theorem cover_1563763 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563763 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1563763)
  decide +kernel
#print axioms cover_1563763

def state_1563775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 123) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 89)))
def hex_1563775 : String := "444205430905424341080505430808"
theorem cover_1563775 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563775 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1563775)
  decide +kernel
#print axioms cover_1563775

def state_1563791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 123) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 178)))
def hex_1563791 : String := "42434140440505060505434140440642060606064140444205430505084406424305050605"
theorem cover_1563791 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563791 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1563791)
  decide +kernel
#print axioms cover_1563791
end Mub6.Numerical.CircleFullD0.Forest
