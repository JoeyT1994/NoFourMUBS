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
def state_2250583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 183 else 110)))
def hex_2250583 : String := "414208444043080A08084244400708074440434142074406070741424407070A0743410842074409074142080A424440070807440A0A40430741080708"
theorem cover_2250583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250583 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2250583)
  decide +kernel
#print axioms cover_2250583

def state_2250644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 111)))
def hex_2250644 : String := "40430741080708"
theorem cover_2250644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250644 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2250644)
  decide +kernel
#print axioms cover_2250644

def state_2250651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 55)))
def hex_2250651 : String := "4341084208444008080841084208444043084108BE0808"
theorem cover_2250651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250651 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_2250651)
  decide +kernel
#print axioms cover_2250651

def state_2250677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 26)))
def hex_2250677 : String := "434144420906420940430909094442054007434144064205060741440505054205400543070541444205060505"
theorem cover_2250677 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250677 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_2250677)
  decide +kernel
#print axioms cover_2250677

def state_2250723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 26)))
def hex_2250723 : String := "4144090944420940434144060944420706420540050941440905054341094442094043060909094109440905420540434109050509"
theorem cover_2250723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250723 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_2250723)
  decide +kernel
#print axioms cover_2250723

def state_2250776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 26)))
def hex_2250776 : String := "4109444205400543090505"
theorem cover_2250776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250776 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2250776)
  decide +kernel
#print axioms cover_2250776

def state_2250787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 27)))
def hex_2250787 : String := "404341080505434108420544090509"
theorem cover_2250787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250787 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_2250787)
  decide +kernel
#print axioms cover_2250787
end Mub6.Numerical.CircleFullD0.Forest
