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
def state_159668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 56) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 20)))
def hex_159668 : String := "42444340410542054405050505434080050544434042410844088008080843408042410544060608404241054405054109440809420508"
theorem cover_159668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159668 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_159668)
  decide +kernel
#print axioms cover_159668

def state_159724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 56 else (if j.val < 4 then 30 else 20)))
def hex_159724 : String := "444340414209440980090A40410509054340804142054406060A404142054405054207444340094205410507050741054205440505"
theorem cover_159724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159724 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_159724)
  decide +kernel
#print axioms cover_159724

def state_159778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 30 else 40)))
def hex_159778 : String := "43404142440880080A084041424408434041050908050842090808"
theorem cover_159778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159778 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_159778)
  decide +kernel
#print axioms cover_159778

def state_159806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 60 else 41)))
def hex_159806 : String := "4080414244430608430640410942440505090644080942440A430A404241440A070A41440A090A0A4408430A404142440809080A08"
theorem cover_159806 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159806 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_159806)
  decide +kernel
#print axioms cover_159806

def state_159861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 114) else (if j.val < 3 then 57 else (if j.val < 4 then 61 else 41)))
def hex_159861 : String := "4244434041420544050542440505064105420508054340410A420744060641054205444307050740060544434006080643404109064109424408090906"
theorem cover_159861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159861 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_159861)
  decide +kernel
#print axioms cover_159861
end Mub6.Numerical.CircleFullPrototype.Forest
