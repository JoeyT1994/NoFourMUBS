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
def state_1610874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 60 else 99)))
def hex_1610874 : String := "4143444042060706409F06444042410707410743070707409F4207410707434406409F064440420941430644079F0906409F09"
theorem cover_1610874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610874 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1610874)
  decide +kernel
#print axioms cover_1610874

def state_1610926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 82) else (if j.val < 3 then 105 else (if j.val < 4 then 60 else 99)))
def hex_1610926 : String := "43440A084440050A40429F0508"
theorem cover_1610926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610926 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1610926)
  decide +kernel
#print axioms cover_1610926

def state_1610939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 83) else (if j.val < 3 then 105 else (if j.val < 4 then 60 else 99)))
def hex_1610939 : String := "43444042410A060A0A40429F0A0A444042414344059F054344079F44050905424107070A40429F410A430A440A400A0A42414307440709090A"
theorem cover_1610939 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610939 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1610939)
  decide +kernel
#print axioms cover_1610939

def state_1610996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 99)))
def hex_1610996 : String := "424107064108430644074042070806"
theorem cover_1610996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610996 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1610996)
  decide +kernel
#print axioms cover_1610996

def state_1611012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 98)))
def hex_1611012 : String := "40424143440540420705074405400542070543444008064042084105080744080941054344054005420705054241070741430707430744074042070507"
theorem cover_1611012 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611012 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1611012)
  decide +kernel
#print axioms cover_1611012

def state_1611078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 122 else 198)))
def hex_1611078 : String := "40424143074405074307440709410543440540050505420707"
theorem cover_1611078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611078 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1611078)
  decide +kernel
#print axioms cover_1611078

def state_1611105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 176 else 82) else (if j.val < 3 then 208 else (if j.val < 4 then 122 else 199)))
def hex_1611105 : String := "414344074042074107070744404207050740420A41060942070709"
theorem cover_1611105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611105 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1611105)
  decide +kernel
#print axioms cover_1611105
end Mub6.Numerical.CircleFullD0.Forest
