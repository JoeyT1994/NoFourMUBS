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
def state_1483706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 35) else (if j.val < 3 then 39 else (if j.val < 4 then 103 else 107)))
def hex_1483706 : String := "424140430A4442410A050A0A430944420907094043444205060A440542050A434442054107050944054205410A05410A400A430707"
theorem cover_1483706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483706 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1483706)
  decide +kernel
#print axioms cover_1483706

def state_1483760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 26)))
def hex_1483760 : String := "4408420908"
theorem cover_1483760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483760 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1483760)
  decide +kernel
#print axioms cover_1483760

def state_1483766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 52)))
def hex_1483766 : String := "424140430844084205410905080508"
theorem cover_1483766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483766 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1483766)
  decide +kernel
#print axioms cover_1483766

def state_1483782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 17) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 53)))
def hex_1483782 : String := "410940430944050909"
theorem cover_1483782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483782 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1483782)
  decide +kernel
#print axioms cover_1483782

def state_1483792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 34) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 53)))
def hex_1483792 : String := "404344080944424109404308440709080742094105400A0708"
theorem cover_1483792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483792 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1483792)
  decide +kernel
#print axioms cover_1483792

def state_1483817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 35) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 53)))
def hex_1483817 : String := "404344084209084442414043084405090805074241094043094405090941404307070740430707074308440809"
theorem cover_1483817 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483817 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1483817)
  decide +kernel
#print axioms cover_1483817

def state_1483863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 27)))
def hex_1483863 : String := "41094043094207444107080709"
theorem cover_1483863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483863 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1483863)
  decide +kernel
#print axioms cover_1483863

def state_1483877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 27)))
def hex_1483877 : String := "40430542444105400A06050509"
theorem cover_1483877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483877 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1483877)
  decide +kernel
#print axioms cover_1483877

def state_1483890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 27)))
def hex_1483890 : String := "4043424409090A424441400A0940430A08090944410A400A430A4244410A400A09090A0A430942094441094043094209444109400909090909"
theorem cover_1483890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483890 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_1483890)
  decide +kernel
#print axioms cover_1483890
end Mub6.Numerical.CircleFullD0.Forest
