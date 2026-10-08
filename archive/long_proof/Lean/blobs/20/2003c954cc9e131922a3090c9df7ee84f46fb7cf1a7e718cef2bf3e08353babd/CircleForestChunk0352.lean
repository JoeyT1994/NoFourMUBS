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
def state_159922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 115) else (if j.val < 3 then 57 else (if j.val < 4 then 61 else 41)))
def hex_159922 : String := "4244434006424144050509414408434006080606064340420706420741440707070644064340064142440607060606"
theorem cover_159922 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159922 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_159922)
  decide +kernel
#print axioms cover_159922

def state_159969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 61 else 41)))
def hex_159969 : String := "41424405054408094244430A40420508054340420741070707074408434041424408070842440807080840414207060608"
theorem cover_159969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_159969 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_159969)
  decide +kernel
#print axioms cover_159969

def state_160018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 20)))
def hex_160018 : String := "41420544080942440A4306054408434041060A06404108424405430A050808"
theorem cover_160018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160018 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_160018)
  decide +kernel
#print axioms cover_160018

def state_160049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 31 else 20)))
def hex_160049 : String := "404142054405054244050544434041420506060840060543404142050606410542054406430705400605410542054405434041054205080505"
theorem cover_160049 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160049 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_160049)
  decide +kernel
#print axioms cover_160049

def state_160107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 30 else 20)))
def hex_160107 : String := "404142440843094041084244080908080842440843404142800842800541084244080908404142440609060608440843080808"
theorem cover_160107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160107 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_160107)
  decide +kernel
#print axioms cover_160107
end Mub6.Numerical.CircleFullPrototype.Forest
