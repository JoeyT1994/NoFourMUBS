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
def state_54658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 17 else (if j.val < 4 then 48 else 27)))
def hex_54658 : String := "44424340094109440A0909439140094109440A420943400841094208080842434008410908084340084144910644910808"
theorem cover_54658 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54658 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 49) (hex := hex_54658)
  decide +kernel
#print axioms cover_54658

def state_54707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 17 else (if j.val < 4 then 48 else 27)))
def hex_54707 : String := "44424340414406080641440A4205434008050844050540070A4340419107419144074208084007414407080708"
theorem cover_54707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54707 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_54707)
  decide +kernel
#print axioms cover_54707

def state_54754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 17 else (if j.val < 4 then 48 else 54)))
def hex_54754 : String := "420A434140910A40914408420A43410A40420509050A0A"
theorem cover_54754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54754 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 23) (hex := hex_54754)
  decide +kernel
#print axioms cover_54754

def state_54778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 34 else (if j.val < 4 then 48 else 55)))
def hex_54778 : String := "4341400907404442054305090805410940090A"
theorem cover_54778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54778 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_54778)
  decide +kernel
#print axioms cover_54778

def state_54797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 35 else (if j.val < 4 then 48 else 55)))
def hex_54797 : String := "434140449106074044914207064442054307410640440A0505074140440906440A064044420943410640084408060808440A420A06"
theorem cover_54797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54797 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_54797)
  decide +kernel
#print axioms cover_54797

def state_54850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 17 else (if j.val < 4 then 48 else 27)))
def hex_54850 : String := "44424340410A05050A43404191444205070541440A050540410A070A4243054008054340414491084405054144050505400841440A08440505"
theorem cover_54850 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54850 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_54850)
  decide +kernel
#print axioms cover_54850
end Mub6.Numerical.CircleFullPrototype.Forest
