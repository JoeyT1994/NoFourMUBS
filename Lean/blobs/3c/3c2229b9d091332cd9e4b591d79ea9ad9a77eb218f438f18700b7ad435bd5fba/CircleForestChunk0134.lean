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
def state_969658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 57)))
def hex_969658 : String := "434007410808404142050707410842084443070807"
theorem cover_969658 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969658 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_969658)
  decide +kernel
#print axioms cover_969658

def state_969679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 28)))
def hex_969679 : String := "4142444308060844430A40410A42060A060842444340414206084206060606430808444340414208084244060809410809404142064406080606430808"
theorem cover_969679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969679 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_969679)
  decide +kernel
#print axioms cover_969679

def state_969740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 29)))
def hex_969740 : String := "404142080842430808430708410808"
theorem cover_969740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969740 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_969740)
  decide +kernel
#print axioms cover_969740

def state_969755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 14)))
def hex_969755 : String := "4440414205054243440605054344404105420543440605050605054142064344060505420643440640410506060640054105420505"
theorem cover_969755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969755 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 53) (hex := hex_969755)
  decide +kernel
#print axioms cover_969755

def state_969812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 28)))
def hex_969812 : String := "44434240070A074240414443074205070707410A444342400708074240414308054307440505410843080640070943084208074007410A0743074240070807"
theorem cover_969812 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969812 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_969812)
  decide +kernel
#print axioms cover_969812

def state_969875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 28)))
def hex_969875 : String := "44434207074240074144430942404107070607430742400708074409070707"
theorem cover_969875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969875 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_969875)
  decide +kernel
#print axioms cover_969875
end Mub6.Numerical.CircleFullD0.Forest
