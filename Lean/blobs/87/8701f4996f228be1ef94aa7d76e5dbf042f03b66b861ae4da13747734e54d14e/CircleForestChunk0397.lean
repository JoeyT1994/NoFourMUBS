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
def state_170768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
def hex_170768 : String := "4344404109090A4009410942094344094009410942094340090A090909"
theorem cover_170768 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170768 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 29) (hex := hex_170768)
  decide +kernel
#print axioms cover_170768

def state_170797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 7)))
def hex_170797 : String := "4340410908414209094244434009410942440909090908444340084109444209434008050808090809"
theorem cover_170797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170797 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 41) (hex := hex_170797)
  decide +kernel
#print axioms cover_170797

def state_170838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 3)))
def hex_170838 : String := "440A09"
theorem cover_170838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170838 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_170838)
  decide +kernel
#print axioms cover_170838

def state_170844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
def hex_170844 : String := "4142434406400607440740420707074306074243064406400641070606"
theorem cover_170844 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170844 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_170844)
  decide +kernel
#print axioms cover_170844

def state_170877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
def hex_170877 : String := "444243410706074306410706424341400A44070A0A41050708"
theorem cover_170877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170877 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_170877)
  decide +kernel
#print axioms cover_170877

def state_170903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 14)))
def hex_170903 : String := "4243070743414006440643420706070607"
theorem cover_170903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170903 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_170903)
  decide +kernel
#print axioms cover_170903

def state_170921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 12 else 15)))
def hex_170921 : String := "43414044074207430A0744074207434041444309070A0709070707"
theorem cover_170921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170921 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 27) (hex := hex_170921)
  decide +kernel
#print axioms cover_170921

def state_170951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 15)))
def hex_170951 : String := "444342400841440608060842070808"
theorem cover_170951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170951 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_170951)
  decide +kernel
#print axioms cover_170951

def state_170968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 48 else 30)))
def hex_170968 : String := "4240414443060743420A08420708064144434207050743420905420740414407080505074041444305420705080505"
theorem cover_170968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170968 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_170968)
  decide +kernel
#print axioms cover_170968

def state_171015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 49 else 30)))
def hex_171015 : String := "42074041440708074144074342400805050707"
theorem cover_171015 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_171015 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_171015)
  decide +kernel
#print axioms cover_171015
end Mub6.Numerical.CircleFullPrototype.Forest
