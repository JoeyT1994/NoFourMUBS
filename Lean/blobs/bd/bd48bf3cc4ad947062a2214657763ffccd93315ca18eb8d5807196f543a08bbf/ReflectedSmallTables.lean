module
public import ReflectedCornerExpression
import all ReflectedCornerExpression
import all ReflectedLaurentList

public section

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000

namespace Centiradian20261006.ReflectedLaurent

@[expose] def tableS : List Term := [
  ⟨⟨0,0,0,0⟩,-1⟩,
  ⟨⟨0,1,0,0⟩,-1⟩,
  ⟨⟨1,0,0,0⟩,-1⟩]

theorem tableS_exact : sP = tableS := by
  decide

@[expose] def tableT : List Term := [
  ⟨⟨0,0,0,0⟩,-1⟩,
  ⟨⟨0,0,0,1⟩,-1⟩,
  ⟨⟨0,0,1,0⟩,-1⟩]

theorem tableT_exact : tP = tableT := by
  decide

@[expose] def tableR : List Term := [
  ⟨⟨-1,0,1,0⟩,-1⟩,
  ⟨⟨0,-1,0,1⟩,-1⟩,
  ⟨⟨0,0,0,0⟩,-1⟩]

theorem tableR_exact : rP = tableR := by
  decide

@[expose] def tableX : List Term := [
  ⟨⟨-1,0,0,0⟩,1⟩,
  ⟨⟨-1,1,0,0⟩,1⟩,
  ⟨⟨0,-1,0,0⟩,1⟩,
  ⟨⟨0,0,0,0⟩,3⟩,
  ⟨⟨0,1,0,0⟩,1⟩,
  ⟨⟨1,-1,0,0⟩,1⟩,
  ⟨⟨1,0,0,0⟩,1⟩]

theorem tableX_exact : xP = tableX := by
  decide

@[expose] def tableY : List Term := [
  ⟨⟨0,0,-1,0⟩,1⟩,
  ⟨⟨0,0,-1,1⟩,1⟩,
  ⟨⟨0,0,0,-1⟩,1⟩,
  ⟨⟨0,0,0,0⟩,3⟩,
  ⟨⟨0,0,0,1⟩,1⟩,
  ⟨⟨0,0,1,-1⟩,1⟩,
  ⟨⟨0,0,1,0⟩,1⟩]

theorem tableY_exact : yP = tableY := by
  decide

@[expose] def tableZ : List Term := [
  ⟨⟨-1,0,1,0⟩,1⟩,
  ⟨⟨-1,1,1,-1⟩,1⟩,
  ⟨⟨0,-1,0,1⟩,1⟩,
  ⟨⟨0,0,0,0⟩,3⟩,
  ⟨⟨0,1,0,-1⟩,1⟩,
  ⟨⟨1,-1,-1,1⟩,1⟩,
  ⟨⟨1,0,-1,0⟩,1⟩]

theorem tableZ_exact : zP = tableZ := by
  decide

@[expose] def tableP : List Term := [
  ⟨⟨-1,0,0,0⟩,1⟩,
  ⟨⟨-1,0,1,0⟩,1⟩,
  ⟨⟨-1,1,0,0⟩,1⟩,
  ⟨⟨-1,1,1,-1⟩,1⟩,
  ⟨⟨0,-1,0,0⟩,1⟩,
  ⟨⟨0,-1,0,1⟩,1⟩,
  ⟨⟨0,0,-1,0⟩,1⟩,
  ⟨⟨0,0,-1,1⟩,1⟩,
  ⟨⟨0,0,0,-1⟩,1⟩,
  ⟨⟨0,0,0,0⟩,9⟩,
  ⟨⟨0,0,0,1⟩,1⟩,
  ⟨⟨0,0,1,-1⟩,1⟩,
  ⟨⟨0,0,1,0⟩,1⟩,
  ⟨⟨0,1,0,-1⟩,1⟩,
  ⟨⟨0,1,0,0⟩,1⟩,
  ⟨⟨1,-1,-1,1⟩,1⟩,
  ⟨⟨1,-1,0,0⟩,1⟩,
  ⟨⟨1,0,-1,0⟩,1⟩,
  ⟨⟨1,0,0,0⟩,1⟩]

theorem tableP_exact : pP = tableP := by
  decide

@[expose] def tableJ : List Term := [
  ⟨⟨-1,0,0,0⟩,-2⟩,
  ⟨⟨-1,0,0,1⟩,-1⟩,
  ⟨⟨-1,0,1,-1⟩,-1⟩,
  ⟨⟨-1,0,1,0⟩,-2⟩,
  ⟨⟨-1,1,0,-1⟩,-1⟩,
  ⟨⟨-1,1,0,0⟩,-2⟩,
  ⟨⟨-1,1,1,-1⟩,-2⟩,
  ⟨⟨-1,1,1,0⟩,-1⟩,
  ⟨⟨0,-1,-1,1⟩,-1⟩,
  ⟨⟨0,-1,0,0⟩,-2⟩,
  ⟨⟨0,-1,0,1⟩,-2⟩,
  ⟨⟨0,-1,1,0⟩,-1⟩,
  ⟨⟨0,0,-1,0⟩,-2⟩,
  ⟨⟨0,0,-1,1⟩,-2⟩,
  ⟨⟨0,0,0,-1⟩,-2⟩,
  ⟨⟨0,0,0,0⟩,-6⟩,
  ⟨⟨0,0,0,1⟩,-2⟩,
  ⟨⟨0,0,1,-1⟩,-2⟩,
  ⟨⟨0,0,1,0⟩,-2⟩,
  ⟨⟨0,1,-1,0⟩,-1⟩,
  ⟨⟨0,1,0,-1⟩,-2⟩,
  ⟨⟨0,1,0,0⟩,-2⟩,
  ⟨⟨0,1,1,-1⟩,-1⟩,
  ⟨⟨1,-1,-1,0⟩,-1⟩,
  ⟨⟨1,-1,-1,1⟩,-2⟩,
  ⟨⟨1,-1,0,0⟩,-2⟩,
  ⟨⟨1,-1,0,1⟩,-1⟩,
  ⟨⟨1,0,-1,0⟩,-2⟩,
  ⟨⟨1,0,-1,1⟩,-1⟩,
  ⟨⟨1,0,0,-1⟩,-1⟩,
  ⟨⟨1,0,0,0⟩,-2⟩]

theorem tableJ_exact : jP = tableJ := by
  decide


end Centiradian20261006.ReflectedLaurent
#print axioms Centiradian20261006.ReflectedLaurent.tableS_exact
#print axioms Centiradian20261006.ReflectedLaurent.tableT_exact
#print axioms Centiradian20261006.ReflectedLaurent.tableR_exact
#print axioms Centiradian20261006.ReflectedLaurent.tableX_exact
#print axioms Centiradian20261006.ReflectedLaurent.tableY_exact
#print axioms Centiradian20261006.ReflectedLaurent.tableZ_exact
#print axioms Centiradian20261006.ReflectedLaurent.tableP_exact
#print axioms Centiradian20261006.ReflectedLaurent.tableJ_exact
