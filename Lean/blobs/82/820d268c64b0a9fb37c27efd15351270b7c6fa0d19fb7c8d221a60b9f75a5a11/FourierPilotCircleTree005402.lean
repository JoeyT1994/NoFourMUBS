import FourierPilotCircleTree005403
import FourierPilotCircleTree005404
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005402
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![9, 13, 10, 25, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005403.state FourierPilotCircleTree005404.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005403.covered FourierPilotCircleTree005404.covered
#print axioms covered
end FourierPilotCircleTree005402
