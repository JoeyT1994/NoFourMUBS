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
def state_978686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 177) else (if j.val < 3 then 126 else (if j.val < 4 then 174 else 115)))
def hex_978686 : String := "444240414307440907070909420807"
theorem cover_978686 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978686 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_978686)
  decide +kernel
#print axioms cover_978686

def state_978701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 177) else (if j.val < 3 then 126 else (if j.val < 4 then 175 else 115)))
def hex_978701 : String := "4442404143444240414309060A0685420585440A420585434409070A414344064205090606854240410507410543080585"
theorem cover_978701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978701 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 49) (hex := hex_978701)
  decide +kernel
#print axioms cover_978701

def state_978750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 127 else (if j.val < 4 then 87 else 115)))
def hex_978750 : String := "85"
theorem cover_978750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978750 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_978750)
  decide +kernel
#print axioms cover_978750

def state_978751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 89) else (if j.val < 3 then 63 else (if j.val < 4 then 43 else 57)))
def hex_978751 : String := "434405074442400A090542400741434409074442400A068542400708074307074007418507"
theorem cover_978751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978751 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_978751)
  decide +kernel
#print axioms cover_978751

def state_978788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 28)))
def hex_978788 : String := "43440507440A42400A414344090744064206070A400741430544050707"
theorem cover_978788 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978788 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_978788)
  decide +kernel
#print axioms cover_978788

def state_978818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 29)))
def hex_978818 : String := "4041430705074143444205400741080705054307444205400741050705"
theorem cover_978818 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978818 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_978818)
  decide +kernel
#print axioms cover_978818

def state_978847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 29)))
def hex_978847 : String := "400741434442400708070744424041430705074143080543074442050805400741430744424041430605074143080508850843070708430707"
theorem cover_978847 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978847 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 57) (hex := hex_978847)
  decide +kernel
#print axioms cover_978847

def state_978904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
def hex_978904 : String := "43444240070905074442400A41434409070A0A40074143070A09424007414307070707"
theorem cover_978904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978904 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_978904)
  decide +kernel
#print axioms cover_978904
end Mub6.Numerical.CircleFullD0.Forest
