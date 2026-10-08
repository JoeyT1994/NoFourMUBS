import FourierPilotCircleTree001162
import FourierPilotCircleTree001163
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001161
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![18, 29, 15, 22, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001162.state FourierPilotCircleTree001163.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001162.covered FourierPilotCircleTree001163.covered
#print axioms covered
end FourierPilotCircleTree001161
