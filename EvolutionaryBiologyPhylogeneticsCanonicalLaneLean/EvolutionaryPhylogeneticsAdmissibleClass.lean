import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyPhylogeneticsCanonicalLaneLean

structure EvolutionaryPhylogeneticsAdmittedObject where
  hardyWeinberg : HardyWeinbergPackage
  hardyWeinbergEvidence : HardyWeinbergEvidence hardyWeinberg
  linkage : LinkagePackage
  linkageEvidence : LinkageEvidence linkage
  sequenceAlignment : SequenceAlignmentPackage
  sequenceAlignmentEvidence : SequenceAlignmentEvidence sequenceAlignment
  phylogeneticTree : PhylogeneticTreePackage
  phylogeneticTreeEvidence : PhylogeneticTreeEvidence phylogeneticTree

def EvolutionaryPhylogeneticsWitnessClosed (O : EvolutionaryPhylogeneticsAdmittedObject) : Prop :=
  HardyWeinbergClosed O.hardyWeinberg ∧ LinkageEquilibriumClosed O.linkage ∧
  SequenceAlignmentClosed O.sequenceAlignment ∧ PhylogeneticTreeClosed O.phylogeneticTree

end EvolutionaryBiologyPhylogeneticsCanonicalLaneLean
end HautevilleHouse