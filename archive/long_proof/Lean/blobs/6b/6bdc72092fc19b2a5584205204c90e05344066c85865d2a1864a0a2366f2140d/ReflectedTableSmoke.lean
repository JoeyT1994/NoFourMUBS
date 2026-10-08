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


end Centiradian20261006.ReflectedLaurent
#print axioms Centiradian20261006.ReflectedLaurent.tableS_exact
