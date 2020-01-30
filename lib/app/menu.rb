class Menu

#graphique et boucle pour recommencer
	def initialize  																	 	#Création du menu au lancement du jeu
	  puts "+----------+----------+----------+".yellow
		puts "|                                |".yellow
	  puts "|  BIENVENUE AU JEU DU MORPION   |".yellow
	  puts "|                                |".yellow
	  puts "+----------+----------+----------+".yellow

	  puts "Joueur 1 comment t'appelles-tu ?".yellow  	# Demande le nom du premier joueur
	  print "> "
	  $name1 = gets.chomp
	  puts "Joueur 2 comment t'apelles-tu ?".yellow			# Demande le nom du deuxieme joueur
	  print "> "
	  $name2 = gets.chomp
	  #player1 = Player.new(name1)
	  #player2 = Player.new(name2)
	end

	def repeat																									#Demande au joueur si il veut recommencer la partie
	  puts "Veux tu recommencer ?(Oui = 1 / Non = 0)".yellow
	  print "> "
	  reponse = gets.chomp.to_i
	end

end
