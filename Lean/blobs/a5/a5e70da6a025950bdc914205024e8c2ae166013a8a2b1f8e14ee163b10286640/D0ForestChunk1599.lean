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
def state_2256962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 85 else (if j.val < 4 then 92 else 107)))
def hex_2256962 : String := "404341420544404341050505434106050505050543414209440909420544400543090505410905"
theorem cover_2256962 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256962 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_2256962)
  decide +kernel
#print axioms cover_2256962

def state_2257001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 105) else (if j.val < 3 then 42 else (if j.val < 4 then 92 else 53)))
def hex_2257001 : String := "42054440084341420508080505"
theorem cover_2257001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257001 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2257001)
  decide +kernel
#print axioms cover_2257001

def state_2257014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 93 else 53)))
def hex_2257014 : String := "4142054440054341420544060505050505"
theorem cover_2257014 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257014 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_2257014)
  decide +kernel
#print axioms cover_2257014

def state_2257032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 52)))
def hex_2257032 : String := "08"
theorem cover_2257032 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257032 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2257032)
  decide +kernel
#print axioms cover_2257032

def state_2257034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 53)))
def hex_2257034 : String := "434142440640084341424406400543060506084142050605060808"
theorem cover_2257034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257034 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 27) (hex := hex_2257034)
  decide +kernel
#print axioms cover_2257034

def state_2257065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 106)))
def hex_2257065 : String := "40064341060808"
theorem cover_2257065 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257065 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2257065)
  decide +kernel
#print axioms cover_2257065

def state_2257073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 70 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 107)))
def hex_2257073 : String := "434142440640434106050543414209064205BE414205060506424408050841424408050808"
theorem cover_2257073 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257073 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_2257073)
  decide +kernel
#print axioms cover_2257073

def state_2257111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 71 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 184 else 107)))
def hex_2257111 : String := "41424440064341064209064106420906404341094209BE410905094406BE424440084341424406090608084043414205BE050543414205BE4205BE054408BE"
theorem cover_2257111 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257111 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_2257111)
  decide +kernel
#print axioms cover_2257111

def state_2257174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 71 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 185 else 107)))
def hex_2257174 : String := "4142444043410608054341074205060740050944064043BE08074244080508"
theorem cover_2257174 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257174 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_2257174)
  decide +kernel
#print axioms cover_2257174

def state_2257205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 53)))
def hex_2257205 : String := "440640084341060808"
theorem cover_2257205 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257205 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2257205)
  decide +kernel
#print axioms cover_2257205
end Mub6.Numerical.CircleFullD0.Forest
