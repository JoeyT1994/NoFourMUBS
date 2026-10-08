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
def state_55139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 77) else (if j.val < 3 then 36 else (if j.val < 4 then 96 else 54)))
def hex_55139 : String := "4244434041054407429105414408429105440742910940054105074340410542910A4142910642910940410542080541420605429144050544430905430A05"
theorem cover_55139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55139 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 63) (hex := hex_55139)
  decide +kernel
#print axioms cover_55139

def state_55202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 36 else (if j.val < 4 then 97 else 54)))
def hex_55202 : String := "40054105424407434005410542440505050505"
theorem cover_55202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55202 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_55202)
  decide +kernel
#print axioms cover_55202

def state_55221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 36 else (if j.val < 4 then 48 else 55)))
def hex_55221 : String := "43400A4106444243060606064008410608"
theorem cover_55221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55221 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_55221)
  decide +kernel
#print axioms cover_55221

def state_55238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 37 else (if j.val < 4 then 48 else 27)))
def hex_55238 : String := "440506"
theorem cover_55238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55238 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_55238)
  decide +kernel
#print axioms cover_55238

def state_55242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 36 else (if j.val < 4 then 48 else 27)))
def hex_55242 : String := "4443404142440708440708074142440743404142910908414291090940084142914407080744074309400709424407430907074007414207070708"
theorem cover_55242 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55242 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_55242)
  decide +kernel
#print axioms cover_55242

def state_55301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 37 else (if j.val < 4 then 48 else 27)))
def hex_55301 : String := "4443400A0907430A08"
theorem cover_55301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55301 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_55301)
  decide +kernel
#print axioms cover_55301

def state_55315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 76) else (if j.val < 3 then 36 else (if j.val < 4 then 96 else 54)))
def hex_55315 : String := "404244084306064408064244080608"
theorem cover_55315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55315 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_55315)
  decide +kernel
#print axioms cover_55315

def state_55331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 77) else (if j.val < 3 then 36 else (if j.val < 4 then 96 else 54)))
def hex_55331 : String := "42444341080941404408420A05084044074207070A43414042910606404291090941400606404291444306060642914406064443094140050809430606"
theorem cover_55331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55331 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_55331)
  decide +kernel
#print axioms cover_55331
end Mub6.Numerical.CircleFullPrototype.Forest
