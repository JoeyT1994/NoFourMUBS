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
def state_2254844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 24)))
def hex_2254844 : String := "43444105400805414042430A4441050A41070A050740420A080A44410708414042434441070841074008074407410740080707074008420607"
theorem cover_2254844 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254844 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_2254844)
  decide +kernel
#print axioms cover_2254844

def state_2254901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 24)))
def hex_2254901 : String := "400807"
theorem cover_2254901 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254901 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2254901)
  decide +kernel
#print axioms cover_2254901

def state_2254904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 24)))
def hex_2254904 : String := "424008430A0808"
theorem cover_2254904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254904 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2254904)
  decide +kernel
#print axioms cover_2254904

def state_2254918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 50)))
def hex_2254918 : String := "4243440A41420A0A0A44414240430A08430A440A410905080841424043090509404344080A0843440A0944080942050843440841400842430A08060808"
theorem cover_2254918 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254918 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2254918)
  decide +kernel
#print axioms cover_2254918

def state_2254980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 40 else (if j.val < 4 then 46 else 50)))
def hex_2254980 : String := "43440A0A44414042430A440A09430A44084107084209070A41404209430909090A"
theorem cover_2254980 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254980 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2254980)
  decide +kernel
#print axioms cover_2254980

def state_2255013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 41 else (if j.val < 4 then 46 else 50)))
def hex_2255013 : String := "4344410508414042430A44070A05070A444107084140424344070707070708"
theorem cover_2255013 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255013 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_2255013)
  decide +kernel
#print axioms cover_2255013

def state_2255044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 50)))
def hex_2255044 : String := "40420A08420A08"
theorem cover_2255044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255044 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_2255044)
  decide +kernel
#print axioms cover_2255044

def state_2255054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 40 else (if j.val < 4 then 46 else 51)))
def hex_2255054 : String := "434441090A094441090505"
theorem cover_2255054 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255054 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2255054)
  decide +kernel
#print axioms cover_2255054
end Mub6.Numerical.CircleFullD0.Forest
