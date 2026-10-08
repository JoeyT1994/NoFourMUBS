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
def state_2593522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 96 else (if j.val < 4 then 48 else 38)))
def hex_2593522 : String := "434044410542434005DC0505410505444142430A0606DC41420A43400544060705DC4005444106424340050605054105420705"
theorem cover_2593522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593522 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2593522)
  decide +kernel
#print axioms cover_2593522

def state_2593573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 97 else (if j.val < 4 then 48 else 38)))
def hex_2593573 : String := "43400544410643424005060505410543424005440505050505"
theorem cover_2593573 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593573 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_2593573)
  decide +kernel
#print axioms cover_2593573

def state_2593598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 39)))
def hex_2593598 : String := "41424340070707434005440A0505424340070707434005444105050705"
theorem cover_2593598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593598 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_2593598)
  decide +kernel
#print axioms cover_2593598

def state_2593627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 49 else 19)))
def hex_2593627 : String := "40054441050505"
theorem cover_2593627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593627 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2593627)
  decide +kernel
#print axioms cover_2593627

def state_2593634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 24 else 19)))
def hex_2593634 : String := "434005444105050505"
theorem cover_2593634 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593634 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2593634)
  decide +kernel
#print axioms cover_2593634

def state_2593647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 18)))
def hex_2593647 : String := "410505"
theorem cover_2593647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593647 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2593647)
  decide +kernel
#print axioms cover_2593647

def state_2593652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 36)))
def hex_2593652 : String := "4243400707400506430705"
theorem cover_2593652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593652 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2593652)
  decide +kernel
#print axioms cover_2593652

def state_2593664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 96 else (if j.val < 4 then 48 else 37)))
def hex_2593664 : String := "434041440542434005DC050544050541444243070606DC44424307400541060707DC4005414406424340050605054405424340054105050505"
theorem cover_2593664 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593664 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_2593664)
  decide +kernel
#print axioms cover_2593664

def state_2593721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 97 else (if j.val < 4 then 48 else 37)))
def hex_2593721 : String := "434005414406434240050605054405430A0505"
theorem cover_2593721 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593721 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_2593721)
  decide +kernel
#print axioms cover_2593721

def state_2593740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 18)))
def hex_2593740 : String := "44424340070740054107054307054243400A0A4005414405050A430A05"
theorem cover_2593740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593740 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_2593740)
  decide +kernel
#print axioms cover_2593740

def state_2593769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 49 else 18)))
def hex_2593769 : String := "40054144050505"
theorem cover_2593769 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593769 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2593769)
  decide +kernel
#print axioms cover_2593769
end Mub6.Numerical.CircleFullD0.Forest
