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
def state_1562162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 45)))
def hex_1562162 : String := "4307410740444243074107404442430708070707070707"
theorem cover_1562162 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562162 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 23) (hex := hex_1562162)
  decide +kernel
#print axioms cover_1562162

def state_1562185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 22)))
def hex_1562185 : String := "444243064140444243060943064105060744060740440642060606430641070642430741074440420707060707"
theorem cover_1562185 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562185 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1562185)
  decide +kernel
#print axioms cover_1562185

def state_1562232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 44)))
def hex_1562232 : String := "424306414044420506420543060506064306414044064243064140090606060606"
theorem cover_1562232 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562232 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_1562232)
  decide +kernel
#print axioms cover_1562232

def state_1562267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 45)))
def hex_1562267 : String := "4140440A0A0606"
theorem cover_1562267 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562267 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1562267)
  decide +kernel
#print axioms cover_1562267

def state_1562276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 62) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 45)))
def hex_1562276 : String := "4442430505430A41400544054205430505054243414005070505430A41404405050705"
theorem cover_1562276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562276 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1562276)
  decide +kernel
#print axioms cover_1562276

def state_1562311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 62) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 45)))
def hex_1562311 : String := "4442430605430641404406420506060642430741440505054306410706"
theorem cover_1562311 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562311 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1562311)
  decide +kernel
#print axioms cover_1562311

def state_1562340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 63) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 45)))
def hex_1562340 : String := "400506"
theorem cover_1562340 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562340 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1562340)
  decide +kernel
#print axioms cover_1562340

def state_1562343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 45)))
def hex_1562343 : String := "4306414044424306414044090A4406074009060942430741070A074406074044060A06"
theorem cover_1562343 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562343 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_1562343)
  decide +kernel
#print axioms cover_1562343

def state_1562378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 22)))
def hex_1562378 : String := "440642430641060606"
theorem cover_1562378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562378 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1562378)
  decide +kernel
#print axioms cover_1562378

def state_1562396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 104 else (if j.val < 4 then 42 else 88)))
def hex_1562396 : String := "434109404405060909"
theorem cover_1562396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562396 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1562396)
  decide +kernel
#print axioms cover_1562396

def state_1562407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 120) else (if j.val < 3 then 105 else (if j.val < 4 then 84 else 88)))
def hex_1562407 : String := "4044420608064442094341090A0909"
theorem cover_1562407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562407 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1562407)
  decide +kernel
#print axioms cover_1562407
end Mub6.Numerical.CircleFullD0.Forest
