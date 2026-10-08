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
def state_141480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 29)))
def hex_141480 : String := "42444340410708414244060A0A080743400A410A4243084408090A4007410742090744430A07430A07"
theorem cover_141480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141480 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_141480)
  decide +kernel
#print axioms cover_141480

def state_141521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 29)))
def hex_141521 : String := "424443084005414244050905054340414208060641420808080944430505430A4005410705"
theorem cover_141521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141521 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_141521)
  decide +kernel
#print axioms cover_141521

def state_141561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 56 else (if j.val < 4 then 20 else 58)))
def hex_141561 : String := "43404142060A080640410642064406434007060606"
theorem cover_141561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141561 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_141561)
  decide +kernel
#print axioms cover_141561

def state_141584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 56 else (if j.val < 4 then 40 else 59)))
def hex_141584 : String := "4142430A4406400A050A4243084440080640094142054308440605420808430A444008080A"
theorem cover_141584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141584 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_141584)
  decide +kernel
#print axioms cover_141584

def state_141621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 56) else (if j.val < 3 then 56 else (if j.val < 4 then 40 else 59)))
def hex_141621 : String := "414206430A4406400A064243440608440640410642060806430A440640410A42080A41064206430606"
theorem cover_141621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141621 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_141621)
  decide +kernel
#print axioms cover_141621

def state_141663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 56 else (if j.val < 4 then 41 else 59)))
def hex_141663 : String := "41424406070742444340090607094443400741074244064306060707434007410742444308070944070707"
theorem cover_141663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141663 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_141663)
  decide +kernel
#print axioms cover_141663
end Mub6.Numerical.CircleFullPrototype.Forest
