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
def state_1645168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 20)))
def hex_1645168 : String := "41404342080805434206440606074043424407410643060744084143400806084340420808060808434206444107070607"
theorem cover_1645168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645168 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1645168)
  decide +kernel
#print axioms cover_1645168

def state_1645218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 20)))
def hex_1645218 : String := "4005434244054106404306050644054105400543060505"
theorem cover_1645218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645218 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1645218)
  decide +kernel
#print axioms cover_1645218

def state_1645244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 49) else (if j.val < 3 then 58 else (if j.val < 4 then 52 else 20)))
def hex_1645244 : String := "4408414340054208440508054340420844050842440841064306084408414309084309400808400808"
theorem cover_1645244 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645244 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_1645244)
  decide +kernel
#print axioms cover_1645244

def state_1645285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 49) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 20)))
def hex_1645285 : String := "44054105434042440509054244084109430940084408094405094005420805"
theorem cover_1645285 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645285 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 31) (hex := hex_1645285)
  decide +kernel
#print axioms cover_1645285

def state_1645316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 53 else 20)))
def hex_1645316 : String := "05"
theorem cover_1645316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645316 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1645316)
  decide +kernel
#print axioms cover_1645316

def state_1645319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 58 else (if j.val < 4 then 52 else 20)))
def hex_1645319 : String := "4441400808400843420644070607414043060806404342064441430608430608064244070644074108400807430607"
theorem cover_1645319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645319 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1645319)
  decide +kernel
#print axioms cover_1645319

def state_1645367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 40)))
def hex_1645367 : String := "41400543440508054043440542080805434408424108A041400808A008"
theorem cover_1645367 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645367 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1645367)
  decide +kernel
#print axioms cover_1645367
end Mub6.Numerical.CircleFullD0.Forest
