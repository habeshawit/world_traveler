class WorldTraveler::Display

    # def self.loading
    #     puts "                                     Loading            "
    #     puts "                          This may gonna take a few seconds... "
    # end

    def self.welcome_message
        puts "
        db   d8b   db d88888b db       .o88b.  .d88b.  .88b  d88. d88888b   d888888b  .d88b.    db   d8b   db  .d88b.  d8888b. db      d8888b. 
        88   I8I   88 88'     88      d8P  Y8 .8P  Y8. 88'YbdP`88 88'       `~~88~~' .8P  Y8.   88   I8I   88 .8P  Y8. 88  `8D 88      88  `8D 
        88   I8I   88 88ooooo 88      8P      88    88 88  88  88 88ooooo      88    88    88   88   I8I   88 88    88 88oobY' 88      88   88 
        Y8   I8I   88 88~~~~~ 88      8b      88    88 88  88  88 88~~~~~      88    88    88   Y8   I8I   88 88    88 88`8b   88      88   88 
        `8b d8'8b d8' 88.     88booo. Y8b  d8 `8b  d8' 88  88  88 88.          88    `8b  d8'   `8b d8'8b d8' `8b  d8' 88 `88. 88booo. 88  .8D 
         `8b8' `8d8'  Y88888P Y88888P  `Y88P'  `Y88P'  YP  YP  YP Y88888P      YP     `Y88P'     `8b8' `8d8'   `Y88P'  88   YD Y88888P Y8888D' 
                                                                                                                                               
                                                                                                                                               
                                         d888888b d8888b.  .d8b.  db    db d88888b db      d88888b d8888b. db 
                                         `~~88~~' 88  `8D d8' `8b 88    88 88'     88      88'     88  `8D 88 
                                            88    88oobY' 88ooo88 Y8    8P 88ooooo 88      88ooooo 88oobY' YP 
                                            88    88`8b   88~~~88 `8b  d8' 88~~~~~ 88      88~~~~~ 88`8b      
                                            88    88 `88. 88   88  `8bd8'  88.     88booo. 88.     88 `88. db 
                                            YP    88   YD YP   YP    YP    Y88888P Y88888P Y88888P 88   YD YP 
                                                                                                              
        ".yellow.bold

        puts "                                                                          Let's Travel!                         
                                            oO0OoO0OoO0OooO0OoO0OoO0OooO0OoO0OoO0OooO0OoO0OoO0OooO0OoO0OoO0OooO0OoO0OoO0Oo".green.bold
 
    end


    def self.continent_list
         puts "
                                            ╦  ┬┌─┐┌┬┐  ┌─┐┌─┐  ╔═╗┌─┐┌┐┌┌┬┐┬┌┐┌┌─┐┌┐┌┌┬┐┌─┐
                                            ║  │└─┐ │   │ │├┤   ║  │ ││││ │ ││││├┤ │││ │ └─┐
                                            ╩═╝┴└─┘ ┴   └─┘└    ╚═╝└─┘┘└┘ ┴ ┴┘└┘└─┘┘└┘ ┴ └─┘                               ".yellow
 
    end

    def self.goodbye
        puts "



                                            d8888b.  .d88b.  d8b   db   db    db  .d88b.  db    db  .d8b.   d888b  d88888b db db 
                                            88  `8D .8P  Y8. 888o  88   88    88 .8P  Y8. `8b  d8' d8' `8b 88' Y8b 88'     88 88 
                                            88oooY' 88    88 88V8o 88   Y8    8P 88    88  `8bd8'  88ooo88 88      88ooooo YP YP 
                                            88~~~b. 88    88 88 V8o88   `8b  d8' 88    88    88    88~~~88 88  ooo 88~~~~~       
                                            88   8D `8b  d8' 88  V888    `8bd8'  `8b  d8'    88    88   88 88. ~8~ 88.     db db 
                                            Y8888P'  `Y88P'  VP   V8P      YP     `Y88P'     YP    YP   YP  Y888P  Y88888P YP YP 
                                                                                                                                
                                                                                                                                        
                                                    
                                                                                     |
                                                                                     |
                                                                                   .-'-.
                                                                                  ' ___ '
                                                                        ---------'  .-.  '---------
                                                        _________________________'  '-'  '_________________________
                                                            ''''''-|---|--/    \==][^',_m_,'^][==/    \--|---|-''''''
                                                                        \    /  ||/   H   \||  \    /
                                                                        '--'   OO   O|O   OO   '--'
                                                                            

                                            ".yellow
    end

 
end