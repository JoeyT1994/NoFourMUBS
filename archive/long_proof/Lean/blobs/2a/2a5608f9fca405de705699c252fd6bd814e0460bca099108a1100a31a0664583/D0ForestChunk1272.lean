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
def state_1605761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 41) else (if j.val < 3 then 105 else (if j.val < 4 then 60 else 99)))
def hex_1605761 : String := "414344054005429F054405400505434440054241054344059F44059F0540429F05429F410A0A444005424105050540429F05429F410543440540050A05"
theorem cover_1605761 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605761 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1605761)
  decide +kernel
#print axioms cover_1605761

def state_1605823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 98)))
def hex_1605823 : String := "40054241050805"
theorem cover_1605823 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605823 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1605823)
  decide +kernel
#print axioms cover_1605823

def state_1605831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 99)))
def hex_1605831 : String := "4241050805"
theorem cover_1605831 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605831 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1605831)
  decide +kernel
#print axioms cover_1605831

def state_1605840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 122 else 198)))
def hex_1605840 : String := "40054241050805"
theorem cover_1605840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605840 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1605840)
  decide +kernel
#print axioms cover_1605840

def state_1605847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 122 else 199)))
def hex_1605847 : String := "404241050805424143444005424105070540420A05420A4105439F0644054006420A0543440840084208414309080808410543440540054241050905440506"
theorem cover_1605847 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605847 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1605847)
  decide +kernel
#print axioms cover_1605847

def state_1605910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 123 else 99)))
def hex_1605910 : String := "440540064241060805"
theorem cover_1605910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605910 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1605910)
  decide +kernel
#print axioms cover_1605910

def state_1605919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 83) else (if j.val < 3 then 104 else (if j.val < 4 then 61 else 99)))
def hex_1605919 : String := "434408400842084143444005420805400809080808"
theorem cover_1605919 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605919 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 21) (hex := hex_1605919)
  decide +kernel
#print axioms cover_1605919

def state_1605940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 41) else (if j.val < 3 then 105 else (if j.val < 4 then 61 else 99)))
def hex_1605940 : String := "410543440540054241054344054005090605440506"
theorem cover_1605940 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605940 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 21) (hex := hex_1605940)
  decide +kernel
#print axioms cover_1605940

def state_1605961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 53 else (if j.val < 4 then 30 else 49)))
def hex_1605961 : String := "41054344054005424105050505"
theorem cover_1605961 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605961 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1605961)
  decide +kernel
#print axioms cover_1605961

def state_1605974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 24)))
def hex_1605974 : String := "440540054241054344400505400642410608060605"
theorem cover_1605974 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605974 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 21) (hex := hex_1605974)
  decide +kernel
#print axioms cover_1605974

def state_1605995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 15 else 24)))
def hex_1605995 : String := "05"
theorem cover_1605995 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605995 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1605995)
  decide +kernel
#print axioms cover_1605995
end Mub6.Numerical.CircleFullD0.Forest
