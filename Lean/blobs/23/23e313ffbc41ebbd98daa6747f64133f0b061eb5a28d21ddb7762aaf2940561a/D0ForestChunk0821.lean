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
def state_1497673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 40 else (if j.val < 4 then 102 else 59)))
def hex_1497673 : String := "4244400A054043414209440809420A0841420A440A40430907090A434109080A440840430841424408404308410942090808084244084043080A080808"
theorem cover_1497673 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497673 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 61) (hex := hex_1497673)
  decide +kernel
#print axioms cover_1497673

def state_1497736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 80 else (if j.val < 4 then 103 else 59)))
def hex_1497736 : String := "44054043410942050941060506"
theorem cover_1497736 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497736 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1497736)
  decide +kernel
#print axioms cover_1497736

def state_1497750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 118)))
def hex_1497750 : String := "40434144054205404308410905084405420508414405420505054341090505"
theorem cover_1497750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497750 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_1497750)
  decide +kernel
#print axioms cover_1497750

def state_1497783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 206 else 119)))
def hex_1497783 : String := "41420944404309090909424440434109420509410505090944404308414408420908440542050608404341094209084109420944080909"
theorem cover_1497783 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497783 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1497783)
  decide +kernel
#print axioms cover_1497783

def state_1497838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 207 else 119)))
def hex_1497838 : String := "414209444043410909410988090988"
theorem cover_1497838 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497838 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1497838)
  decide +kernel
#print axioms cover_1497838

def state_1497853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 86) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 119)))
def hex_1497853 : String := "4309410988"
theorem cover_1497853 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497853 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1497853)
  decide +kernel
#print axioms cover_1497853

def state_1497859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 80 else (if j.val < 4 then 103 else 59)))
def hex_1497859 : String := "4405400A0A"
theorem cover_1497859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497859 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1497859)
  decide +kernel
#print axioms cover_1497859

def state_1497865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 118)))
def hex_1497865 : String := "40434105050505"
theorem cover_1497865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497865 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1497865)
  decide +kernel
#print axioms cover_1497865

def state_1497875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 174) else (if j.val < 3 then 81 else (if j.val < 4 then 206 else 119)))
def hex_1497875 : String := "42440A4043414207090A4142054405070A430909444043064108050840434108084142444043080508404309070908424405400A08084308410808"
theorem cover_1497875 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497875 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1497875)
  decide +kernel
#print axioms cover_1497875
end Mub6.Numerical.CircleFullD0.Forest
