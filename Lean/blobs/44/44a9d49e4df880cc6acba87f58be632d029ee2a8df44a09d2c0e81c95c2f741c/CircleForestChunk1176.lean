import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1582711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 53 else 51)))
def hex_1582711 : String := "414244434007094005094340074142440706070706440943070642444307400741424407070707430707440707"
theorem cover_1582711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582711 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1582711)
  decide +kernel
#print axioms cover_1582711

def state_1582759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 98 else (if j.val < 4 then 53 else 102)))
def hex_1582759 : String := "4340094108094009410809"
theorem cover_1582759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582759 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1582759)
  decide +kernel
#print axioms cover_1582759

def state_1582771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 98 else (if j.val < 4 then 106 else 103)))
def hex_1582771 : String := "404142444308094308400608084244434007094007094307074409074108424443080843050508"
theorem cover_1582771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582771 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 39) (hex := hex_1582771)
  decide +kernel
#print axioms cover_1582771

def state_1582810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 98 else (if j.val < 4 then 107 else 103)))
def hex_1582810 : String := "404142444309060606424443400709400609434006410607064409064108424443080843080808"
theorem cover_1582810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582810 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1582810)
  decide +kernel
#print axioms cover_1582810

def state_1582849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 99 else (if j.val < 4 then 53 else 51)))
def hex_1582849 : String := "44094340410807084041060608"
theorem cover_1582849 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582849 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1582849)
  decide +kernel
#print axioms cover_1582849

def state_1582865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 106 else 102)))
def hex_1582865 : String := "40414244094307090942440607074142060906"
theorem cover_1582865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582865 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1582865)
  decide +kernel
#print axioms cover_1582865

def state_1582884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 107 else 102)))
def hex_1582884 : String := "404142440943090909424409430707440707414244094340090640090909424406430540410905054409430909"
theorem cover_1582884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582884 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1582884)
  decide +kernel
#print axioms cover_1582884

def state_1582930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 106 else 103)))
def hex_1582930 : String := "40414244070707074142440505444308084305054205440505"
theorem cover_1582930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582930 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 25) (hex := hex_1582930)
  decide +kernel
#print axioms cover_1582930

def state_1582956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 107 else 103)))
def hex_1582956 : String := "41424443074007410707070707"
theorem cover_1582956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582956 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1582956)
  decide +kernel
#print axioms cover_1582956
end Mub6.Numerical.CircleFullD0.Forest
