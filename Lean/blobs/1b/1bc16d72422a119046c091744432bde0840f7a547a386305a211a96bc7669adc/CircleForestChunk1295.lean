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
def state_1611363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 83) else (if j.val < 3 then 105 else (if j.val < 4 then 122 else 99)))
def hex_1611363 : String := "444042410509054241430707094105430A0540424143444005420905404209050944054005090941054344054005094405064209410A09"
theorem cover_1611363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611363 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1611363)
  decide +kernel
#print axioms cover_1611363

def state_1611418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 83) else (if j.val < 3 then 105 else (if j.val < 4 then 123 else 99)))
def hex_1611418 : String := "444005420905404241060905420941434405060509"
theorem cover_1611418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611418 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1611418)
  decide +kernel
#print axioms cover_1611418

def state_1611439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 99)))
def hex_1611439 : String := "42414344070744070909414344070844404207050740424108090808434440420707070909"
theorem cover_1611439 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611439 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1611439)
  decide +kernel
#print axioms cover_1611439

def state_1611476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 53 else (if j.val < 4 then 30 else 49)))
def hex_1611476 : String := "414308440508434440050A404241080A08084440050A4042410543440540050A0505424108430A440A0A08"
theorem cover_1611476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611476 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_1611476)
  decide +kernel
#print axioms cover_1611476

def state_1611519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 49)))
def hex_1611519 : String := "42414307440708434406404206070644074042074107070741080A"
theorem cover_1611519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611519 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1611519)
  decide +kernel
#print axioms cover_1611519

def state_1611547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 48)))
def hex_1611547 : String := "4042410543440540054241050705440540054241050505054241430744054005074307440740420705074105430A05"
theorem cover_1611547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611547 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1611547)
  decide +kernel
#print axioms cover_1611547

def state_1611599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 62 else 98)))
def hex_1611599 : String := "40054241054307440540050705"
theorem cover_1611599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611599 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1611599)
  decide +kernel
#print axioms cover_1611599
end Mub6.Numerical.CircleFullD0.Forest
