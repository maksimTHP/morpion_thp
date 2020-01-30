class Menu

  # introduction et boucle pour recommencer
  def initialize # Création du menu au lancement du jeu
    puts '+----------+----------+----------+'.yellow
    puts '|                                |'.yellow
    puts '|  BIENVENUE AU JEU DU MORPION   |'.yellow
    puts '|                                |'.yellow
    puts '+----------+----------+----------+'.yellow

    puts "Joueur 1 comment t'appelles-tu ?".yellow	# Demande le nom du premier joueur
    print '> '
    $name1 = gets.chomp                             # variable globale avec le nom du joeur 1
    puts "Joueur 2 comment t'apelles-tu ?".yellow	  # Demande le nom du deuxieme joueur
    print '> '
    $name2 = gets.chomp                             # variable globale avec le nom du joeur 2
  end

  def repeat # Demande au joueur si il veut recommencer la partie
    puts 'Voulez-vous recommencer ? (Oui = 1 / Non = 0)'.yellow
    print '> '
    reponse = gets.chomp.to_i
  end
end
