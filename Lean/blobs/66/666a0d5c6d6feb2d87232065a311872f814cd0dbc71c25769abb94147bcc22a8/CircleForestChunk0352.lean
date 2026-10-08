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
def state_1021881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 74 else (if j.val < 4 then 102 else 101)))
def hex_1021881 : String := "4140444305420541054008054305050540444308420908434205084205414044050505400808440905"
theorem cover_1021881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021881 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1021881)
  decide +kernel
#print axioms cover_1021881

def state_1021922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 75 else (if j.val < 4 then 102 else 101)))
def hex_1021922 : String := "41404408430742410740070A070A400844084308420A08"
theorem cover_1021922 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021922 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1021922)
  decide +kernel
#print axioms cover_1021922

def state_1021949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 124) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 202)))
def hex_1021949 : String := "43420541404443050505054044094305420509094241054044090505414044430909430505440505404409434205090A09"
theorem cover_1021949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021949 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_1021949)
  decide +kernel
#print axioms cover_1021949

def state_1021998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 124) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 203)))
def hex_1021998 : String := "434205410540440505054205414044050505404443050A430505440505"
theorem cover_1021998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021998 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1021998)
  decide +kernel
#print axioms cover_1021998

def state_1022027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 124) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 101)))
def hex_1022027 : String := "44430509430505"
theorem cover_1022027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022027 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1022027)
  decide +kernel
#print axioms cover_1022027

def state_1022036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 202)))
def hex_1022036 : String := "43420909420909"
theorem cover_1022036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022036 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1022036)
  decide +kernel
#print axioms cover_1022036

def state_1022043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 203)))
def hex_1022043 : String := "43424105064140444342050842054105064305054405054044060644094305054241400605064140444342060A0A4342050A0A440943050540064409430909"
theorem cover_1022043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022043 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1022043)
  decide +kernel
#print axioms cover_1022043

def state_1022106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 125) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 101)))
def hex_1022106 : String := "4409434205410509420509"
theorem cover_1022106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1022106 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1022106)
  decide +kernel
#print axioms cover_1022106
end Mub6.Numerical.CircleFullD0.Forest
