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
def state_2272826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 13)))
def hex_2272826 : String := "42440A0944430A420A440A0A43420A400A0A424006064041440A060A41090A"
theorem cover_2272826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272826 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_2272826)
  decide +kernel
#print axioms cover_2272826

def state_2272857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 13)))
def hex_2272857 : String := "4142094405094209440A09"
theorem cover_2272857 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272857 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2272857)
  decide +kernel
#print axioms cover_2272857

def state_2272868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 13)))
def hex_2272868 : String := "40414209440743410709094206444342440606440740410606064206440706434206404106060606414206074206440706"
theorem cover_2272868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272868 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_2272868)
  decide +kernel
#print axioms cover_2272868

def state_2272918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 6)))
def hex_2272918 : String := "44054240410543054405424305400A0505410543050505"
theorem cover_2272918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272918 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 23) (hex := hex_2272918)
  decide +kernel
#print axioms cover_2272918

def state_2272942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 12)))
def hex_2272942 : String := "4243050705"
theorem cover_2272942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272942 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2272942)
  decide +kernel
#print axioms cover_2272942

def state_2272951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 13)))
def hex_2272951 : String := "44054243050705"
theorem cover_2272951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272951 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2272951)
  decide +kernel
#print axioms cover_2272951

def state_2272959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 26)))
def hex_2272959 : String := "4243054405404105080505"
theorem cover_2272959 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272959 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2272959)
  decide +kernel
#print axioms cover_2272959

def state_2272970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 27)))
def hex_2272970 : String := "424340414405420A050A41050A404144074342400A07074240060607440A0A410744070A4340410544050A054041074407424308080807"
theorem cover_2272970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272970 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_2272970)
  decide +kernel
#print axioms cover_2272970

def state_2273025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 13)))
def hex_2273025 : String := "4105440542430A0707"
theorem cover_2273025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273025 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2273025)
  decide +kernel
#print axioms cover_2273025

def state_2273034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 13)))
def hex_2273034 : String := "4041074407434240410744080607074240410606070707"
theorem cover_2273034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273034 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_2273034)
  decide +kernel
#print axioms cover_2273034

def state_2273057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 13)))
def hex_2273057 : String := "43404105440542430507050507"
theorem cover_2273057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273057 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2273057)
  decide +kernel
#print axioms cover_2273057
end Mub6.Numerical.CircleFullD0.Forest
