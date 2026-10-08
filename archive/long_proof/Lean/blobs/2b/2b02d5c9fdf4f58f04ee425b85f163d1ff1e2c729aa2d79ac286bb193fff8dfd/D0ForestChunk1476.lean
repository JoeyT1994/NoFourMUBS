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
def state_1654933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 177 else 199) else (if j.val < 3 then 122 else (if j.val < 4 then 104 else 82)))
def hex_1654933 : String := "43440A0844420A410A0A08"
theorem cover_1654933 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654933 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1654933)
  decide +kernel
#print axioms cover_1654933

def state_1654945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 198) else (if j.val < 3 then 123 else (if j.val < 4 then 104 else 82)))
def hex_1654945 : String := "40434405080543440A08440508"
theorem cover_1654945 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654945 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 13) (hex := hex_1654945)
  decide +kernel
#print axioms cover_1654945

def state_1654958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 199) else (if j.val < 3 then 123 else (if j.val < 4 then 104 else 82)))
def hex_1654958 : String := "40434442414043070543070540074307440607414005430705060844424105060542414005084006080643084442410A40430A050A4140050A40060808"
theorem cover_1654958 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654958 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1654958)
  decide +kernel
#print axioms cover_1654958

def state_1655019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 104 else 83)))
def hex_1655019 : String := "42414043084442410A080808080808"
theorem cover_1655019 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655019 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1655019)
  decide +kernel
#print axioms cover_1655019

def state_1655035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 105 else 82)))
def hex_1655035 : String := "424140054344050505404344054241054005434405420905050505434409424109094140050740434405080509074105400543440542410540050841050605"
theorem cover_1655035 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655035 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_1655035)
  decide +kernel
#print axioms cover_1655035

def state_1655099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 122 else (if j.val < 4 then 105 else 83)))
def hex_1655099 : String := "414043440508054344420A0808440542070540434442414005430805404308050841054005080844054241054005084105064308440708"
theorem cover_1655099 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655099 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1655099)
  decide +kernel
#print axioms cover_1655099

def state_1655154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 123 else (if j.val < 4 then 105 else 83)))
def hex_1655154 : String := "414005430805404344060805430844424105060508"
theorem cover_1655154 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1655154 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1655154)
  decide +kernel
#print axioms cover_1655154
end Mub6.Numerical.CircleFullD0.Forest
