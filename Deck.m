classdef Deck
    properties
        cards = [];
    end
    methods
        function obj = Deck()
            import pkg.Card.* %import class definition of Card
            for i = ["Hearts", "Clubs", "Diamonds", "Spades"] 
                for j = [2:10, "J", "Q", "K", "A"]
                    x = Card(i, j, 0); %initalize every card in deck
                    obj.cards = [obj.cards, x]; %add to array Deck
                end
            end
            obj.cards= obj.cards(randperm(52)) %shuffle deck
        end
    end
end
