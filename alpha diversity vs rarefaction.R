alpha_div_rarefaction_curve <- function(physeq, reads_raref_list, alpha){
  l <- list()
  
  for (el in reads_raref_list){
    set.seed(2993)
    a <- rarefy_even_depth(physeq, sample.size = el)
    s <- estimate_richness(a, measures = alpha)
    l[[paste(as.character(el), " (n = ", nrow(s), ")", sep = "")]] <- s[,1]
  }
  return(l) 
  # l_molten <- melt(l)
  # ggplot(data= l_molten, aes (x))
#end of function
}
