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
def state_1554680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 42)))
def hex_1554680 : String := "42444143060A064143404208440505080943064042080A0844414306400A060641430540420A050A4306404244060A0606"
theorem cover_1554680 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554680 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_1554680)
  decide +kernel
#print axioms cover_1554680

def state_1554730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 43)))
def hex_1554730 : String := "43054042444105430509050505"
theorem cover_1554730 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554730 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1554730)
  decide +kernel
#print axioms cover_1554730

def state_1554744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 43)))
def hex_1554744 : String := "40424443054105404244434105064105404208080689444305410506054244060505430589440505424443054105060505"
theorem cover_1554744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554744 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 49) (hex := hex_1554744)
  decide +kernel
#print axioms cover_1554744

def state_1554797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 118) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 86)))
def hex_1554797 : String := "43404244410543054042064441050A05098905424441054305050505404206444341050A060609"
theorem cover_1554797 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554797 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 39) (hex := hex_1554797)
  decide +kernel
#print axioms cover_1554797

def state_1554842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 238) else (if j.val < 3 then 208 else (if j.val < 4 then 164 else 172)))
def hex_1554842 : String := "40424441430540424407050505430840070889444105430540420805080542440889440505"
theorem cover_1554842 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554842 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1554842)
  decide +kernel
#print axioms cover_1554842

def state_1554879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 238) else (if j.val < 3 then 208 else (if j.val < 4 then 165 else 172)))
def hex_1554879 : String := "404244410A07894441434042060505074340070707894244090944410A0A89"
theorem cover_1554879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554879 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1554879)
  decide +kernel
#print axioms cover_1554879

def state_1554910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 239) else (if j.val < 3 then 208 else (if j.val < 4 then 82 else 172)))
def hex_1554910 : String := "4340424408894441430808088942080840420744078942440789440889"
theorem cover_1554910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554910 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1554910)
  decide +kernel
#print axioms cover_1554910

def state_1554939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 119) else (if j.val < 3 then 208 else (if j.val < 4 then 82 else 173)))
def hex_1554939 : String := "89"
theorem cover_1554939 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554939 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1554939)
  decide +kernel
#print axioms cover_1554939
end Mub6.Numerical.CircleFullD0.Forest
