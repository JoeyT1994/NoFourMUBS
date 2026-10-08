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
def state_1554942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 238) else (if j.val < 3 then 209 else (if j.val < 4 then 82 else 172)))
def hex_1554942 : String := "43054042444143050543404207050507894441054305400705054244410543050A0505"
theorem cover_1554942 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554942 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1554942)
  decide +kernel
#print axioms cover_1554942

def state_1554977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 239) else (if j.val < 3 then 209 else (if j.val < 4 then 82 else 172)))
def hex_1554977 : String := "434042444143054009060689090640424407894441434009050707894244414308070889444143050A0689"
theorem cover_1554977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554977 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1554977)
  decide +kernel
#print axioms cover_1554977

def state_1555020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 209 else (if j.val < 4 then 82 else 173)))
def hex_1555020 : String := "89"
theorem cover_1555020 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555020 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1555020)
  decide +kernel
#print axioms cover_1555020

def state_1555021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 119) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 86)))
def hex_1555021 : String := "4244414308404209440809084306088944414305404244050505054306404208060689"
theorem cover_1555021 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555021 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1555021)
  decide +kernel
#print axioms cover_1555021

def state_1555056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 119) else (if j.val < 3 then 104 else (if j.val < 4 then 83 else 86)))
def hex_1555056 : String := "40424443410A07078944434140420A0A0A400742070A0A8942094443410A0A0989"
theorem cover_1555056 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555056 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1555056)
  decide +kernel
#print axioms cover_1555056

def state_1555089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 87)))
def hex_1555089 : String := "89"
theorem cover_1555089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555089 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1555089)
  decide +kernel
#print axioms cover_1555089

def state_1555092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 118) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 86)))
def hex_1555092 : String := "430540424443050A050505"
theorem cover_1555092 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555092 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1555092)
  decide +kernel
#print axioms cover_1555092

def state_1555104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 119) else (if j.val < 3 then 105 else (if j.val < 4 then 82 else 86)))
def hex_1555104 : String := "4042444105430540424441430540070509890942440689058944050542444105060505"
theorem cover_1555104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555104 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 35) (hex := hex_1555104)
  decide +kernel
#print axioms cover_1555104

def state_1555141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 210 else (if j.val < 4 then 83 else 86)))
def hex_1555141 : String := "4443414042440A0A440505420A05404244078944078942440A0A440A89410A0A89"
theorem cover_1555141 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555141 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_1555141)
  decide +kernel
#print axioms cover_1555141
end Mub6.Numerical.CircleFullD0.Forest
