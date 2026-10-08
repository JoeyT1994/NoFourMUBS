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
def state_69630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 9)))
def hex_69630 : String := "4244074041070A41070A07"
theorem cover_69630 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69630 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_69630)
  decide +kernel
#print axioms cover_69630

def state_69641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 9)))
def hex_69641 : String := "424407404143070743440742400641070A0A44084240084341070808084107434407424041070A07074407424340410709074009070744074041070A07"
theorem cover_69641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69641 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_69641)
  decide +kernel
#print axioms cover_69641

def state_69702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 9)))
def hex_69702 : String := "430A42440A40430A08430A4144084243400A410909090A0A0A"
theorem cover_69702 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69702 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 25) (hex := hex_69702)
  decide +kernel
#print axioms cover_69702

def state_69728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 9)))
def hex_69728 : String := "4307424407410743070706"
theorem cover_69728 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69728 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_69728)
  decide +kernel
#print axioms cover_69728

def state_69740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 9)))
def hex_69740 : String := "424407400A050A"
theorem cover_69740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69740 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_69740)
  decide +kernel
#print axioms cover_69740

def state_69747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 9)))
def hex_69747 : String := "4244430A40410708064340414407424305400A050A0505404144074243404109050509430A4041070806440A42050A414406420506054406430A400A06"
theorem cover_69747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69747 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_69747)
  decide +kernel
#print axioms cover_69747

def state_69808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 4)))
def hex_69808 : String := "430A44064041420A060A06"
theorem cover_69808 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69808 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_69808)
  decide +kernel
#print axioms cover_69808

def state_69819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
def hex_69819 : String := "42430A440A400A430A41424405050A0A0A"
theorem cover_69819 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69819 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_69819)
  decide +kernel
#print axioms cover_69819

def state_69836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
def hex_69836 : String := "4142434407414007050544064106430640424405050606430A06424305440543050506"
theorem cover_69836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69836 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_69836)
  decide +kernel
#print axioms cover_69836
end Mub6.Numerical.CircleFullPrototype.Forest
