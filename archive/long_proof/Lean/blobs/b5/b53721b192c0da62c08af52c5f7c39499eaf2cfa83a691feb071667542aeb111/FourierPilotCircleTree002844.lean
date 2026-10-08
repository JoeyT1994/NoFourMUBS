import FourierPilotCircleTree002845
import FourierPilotCircleTree002856
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002844
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, true, false]
def state : State := ![3, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree002845.state FourierPilotCircleTree002856.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002845.covered FourierPilotCircleTree002856.covered
#print axioms covered
end FourierPilotCircleTree002844
