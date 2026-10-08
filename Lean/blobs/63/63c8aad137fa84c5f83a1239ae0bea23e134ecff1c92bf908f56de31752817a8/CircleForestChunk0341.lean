import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_157243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 21 else 14)))
def hex_157243 : String := "4406404341064206440640434142064405400706420A050A0641060A06"
theorem cover_157243 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157243 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 29) (hex := hex_157243)
  decide +kernel
#print axioms cover_157243

def state_157272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 21 else 14)))
def hex_157272 : String := "440640434142440640070609424405404305050905410742440540050A0543094106420609"
theorem cover_157272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157272 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_157272)
  decide +kernel
#print axioms cover_157272

def state_157309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 14)))
def hex_157309 : String := "42440640430A0A0A4405400543090A"
theorem cover_157309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157309 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_157309)
  decide +kernel
#print axioms cover_157309

def state_157324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
def hex_157324 : String := "43094106420609"
theorem cover_157324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157324 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_157324)
  decide +kernel
#print axioms cover_157324

def state_157339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 56) else (if j.val < 3 then 56 else (if j.val < 4 then 20 else 30)))
def hex_157339 : String := "4344404105420543050505054440820505"
theorem cover_157339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157339 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_157339)
  decide +kernel
#print axioms cover_157339

def state_157356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 56) else (if j.val < 3 then 57 else (if j.val < 4 then 20 else 30)))
def hex_157356 : String := "43444042410A43098209094042050A05444082424105430606094042410543050541084344400A4105420508050842054105430505"
theorem cover_157356 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157356 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_157356)
  decide +kernel
#print axioms cover_157356

def state_157410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 56 else (if j.val < 4 then 20 else 30)))
def hex_157410 : String := "43444041420743078207070744408241420543060607404142054305054209430709410507"
theorem cover_157410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157410 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 37) (hex := hex_157410)
  decide +kernel
#print axioms cover_157410

def state_157448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 40 else 30)))
def hex_157448 : String := "4440414243078209420709074041424307444041050707050A0707"
theorem cover_157448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_157448)
  decide +kernel
#print axioms cover_157448
end Mub6.Numerical.CircleFullPrototype.Forest
