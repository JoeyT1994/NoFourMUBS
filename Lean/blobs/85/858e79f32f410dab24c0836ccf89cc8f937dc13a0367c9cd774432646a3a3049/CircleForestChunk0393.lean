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
def state_169850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 49 else (if j.val < 4 then 48 else 30)))
def hex_169850 : String := "4443420540054105444342058F054342058F0505434205400541054443420506050505"
theorem cover_169850 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169850 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_169850)
  decide +kernel
#print axioms cover_169850

def state_169885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 49 else (if j.val < 4 then 48 else 30)))
def hex_169885 : String := "4443420740074144074342078F0707074342400509404144430A050A0A4144434209400A09420505430A050905"
theorem cover_169885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169885 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_169885)
  decide +kernel
#print axioms cover_169885

def state_169930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 48 else 30)))
def hex_169930 : String := "41444342410509410640444342078F074342068F064408064205410540050606444342074041440709070907430942054041050706"
theorem cover_169930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169930 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_169930)
  decide +kernel
#print axioms cover_169930

def state_169983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 49 else 30)))
def hex_169983 : String := "4005410507"
theorem cover_169983 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169983 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_169983)
  decide +kernel
#print axioms cover_169983

def state_169988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 31)))
def hex_169988 : String := "420543404105444342050A05430A054106444309060605"
theorem cover_169988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169988 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_169988)
  decide +kernel
#print axioms cover_169988

def state_170011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 15)))
def hex_170011 : String := "05"
theorem cover_170011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170011 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_170011)
  decide +kernel
#print axioms cover_170011

def state_170014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 15)))
def hex_170014 : String := "414409094443424140094443424105400844090809094308084008444342414008440608060842070808410808424105400544070808430808"
theorem cover_170014 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170014 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 57) (hex := hex_170014)
  decide +kernel
#print axioms cover_170014

def state_170072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 15)))
def hex_170072 : String := "444342404106444342400506070606064009060606"
theorem cover_170072 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170072 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 21) (hex := hex_170072)
  decide +kernel
#print axioms cover_170072
end Mub6.Numerical.CircleFullPrototype.Forest
