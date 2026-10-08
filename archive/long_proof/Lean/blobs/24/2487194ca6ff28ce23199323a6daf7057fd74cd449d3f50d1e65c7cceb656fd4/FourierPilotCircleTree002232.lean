import FourierPilotCircleTree002233
import FourierPilotCircleTree002240
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002232
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![29, 18, 31, 50, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002233.state FourierPilotCircleTree002240.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002233.covered FourierPilotCircleTree002240.covered
#print axioms covered
end FourierPilotCircleTree002232
