

monty_hall_problem <- function(x,strategy='change'){
  doors <- c('goat','goat','car')
  
  game <- sample(doors)
  player_selection <- sample(1:3,1)
  unselected <- setdiff(1:3,player_selection)
  
  goat_idx <- which(game=='goat')
  car_idx <- which(game=='car')
  remove_player_selection <- setdiff(goat_idx,player_selection)
  
  if(length(remove_player_selection)>1){
    show_goat <- sample(remove_player_selection,1)
  } else {
    show_goat <- remove_player_selection
  }
  if(strategy=='change'){
    x <- setdiff(unselected,show_goat)
    if(game[x]=='car'){
      return(1)
    } else {
      return(0)
    }
  } else {
    x <- player_selection
    if(game[x]=='car'){
      return(1)
    } else {
      return(0)
    }
  }
}


game_sim <- function(nsim=100,strategy='change'){
  results <- sapply(1:nsim, monty_hall_problem,strategy=strategy)
  return(sum(results)/nsim)
}

game_sim(nsim=10000, strategy = 'keep')


