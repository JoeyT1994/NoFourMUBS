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
def state_1521331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 42)))
def hex_1521331 : String := "4143084042440606080843084042070808"
theorem cover_1521331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521331 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1521331)
  decide +kernel
#print axioms cover_1521331

def state_1521349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 56) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 43)))
def hex_1521349 : String := "4340424405410543050505054042060609"
theorem cover_1521349 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521349 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1521349)
  decide +kernel
#print axioms cover_1521349

def state_1521369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 43)))
def hex_1521369 : String := "4441080841438340424406064406060943834042440741438306074441080741438306438307424407094408410808"
theorem cover_1521369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521369 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1521369)
  decide +kernel
#print axioms cover_1521369

def state_1521417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 86)))
def hex_1521417 : String := "410808"
theorem cover_1521417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521417 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1521417)
  decide +kernel
#print axioms cover_1521417

def state_1521420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 87)))
def hex_1521420 : String := "4143054042440506050543404283440841050A08404244084143830643834042440606440606420808440841434006050643400A08400A420808420808"
theorem cover_1521420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521420 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1521420)
  decide +kernel
#print axioms cover_1521420

def state_1521481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 43)))
def hex_1521481 : String := "4244084105084408410508"
theorem cover_1521481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521481 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1521481)
  decide +kernel
#print axioms cover_1521481

def state_1521494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 88 else (if j.val < 4 then 33 else 43)))
def hex_1521494 : String := "444143400608060741094340420744074106074209440809400709"
theorem cover_1521494 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521494 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1521494)
  decide +kernel
#print axioms cover_1521494

def state_1521522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 89 else (if j.val < 4 then 33 else 86)))
def hex_1521522 : String := "4143400608064308400708"
theorem cover_1521522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521522 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1521522)
  decide +kernel
#print axioms cover_1521522

def state_1521533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 89 else (if j.val < 4 then 33 else 87)))
def hex_1521533 : String := "414340060906434042444106074106434006420606064441064308064106434006420606064244080944084109430809404206064209440809"
theorem cover_1521533 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521533 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1521533)
  decide +kernel
#print axioms cover_1521533
end Mub6.Numerical.CircleFullD0.Forest
