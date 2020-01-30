class Board
  def initialize
    @valeur = []                                  # On enregistre les positions déjà joué
    tab_position = %w[A1 A2 A3 B1 B2 B3 C1 C2 C3] # Tableau de position des cases dans la grille
    @tab_win = %w[a b c d e f g h i]              # Tableau de victoire (pour eviter les espaces)

    i = 0
    while i < 10       # Initialise le tableau d'espaces
      @valeur[i] = ' ' # Valeur initiale
      i += 1           # Compteur de tours
    end

    @tour_de_jeu = 0       # Permet de compter le nombre de tour de jeu
    while @tour_de_jeu < 9 # On affiche la grille à chaque tour avec les choix des joueurs
      if @tour_de_jeu == 0 # On affiche le joueur du tour
        joueur_tour = $name1
        joueur_signe = "X"
      elsif @tour_de_jeu.even?
        joueur_tour = $name1
        joueur_signe = "X"
      else
        joueur_tour = $name2
        joueur_signe = "O"
      end
      # AFFICHAGE GRILLE
      puts '    1   2   3'.red
      puts '  +---+---+---+'.yellow
      print 'A | '.yellow
      print (@valeur[1]).to_s.red
      print ' | '.yellow
      print (@valeur[2]).to_s.red
      print ' | '.yellow
      print (@valeur[3]).to_s.red
      puts ' | '.yellow

      puts '  +---+---+---+'.yellow
      print 'B | '.yellow
      print (@valeur[4]).to_s.red
      print ' | '.yellow
      print (@valeur[5]).to_s.red
      print ' | '.yellow
      print (@valeur[6]).to_s.red
      puts ' | '.yellow

      puts '  +---+---+---+'.yellow
      print 'C | '.yellow
      print (@valeur[7]).to_s.red
      print ' | '.yellow
      print (@valeur[8]).to_s.red
      print ' | '.yellow
      print (@valeur[9]).to_s.red
      puts ' | '.yellow
      puts '  +---+---+---+'.yellow

      print "#{joueur_tour}, ou veut tu jouer ?(A1,B2,C3..) ".yellow
      puts "(tu as les #{joueur_signe})".light_black
      print '> '
      reponse = gets.chomp # Reponse entré par le joueur

      z = 1 # Compteur de la boucle qui défini le tour à jouer

      tab_position.each do |item| # Boucle qui permet de savoir quel joueur joue, ou et quel signe mettre
        if reponse != item
          z += 1
        else
          system('clear')
          if @valeur[z] == ' ' # Valide les positions
            if @tour_de_jeu.even?
              @valeur[z] = 'X'
              @tab_win[z] = 'X'
            else
              @valeur[z] = 'O'
              @tab_win[z] = 'O'
            end
            @tour_de_jeu += 1
          else
            system('clear')
            puts 'La place est deja prise !'.red
						sleep 0.5
						puts "Rejoue"
          end
        end
      end

      # Systeme de probabilité des victoires

      if @tab_win[1] == @tab_win[2] && @tab_win[3] == @tab_win[1]
        puts "#{joueur_tour} est vainqueur : 1 2 3 ".green
        @tour_de_jeu = 11

      elsif @tab_win[4] == @tab_win[5] && @tab_win[6] == @tab_win[4]
        puts "#{joueur_tour} est vainqueur : 4 5 6 ".green
        @tour_de_jeu = 11

      elsif @tab_win[7] == @tab_win[8] && @tab_win[9] == @tab_win[7]
        puts "#{joueur_tour} est vainqueur : 7 8 9 ".green
        @tour_de_jeu = 11

      elsif @tab_win[1] == @tab_win[4] && @tab_win[7] == @tab_win[1]
        puts "#{joueur_tour} est vainqueur : 1 4 7 ".green
        @tour_de_jeu = 11

      elsif @tab_win[2] == @tab_win[5] && @tab_win[8] == @tab_win[2]
        puts "#{joueur_tour} est vainqueur : 2 5 8 ".green
        @tour_de_jeu = 11

      elsif @tab_win[3] == @tab_win[6] && @tab_win[9] == @tab_win[3]
        puts "#{joueur_tour} est vainqueur : 3 6 9 ".green
        @tour_de_jeu = 11

      elsif @tab_win[1] == @tab_win[5] && @tab_win[9] == @tab_win[1]
        puts "#{joueur_tour} est vainqueur : 1 5 9 ".green
        @tour_de_jeu = 11

      elsif @tab_win[3] == @tab_win[5] && @tab_win[7] == @tab_win[3]
        puts "#{joueur_tour} est vainqueur : 3 5 7 ".green
        @tour_de_jeu = 11

    	end
		end

		puts 'Egalité'.red if @tour_de_jeu == 9
	end

end
