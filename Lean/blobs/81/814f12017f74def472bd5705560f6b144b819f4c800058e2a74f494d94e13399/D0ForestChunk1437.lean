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
def state_1645638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 21)))
def hex_1645638 : String := "40434406064408420641084408084306440606"
theorem cover_1645638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645638 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1645638)
  decide +kernel
#print axioms cover_1645638

def state_1645657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 21)))
def hex_1645657 : String := "4043444206414306400806434044060606404408080642064106430644060644420741084008084206414408400806444008430607400A4306084306440706"
theorem cover_1645657 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645657 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1645657)
  decide +kernel
#print axioms cover_1645657

def state_1645722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 21)))
def hex_1645722 : String := "4344424105430940054405050909440542410544050909"
theorem cover_1645722 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645722 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1645722)
  decide +kernel
#print axioms cover_1645722

def state_1645745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 21)))
def hex_1645745 : String := "434442064140050640430944050506420609444241054005074105400505424140440506064044430605060641400544050640440509444306054306420605"
theorem cover_1645745 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645745 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1645745)
  decide +kernel
#print axioms cover_1645745

def state_1645810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 52 else 21)))
def hex_1645810 : String := "44424143094009440809434009444206090940440809444241084340080608410843090842410609094109430940094442410943090A090909"
theorem cover_1645810 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645810 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1645810)
  decide +kernel
#print axioms cover_1645810
end Mub6.Numerical.CircleFullD0.Forest
