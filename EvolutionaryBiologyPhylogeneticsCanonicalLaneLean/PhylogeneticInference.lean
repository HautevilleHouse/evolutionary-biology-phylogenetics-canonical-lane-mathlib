import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyPhylogeneticsCanonicalLaneLean

structure PhylogeneticInferencePackage (A : AdmissibleClass) where
  alignmentData : Type u
  substitutionModel : Type v
  treeSearchConverged : Prop
  posteriorProbabilityHigh : Prop
  bootstrapSupport : Prop

structure PhylogeneticInferenceEvidence {A : AdmissibleClass} (P : PhylogeneticInferencePackage A) where
  treeSearchConvergedClosed : P.treeSearchConverged
  posteriorProbabilityHighClosed : P.posteriorProbabilityHigh
  bootstrapSupportClosed : P.bootstrapSupport

def PhylogeneticInferenceClosed {A : AdmissibleClass} (P : PhylogeneticInferencePackage A) : Prop :=
  P.treeSearchConverged ∧ P.posteriorProbabilityHigh ∧ P.bootstrapSupport

theorem phylogenetic_inference_closed_from_evidence {A : AdmissibleClass} (P : PhylogeneticInferencePackage A) (E : PhylogeneticInferenceEvidence P) :
    PhylogeneticInferenceClosed P := by
  exact And.intro E.treeSearchConvergedClosed (And.intro E.posteriorProbabilityHighClosed E.bootstrapSupportClosed)

end EvolutionaryBiologyPhylogeneticsCanonicalLaneLean
end HautevilleHouse