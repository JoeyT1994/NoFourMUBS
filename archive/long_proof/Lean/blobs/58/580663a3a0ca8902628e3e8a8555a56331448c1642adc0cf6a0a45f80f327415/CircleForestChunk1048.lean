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
def state_1551823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
def hex_1551823 : String := "424441434006424409060906430940064207094106430906444143090809410809"
theorem cover_1551823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551823 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1551823)
  decide +kernel
#print axioms cover_1551823

def state_1551861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 42)))
def hex_1551861 : String := "4244414305054309400942440906094105430506440905"
theorem cover_1551861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551861 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1551861)
  decide +kernel
#print axioms cover_1551861

def state_1551884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 42)))
def hex_1551884 : String := "4244410543054042444105094105430540060544050542444105430540420705050505410543050505"
theorem cover_1551884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551884 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_1551884)
  decide +kernel
#print axioms cover_1551884

def state_1551926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 42)))
def hex_1551926 : String := "420644410643090606"
theorem cover_1551926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551926 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1551926)
  decide +kernel
#print axioms cover_1551926

def state_1551937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 58) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 84)))
def hex_1551937 : String := "414340060506434042440706444143050607410543050642444143050607410643404206050507444143050543400705074105430540060540064206440706"
theorem cover_1551937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551937 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1551937)
  decide +kernel
#print axioms cover_1551937

def state_1552000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 58) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 85)))
def hex_1552000 : String := "410643400642444105430506050506"
theorem cover_1552000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552000 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1552000)
  decide +kernel
#print axioms cover_1552000

def state_1552015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 58) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 42)))
def hex_1552015 : String := "44414305400605434042444105090505424441054305400705050540420644070642440A0A440A43050A410543054006420605"
theorem cover_1552015 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552015 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1552015)
  decide +kernel
#print axioms cover_1552015

def state_1552068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 42)))
def hex_1552068 : String := "4244090909"
theorem cover_1552068 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552068 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1552068)
  decide +kernel
#print axioms cover_1552068
end Mub6.Numerical.CircleFullD0.Forest
