# Parsing results of blastn of premirs against other bee genomes.
# I have already pulled out the hits for just the lineage specific mirs

setwd("C:/Users/Karen/Documents/research/wkdir/mirnas_six_bees")

library(tidyr)

amel <- read.table("uniq_hits_amel_mod_sort.txt")
bimp <- read.table("uniq_hits_bimp_mod_sort.txt")
bter <- read.table("uniq_hits_bter_mod_sort.txt")
mgen <- read.table("uniq_hits_mgen_mod_sort.txt")
mrot <- read.table("uniq_hits_mrot_mod_sort.txt")
nmel <- read.table("uniq_hits_nmel_mod_sort.txt")


amel.hits <- as.data.frame(table(amel$V2))
amel.hitsXspp <-as.data.frame(table(amel$V1, amel$V2))
colnames(amel.hitsXspp) <- c("genome", "mir", "Freq")
amel.hitsXspp.tidy <- spread(amel.hitsXspp, key = genome, value = Freq)
write.table(amel.hitsXspp.tidy, file = "amel_uniq_premirs_freq.txt", row.names = FALSE, quote = FALSE)

bimp.hits <- as.data.frame(table(bimp$V2))
bimp.hitsXspp <-as.data.frame(table(bimp$V1, bimp$V2))
colnames(bimp.hitsXspp) <- c("genome", "mir", "Freq")
bimp.hitsXspp.tidy <- spread(bimp.hitsXspp, key = genome, value = Freq)
write.table(bimp.hitsXspp.tidy, file = "bimp_uniq_premirs_freq.txt", row.names = FALSE, quote = FALSE)

bter.hits <- as.data.frame(table(bter$V2))
bter.hitsXspp <-as.data.frame(table(bter$V1, bter$V2))
colnames(bter.hitsXspp) <- c("genome", "mir", "Freq")
bter.hitsXspp.tidy <- spread(bter.hitsXspp, key = genome, value = Freq)
write.table(bter.hitsXspp.tidy, file = "bter_uniq_premirs_freq.txt", row.names = FALSE, quote = FALSE)

mgen.hits <- as.data.frame(table(mgen$V2))
mgen.hitsXspp <-as.data.frame(table(mgen$V1, mgen$V2))
colnames(mgen.hitsXspp) <- c("genome", "mir", "Freq")
mgen.hitsXspp.tidy <- spread(mgen.hitsXspp, key = genome, value = Freq)
write.table(mgen.hitsXspp.tidy, file = "mgen_uniq_premirs_freq.txt", row.names = FALSE, quote = FALSE)

mrot.hits <- as.data.frame(table(mrot$V2))
mrot.hitsXspp <-as.data.frame(table(mrot$V1, mrot$V2))
colnames(mrot.hitsXspp) <- c("genome", "mir", "Freq")
mrot.hitsXspp.tidy <- spread(mrot.hitsXspp, key = genome, value = Freq)
write.table(mrot.hitsXspp.tidy, file = "mrot_uniq_premirs_freq.txt", row.names = FALSE, quote = FALSE)

nmel.hits <- as.data.frame(table(nmel$V2))
nmel.hitsXspp <-as.data.frame(table(nmel$V1, nmel$V2))
colnames(nmel.hitsXspp) <- c("genome", "mir", "Freq")
nmel.hitsXspp.tidy <- spread(nmel.hitsXspp, key = genome, value = Freq)
write.table(nmel.hitsXspp.tidy, file = "nmel_uniq_premirs_freq.txt", row.names = FALSE, quote = FALSE)
