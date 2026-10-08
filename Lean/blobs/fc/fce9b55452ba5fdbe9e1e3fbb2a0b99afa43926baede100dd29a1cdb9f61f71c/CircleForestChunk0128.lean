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
def state_51955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
def hex_51955 : String := "4105434244410507050507"
theorem cover_51955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51955 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_51955)
  decide +kernel
#print axioms cover_51955

def state_51967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
def hex_51967 : String := "434244400506050506"
theorem cover_51967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51967 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_51967)
  decide +kernel
#print axioms cover_51967

def state_51981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 20)))
def hex_51981 : String := "43404105424409050541424409050542440943400541054209054005410509444340054105440905400541050905404105420905414209054209440605"
theorem cover_51981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51981 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_51981)
  decide +kernel
#print axioms cover_51981

def state_52044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 38) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
def hex_52044 : String := "40424409074443410508080542444309084341400742064409050607444341404408054408420905400808084341054005424407050507"
theorem cover_52044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52044 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_52044)
  decide +kernel
#print axioms cover_52044

def state_52099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 39) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
def hex_52099 : String := "4042060742440806440807"
theorem cover_52099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52099 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_52099)
  decide +kernel
#print axioms cover_52099

def state_52110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 49 else 20)))
def hex_52110 : String := "4140074209440807400708"
theorem cover_52110 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52110 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_52110)
  decide +kernel
#print axioms cover_52110

def state_52123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
def hex_52123 : String := "4041424409434005080A064244430909434041420905420A440905410A0A0A444340410644074209050706434005410542440605050641420A0642440A0A06"
theorem cover_52123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52123 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_52123)
  decide +kernel
#print axioms cover_52123

def state_52186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 49 else 20)))
def hex_52186 : String := "40410642090641060A"
theorem cover_52186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52186 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_52186)
  decide +kernel
#print axioms cover_52186
end Mub6.Numerical.CircleFullPrototype.Forest
