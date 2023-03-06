#This script contains the steps required to run the example presented in the Ecography software note :
# "MerMADE 1.0: Coupled biophysical, eco-evolutionary modelling for predicting population dynamics, 
# movement and dispersal evolution in aquatic environments"

#packages needed:
#install.packages("rgl")
#install.packages("igraph")
#install.packages("raster")
library(rgl)
library(igraph)
library(raster)

#set your working directory the folder containing your example input files
dir= "~/MerMADE_software_note/" #NB: make sure to end with the / !!
dir= "~/MerMADE_software_note/Ecography/for_github/" 

#to recreate the figure seen in the Software Note, which shows the results of a recovery scenario after 50 years,
# using population size to demonstrate population recovery, run the following:

tests<- seq(1,9,1)
patches<- as.matrix(read.table(paste(dir,"/patches.txt", sep="")))
patch_raster<- raster(patches)
patches_poly<- rasterToPolygons(patch_raster,dissolve=T)


par(mfrow=c(3,3),mar=c(0,0,2,0), oma=c(2,4,1,4))
for(t in tests){
  
  popinfo<- read.table(paste(dir,"Test",t, "/Outputs/Population.txt", sep=""), header=T)
  pop_year<-popinfo[popinfo$Year==50,] # look at the last year to see where the recovery ended up at 50 years
  patch_pop<- c(rep.int(0,npatches))
  for(i in 0:npatches-1){
    pop_p<- pop_year[pop_year$Patch_ID==i,] #subset for each patch
    if(nrow(pop_p)>0){
      p_mean<- mean(pop_p$NInd) #take mean across reps
      patch_pop[i+1]=p_mean
    }
    
  }
  
  pops<- matrix(NA, nrow=nrow(patches), ncol=ncol(patches))
  for(r in 1:nrow(patches)){
    for(c in 1:ncol(patches)){
      if(!is.na(patches[r,c])){
        pop_size=patch_pop[patches[r,c]+1]
        if(pop_size>0){pops[r,c]=pop_size}
      }
    }
  }
  pops_raster<- raster(pops)
  #plot( pops_raster, col=rev(heat.colors(10)), axes=F)
  # plot( pops_raster, legend=F, main=t, col=c("white",rev(heat.colors(11))),breaks=seq(0,30000,3000), axes=F)
  if(t==1){
    plot( pops_raster, legend=F, main="Passive", col=viridis(19),breaks=c(seq(0,30000,2000), 40000, 50000,60000), axes=F)
    mtext("Behaviour only \n", side=2, line=1,adj=0, cex=0.8)}
  else if(t==2){
    #par(mai=c(0.1,0.1,0.1,0), mar=c(0,0,2,0))
    plot( pops_raster, legend=F, main="Hybrid", col=viridis(19),breaks=c(seq(0,30000,2000), 40000, 50000,60000),axes=F)}
  else if(t==3){
    #par(mai=c(0.1,0.1,0.1,0), mar=c(0,0,2,0))
    plot( pops_raster, legend=F, main="Active", col=viridis(19),breaks=c(seq(0,30000,2000), 40000, 50000,60000), axes=F)}
  else if(t==4){
    plot( pops_raster, legend=F, col=viridis(19),breaks=c(seq(0,30000,2000), 40000, 50000,60000), axes=F)
    mtext("With Growth \n", side=2, line=1,adj=0, cex=0.8)
  }
  
  else if(t==7){
    plot( pops_raster, legend=F, col=viridis(19),breaks=c(seq(0,30000,2000), 40000, 50000,60000), axes=F)
    mtext("Growth & Delayed \n Competency", side=2, line=1,adj=0, cex=0.8)}
  else{plot( pops_raster, legend=F, col=viridis(19),breaks=c(seq(0,30000,2000), 40000, 50000,60000), axes=F)}
  
  #plot(patches_poly, add=T)
  
}

plot(pops_raster, legend.only=T, horizontal=T,
     col=viridis(19),breaks=c(seq(0,30000,2000), 40000, 50000,60000),
     legend.width=1, legend.shrink=1, legend.args=list(text="Population size", side=1, font=2, line=2, cex=1))
