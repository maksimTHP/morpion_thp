require 'bundler'
Bundler.require

require_relative 'lib/app/board'
require_relative 'lib/app/menu'

def perform
  choix = 1
  while choix == 1       # Boucle pour recommencer la partie
		system('clear')
    menu = Menu.new      # On affiche l' introduction "nom des joueurs"
    system('clear')
    board = Board.new    # On demarre le jeu
    choix = menu.repeat  # A la fin du jeu, on demande si une nouvelle partie ou pas
  end
end

perform
