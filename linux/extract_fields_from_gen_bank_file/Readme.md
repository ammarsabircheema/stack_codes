# Extract fields from genbank file
- The file is given below:
```
LOCUS       XM_012540068            1713 bp    mRNA    linear   MAM 11-JAN-2018
DEFINITION  PREDICTED: Sarcophilus harrisii cytochrome c oxidase assembly
            protein COX15 homolog (LOC100925550), mRNA.
ACCESSION   XM_012540068
VERSION     XM_012540068.2
DBLINK      BioProject: PRJNA167725
KEYWORDS    RefSeq; corrected model.
SOURCE      Sarcophilus harrisii (Tasmanian devil)
  ORGANISM  Sarcophilus harrisii
            Eukaryota; Metazoa; Chordata; Craniata; Vertebrata; Euteleostomi;
            Mammalia; Metatheria; Dasyuromorphia; Dasyuridae; Sarcophilus.
COMMENT     MODEL REFSEQ:  This record is predicted by automated computational
            analysis. This record is derived from a genomic sequence
            (NW_003816462.1) and transcript sequence (GEDN01126617.1) annotated
            using gene prediction method: Gnomon, supported by EST evidence.
            Also see:
                Documentation of NCBI's Annotation Process

            On Jan 11, 2018 this sequence version replaced XM_012540068.1.

            ##Genome-Annotation-Data-START##
            Annotation Provider         :: NCBI
            Annotation Status           :: Full annotation
            Annotation Name             :: Sarcophilus harrisii Annotation
                                           Release 102
            Annotation Version          :: 102
            Annotation Pipeline         :: NCBI eukaryotic genome annotation
                                           pipeline
            Annotation Software Version :: 8.0
            Annotation Method           :: Best-placed RefSeq; Gnomon
            Features Annotated          :: Gene; mRNA; CDS; ncRNA
            ##Genome-Annotation-Data-END##

            ##RefSeq-Attributes-START##
            assembly gap :: added 136 transcript bases to patch genome assembly
                            gap
            ##RefSeq-Attributes-END##
PRIMARY     REFSEQ_SPAN         PRIMARY_IDENTIFIER PRIMARY_SPAN        COMP
            1-136               GEDN01126617.1     1-136
            137-327             AEFK01003589.1     1071-1261
            328-450             AEFK01003589.1     2007-2129
            451-637             AEFK01003589.1     2869-3055
            638-805             AEFK01003589.1     6071-6238
            806-887             AEFK01003591.1     516-597
            888-1042            AEFK01003591.1     1431-1585
            1043-1156           AEFK01003591.1     4257-4370
            1157-1713           AEFK01003591.1     6191-6747
FEATURES             Location/Qualifiers
     source          1..1713
                     /organism="Sarcophilus harrisii"
                     /mol_type="mRNA"
                     /db_xref="taxon:9305"
                     /chromosome="1"
                     /map="unlocalized"
                     /sex="female"
     gene            1..1713
                     /gene="LOC100925550"
                     /note="The sequence of the model RefSeq transcript was
                     modified relative to its source genomic sequence to
                     represent the inferred CDS: added 136 bases not found in
                     genome assembly; Derived by automated computational
                     analysis using gene prediction method: Gnomon. Supporting
                     evidence includes similarity to: 10 ESTs, 11 Proteins, and
                     100% coverage of the annotated genomic feature by RNAseq
                     alignments, including 5 samples with support for all
                     annotated introns"
                     /db_xref="GeneID:100925550"
     CDS             53..1288
                     /gene="LOC100925550"
                     /note="The sequence of the model RefSeq protein was
                     modified relative to its source genomic sequence to
                     represent the inferred CDS: added 84 bases not found in
                     genome assembly"
                     /codon_start=1
                     /product="cytochrome c oxidase assembly protein COX15
                     homolog"
                     /protein_id="XP_012395522.2"
                     /db_xref="GeneID:100925550"
                     /translation="MMRLLFPPLKAVLGSPGVRLQAAGGAHRCGCHYGQKLSLLQRQH
                     STLSEVALQSGRGAVSVPTKAAQRIMGRWLLVCSGTVAGAVILGGVTRLTESGLSMVD
                     WHLIKGMKPPTSQEEWEAEFQKYQQFPEFKILNHNMTLAEFKFIWYMEYSHRMWGRIV
                     GLAYVLPTVYFWRKGWLTHGMKGRVLALCGLVCFQGLLGWYMVKSGLEEKPDSYDIPR
                     VSQYRLAAHLGSALVLYCASLWTGLSLLLPRDKLPETRKLLQLRRFAHGTAGLVFLTA
                     LSGAFVAGLDAGLVYNSFPKMGDHWIPEDLFTFSPVLRNVFENPTMVQFDHRVLGIAT
                     VTAITGLYFFSRRIPLPRRAKMAVTTLLAVAYAQVALGISTLLTYVPTPLAAVHQSGS
                     LALLSIALWLMNELRRIPK"
ORIGIN      
        1 gtggggcgac cgagggaggc cgctgcgagg ctgtgacttt gagactcgcg cgatgatgcg
       61 attgctgttt cctcctctga aagcggtgct gggcagtccg ggcgtccggc tgcaggctgc
      121 tgggggagct caccggtgcg gttgccatta tgggcaaaag ctctctctct tgcaaagaca
      181 gcacagtact ctgtctgaag tagctttgca gtctggaagg ggagcagtgt ctgtccccac
      241 aaaggctgcc cagcgcatta tgggtcgttg gctcttggtc tgcagcggaa cagtagcagg
      301 agcggtgatt cttggtggag tgactaggtt gacagagtct gggctctcca tggtagattg
      361 gcacttgata aaaggaatga aaccacccac aagccaagaa gaatgggaag cagagttcca
      421 aaaataccag cagtttccag aatttaaaat cttgaaccat aacatgacat tagcagaatt
      481 caagtttatc tggtacatgg aatactcaca cagaatgtgg ggtcggattg tgggcctagc
      541 atatgtcctt cccactgtct acttttggag aaagggctgg ctcacccatg gcatgaaagg
      601 tcgtgttctt gccctctgtg gtttagtctg tttccaggga ctgttggggt ggtatatggt
      661 gaagagtgga ttagaagaaa agccagattc ttatgacatc cctcgggtga gccagtatcg
      721 tctggccgct cacttgggct ctgcccttgt cctctactgt gccagcttgt ggactggact
      781 ctccctcttg cttcctcgag acaagttgcc agaaacccga aagctcttgc agctgaggcg
      841 atttgctcat gggacagcag gcctggtttt ccttacagct ctttcaggag cctttgtggc
      901 aggcctggat gctggacttg tatacaactc ctttcctaag atgggagacc actggatccc
      961 agaagatctc tttaccttct ctccagttct tagaaatgtc tttgagaatc caaccatggt
     1021 gcagtttgat catcgagtcc tgggaatcgc tacagtcaca gccattactg gactttactt
     1081 cttctccagg agaatccctc ttcctcgaag ggccaaaatg gcagtgacaa cattgctggc
     1141 tgtggcctat gcacaggtgg ccttgggcat tagtactcta ctaacgtatg ttccaactcc
     1201 tttggctgca gttcaccagt cagggtccct cgctttgctc agcattgccc tttggcttat
     1261 gaacgaactg aggcgaatcc caaagtaatg cccaggcagg tatttttctg gactcttccc
     1321 aggcttttga gagctctgta gagggcatga ggcttccctc ctgttgaatt aaagaattga
     1381 tgtggtagac agatcagaag atcaagaatg aagttactga tctgaggatt ctttttcaga
     1441 ctaaacaaac tactcttctt ccataagttg tcacttgctt tttaatgtgc tattaagatc
     1501 ccttccaact ttcactactc tgattctttt gatacagcaa taccactgat aggtctgtgt
     1561 ctcagagttg ggagggaggg aaggaaaaaa aaaacttttt gtacaaacgt acaaaactat
     1621 agtagttcct tttgtgggaa ctaaaataag gaaattttct ttctttttta tttattcgtt
     1681 ttcaacattt acttttataa gatttagatt ttc
     ```
     - The user wants to extract Gene name, protein name, protein ID and translated protein sequence etc from the genbank file.
     
     - The solution to this problem is given **extract_fields.sh**. 
