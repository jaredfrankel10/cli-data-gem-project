 class NbaRosters::CLI

   def call
     teams_roster
     list_teams
     list_roster
   end


 ## teams should ask what team you want to see a roster of and print that teams roster out!

   def teams_roster
     input = nil
     while input != "exit"
       puts "Enter the number of team you'd like to see the roster of:"
       list_teams
       input = gets.strip.downcase

       if input.to_i > 0
         list_roster
       else
         puts "Please select a number from 1-32, or type exit"
       end
     end
   end

 #prints out list of teams

   def list_teams
     @team_list = NbaRosters::Team.list
   end

 ## prints current roster of team selected

   def list_roster
     @rosters = NbaRosters::Roster.current
   end

 end
