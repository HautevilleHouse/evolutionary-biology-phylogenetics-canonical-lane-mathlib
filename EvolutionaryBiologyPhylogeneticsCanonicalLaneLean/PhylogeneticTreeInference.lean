import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyPhylogeneticsCanonicalLaneLean

structure SubstitutionModel where
  matrix : Type u
  equilibriumFrequencies : Type v
  rateHeterogeneity : Prop

default instance : Inhabited SubstitutionModel := ⟨{ matrix := (), equilibriumFrequencies := (), rateHeterogeneity := False }⟩

structure TreeSearchAlgorithm where
  optimalityCriterion : Prop
  topologySpace : Type
  branchLengthOptimization : Prop

default instance : Inhabited TreeSearchAlgorithm := ⟨{ optimalityCriterion := False, topologySpace := (), branchLengthOptimization := False }⟩

structure PhylogeneticTreeInferencePackage where
  substitutionModel : SubstitutionModel
  treeSearch : TreeSearchAlgorithm
  maximumLikelihood : Type u
  bootstrapSupport : Prop
  convergenceDiagnostic : Prop
  correctTopologyRecoverability : Prop

structure PhylogeneticTreeInferenceEvidence (P : PhylogeneticTreeInferencePackage) where
  bootstrapSupportClosed : P.bootstrapSupport
  convergenceDiagnosticClosed : P.convergenceDiagnostic
  correctTopologyRecoverabilityClosed : P.correctTopologyRecoverability

def PhylogeneticTreeInferenceClosed (P : PhylogeneticTreeInferencePackage) : Prop :=
  P.bootstrapSupport ∧ P.convergenceDiagnostic ∧ P.correctTopologyRecoverability

theorem phylogenetic_tree_inference_closed_from_evidence
    (P : PhylogeneticTreeInferencePackage) (E : PhylogeneticTreeInferenceEvidence P) :
    PhylogeneticTreeInferenceClosed P := by
  exact And.intro E.bootstrapSupportClosed
    (And.intro E.convergenceDiagnosticClosed E.correctTopologyRecoverabilityClosed)

end EvolutionaryBiologyPhylogeneticsCanonicalLaneLean
end HautevilleHouse
