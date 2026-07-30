import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsLemmaCanonicalLaneLean

structure ConnectomicsPackage where
  neuronSet : Type u
  synapseRelation : neuronSet → neuronSet → Prop
  edgeWeight : neuronSet → neuronSet → ℝ
  graph : SimpleGraph neuronSet
  smallWorldProperty : Prop
  modularStructure : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  graphIsSimple : C.graph.IsSimple
  weightsNonNegative : ∀ a b : C.neuronSet, C.edgeWeight a b ≥ 0

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.graph.IsSimple ∧ (∀ a b, C.edgeWeight a b ≥ 0)

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage) (E : ConnectomicsEvidence C) :
    ConnectomicsClosed C :=
  And.intro E.graphIsSimple E.weightsNonNegative

end NeuroscienceActionPotentialsLemmaCanonicalLaneLean
end HautevilleHouse