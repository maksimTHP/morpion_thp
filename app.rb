require 'bundler'
Bundler.require

require_relative 'lib/app/board'
require_relative 'lib/app/menu'

def perform
	choix = 1
	while choix == 1 #Boucle pour recommencer la partie
		menu = Menu.new
		system('clear')
		board = Board.new
		choix = menu.repeat
	end
end

perform
