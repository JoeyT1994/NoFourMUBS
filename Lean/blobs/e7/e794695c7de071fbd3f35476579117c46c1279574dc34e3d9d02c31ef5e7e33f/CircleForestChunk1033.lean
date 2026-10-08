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
def state_1548246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 240) else (if j.val < 3 then 206 else (if j.val < 4 then 163 else 174)))
def hex_1548246 : String := "404244430A050644430A06430A0642444341400A42080805054341400642060A0A41060544430A414006424405068905430A4106400542050A"
theorem cover_1548246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548246 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1548246)
  decide +kernel
#print axioms cover_1548246

def state_1548303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 241) else (if j.val < 3 then 206 else (if j.val < 4 then 163 else 174)))
def hex_1548303 : String := "400542054405430A05"
theorem cover_1548303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548303 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1548303)
  decide +kernel
#print axioms cover_1548303

def state_1548312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 120) else (if j.val < 3 then 206 else (if j.val < 4 then 81 else 175)))
def hex_1548312 : String := "4341400A0A0A41400642444341060A060644430A06430A064042050A424405430505440A0A"
theorem cover_1548312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548312 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1548312)
  decide +kernel
#print axioms cover_1548312

def state_1548349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 120) else (if j.val < 3 then 207 else (if j.val < 4 then 81 else 87)))
def hex_1548349 : String := "89"
theorem cover_1548349 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548349 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1548349)
  decide +kernel
#print axioms cover_1548349

def state_1548350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 121) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 87)))
def hex_1548350 : String := "40424405050A4244430A05430A0589"
theorem cover_1548350 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548350 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1548350)
  decide +kernel
#print axioms cover_1548350

def state_1548365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 61) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 43)))
def hex_1548365 : String := "4042050942440543050544430605430905"
theorem cover_1548365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548365 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1548365)
  decide +kernel
#print axioms cover_1548365

def state_1548384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 60) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 43)))
def hex_1548384 : String := "420744074341060505"
theorem cover_1548384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548384 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1548384)
  decide +kernel
#print axioms cover_1548384

def state_1548394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 102 else (if j.val < 4 then 41 else 43)))
def hex_1548394 : String := "44054341400542054405060505"
theorem cover_1548394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548394 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1548394)
  decide +kernel
#print axioms cover_1548394

def state_1548407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 41 else 43)))
def hex_1548407 : String := "4443414007420744078905054341404206444106050642444143400642064443410605050605054106430505894005420589410605"
theorem cover_1548407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548407 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 53) (hex := hex_1548407)
  decide +kernel
#print axioms cover_1548407

def state_1548460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 61) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 43)))
def hex_1548460 : String := "05"
theorem cover_1548460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548460 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1548460)
  decide +kernel
#print axioms cover_1548460

def state_1548461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 21)))
def hex_1548461 : String := "05"
theorem cover_1548461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548461 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1548461)
  decide +kernel
#print axioms cover_1548461

def state_1548462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 21 else 10)))
def hex_1548462 : String := "440541400542050705"
theorem cover_1548462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548462 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1548462)
  decide +kernel
#print axioms cover_1548462

def state_1548472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 10 else 10)))
def hex_1548472 : String := "43440741424044050909404407434109050544080905440509"
theorem cover_1548472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548472 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1548472)
  decide +kernel
#print axioms cover_1548472
end Mub6.Numerical.CircleFullD0.Forest
