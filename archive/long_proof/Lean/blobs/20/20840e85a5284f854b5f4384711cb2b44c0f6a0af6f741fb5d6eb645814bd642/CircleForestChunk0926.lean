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
def state_1522826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 17 else 21)))
def hex_1522826 : String := "42440841054340420805054042094408090844084105430542404405050505"
theorem cover_1522826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522826 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1522826)
  decide +kernel
#print axioms cover_1522826

def state_1522858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 16 else 21)))
def hex_1522858 : String := "404244084143400A08400A4244084108080A4309400A080A08"
theorem cover_1522858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522858 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_1522858)
  decide +kernel
#print axioms cover_1522858

def state_1522886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 46 else (if j.val < 4 then 17 else 42)))
def hex_1522886 : String := "4143084042074407410A070808"
theorem cover_1522886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522886 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1522886)
  decide +kernel
#print axioms cover_1522886

def state_1522901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 46 else (if j.val < 4 then 34 else 43)))
def hex_1522901 : String := "404244410A0A410A0A0A4244084143400A084042440841060A0A084308404244084108080A084408410A0A"
theorem cover_1522901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522901 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_1522901)
  decide +kernel
#print axioms cover_1522901

def state_1522945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 58) else (if j.val < 3 then 46 else (if j.val < 4 then 35 else 43)))
def hex_1522945 : String := "4244414306060741064340064244074106050A0644410A0A41060A"
theorem cover_1522945 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522945 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1522945)
  decide +kernel
#print axioms cover_1522945

def state_1522973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 92 else (if j.val < 4 then 35 else 43)))
def hex_1522973 : String := "4441080841434042440606440606420808094340424408414340060806434005080544080A084042440706444106074106054209440809"
theorem cover_1522973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522973 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1522973)
  decide +kernel
#print axioms cover_1522973

def state_1523028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 93 else (if j.val < 4 then 35 else 43)))
def hex_1523028 : String := "444108084143400A4208084006420944080643400A084042440A0A0A42440841080844080A"
theorem cover_1523028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523028 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1523028)
  decide +kernel
#print axioms cover_1523028

def state_1523066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 46 else (if j.val < 4 then 34 else 43)))
def hex_1523066 : String := "4042440A0A0A4244084143084008080844080A"
theorem cover_1523066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523066 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1523066)
  decide +kernel
#print axioms cover_1523066
end Mub6.Numerical.CircleFullD0.Forest
