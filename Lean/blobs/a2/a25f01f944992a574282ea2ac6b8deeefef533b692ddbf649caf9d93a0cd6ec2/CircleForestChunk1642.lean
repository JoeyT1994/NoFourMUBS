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
def state_2267304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 7)))
def hex_2267304 : String := "4442414307444007420741050707074143050543070907"
theorem cover_2267304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267304 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_2267304)
  decide +kernel
#print axioms cover_2267304

def state_2267331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 20 else 14)))
def hex_2267331 : String := "404405074405420805"
theorem cover_2267331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267331 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2267331)
  decide +kernel
#print axioms cover_2267331

def state_2267341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 21 else 14)))
def hex_2267341 : String := "444241430505430744400742070507410543050542410807410543074007440707"
theorem cover_2267341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267341 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_2267341)
  decide +kernel
#print axioms cover_2267341

def state_2267374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 21 else 14)))
def hex_2267374 : String := "44424105430540440542080544050805424108430808410543054044050808"
theorem cover_2267374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267374 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_2267374)
  decide +kernel
#print axioms cover_2267374

def state_2267406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 20 else 14)))
def hex_2267406 : String := "400744420740070507"
theorem cover_2267406 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267406 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2267406)
  decide +kernel
#print axioms cover_2267406

def state_2267416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 21 else 14)))
def hex_2267416 : String := "444207430744070707"
theorem cover_2267416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267416 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2267416)
  decide +kernel
#print axioms cover_2267416

def state_2267427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 21 else 28)))
def hex_2267427 : String := "434007440A0740444142070A07074441420A050A414243070A4307440A40070807"
theorem cover_2267427 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267427 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_2267427)
  decide +kernel
#print axioms cover_2267427

def state_2267460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 21 else 28)))
def hex_2267460 : String := "43404405074405410507404441050741420705074441050A41424305440540050505420743050A"
theorem cover_2267460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267460 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_2267460)
  decide +kernel
#print axioms cover_2267460

def state_2267499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 21 else 29)))
def hex_2267499 : String := "420743074007444142430740070843054005050741420743070807"
theorem cover_2267499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267499 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_2267499)
  decide +kernel
#print axioms cover_2267499

def state_2267527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 14)))
def hex_2267527 : String := "4305400505"
theorem cover_2267527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267527 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2267527)
  decide +kernel
#print axioms cover_2267527

def state_2267533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 20 else 14)))
def hex_2267533 : String := "40074405420705"
theorem cover_2267533 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267533 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2267533)
  decide +kernel
#print axioms cover_2267533
end Mub6.Numerical.CircleFullD0.Forest
