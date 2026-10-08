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
def state_1332731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 61 else (if j.val < 4 then 95 else 50)))
def hex_1332731 : String := "444007414243440740050A070A074041420508054142054344404108050A40410805410805440A0905"
theorem cover_1332731 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332731 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1332731)
  decide +kernel
#print axioms cover_1332731

def state_1332772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 47 else 51)))
def hex_1332772 : String := "4108420543400544414205430744400507070505400544414205434440050905090505"
theorem cover_1332772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332772 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 35) (hex := hex_1332772)
  decide +kernel
#print axioms cover_1332772

def state_1332808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 46 else 25)))
def hex_1332808 : String := "4044410809410842080844414243440907444009054008070542430944094009414243064406060606094107424307400A0743074044090707"
theorem cover_1332808 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332808 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 57) (hex := hex_1332808)
  decide +kernel
#print axioms cover_1332808

def state_1332866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 25)))
def hex_1332866 : String := "44410842434007440741080907094108424308400608434008084008440808"
theorem cover_1332866 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332866 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1332866)
  decide +kernel
#print axioms cover_1332866

def state_1332899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 50)))
def hex_1332899 : String := "4243444008410542434405050A054008410542430808054440080A0805"
theorem cover_1332899 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332899 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1332899)
  decide +kernel
#print axioms cover_1332899

def state_1332931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 94 else 100)))
def hex_1332931 : String := "4041090941424306440640410A0606430644060606"
theorem cover_1332931 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332931 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1332931)
  decide +kernel
#print axioms cover_1332931

def state_1332953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 94 else 101)))
def hex_1332953 : String := "4142434409084440084108080843090842430944070509"
theorem cover_1332953 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332953 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1332953)
  decide +kernel
#print axioms cover_1332953

def state_1332979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 74) else (if j.val < 3 then 124 else (if j.val < 4 then 188 else 101)))
def hex_1332979 : String := "444041080606404107424306080606"
theorem cover_1332979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332979 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1332979)
  decide +kernel
#print axioms cover_1332979
end Mub6.Numerical.CircleFullD0.Forest
